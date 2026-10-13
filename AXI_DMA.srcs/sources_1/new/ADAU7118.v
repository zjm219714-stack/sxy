`timescale 1ns / 1ps

module ADAU7118 #(
    // 192 MHz / 10 = 19.2 MHz BCLK; 19.2 MHz / 256 = 75 kHz LRCLK.
    parameter integer SYS_CLK_FREQ = 192_000_000,
    parameter integer BCLK_FREQ    = 19_200_000
)(
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET sys_rst_n" *)
    input  wire          sys_clk,
    input  wire          sys_rst_n,

    output reg           pl_work,
    // Sampling-rate indicators. These outputs are active high.
    output wire          LED_75K,
    output wire          LED_192K,

    input  wire          SDATA1,
    input  wire          SDATA2,
    input  wire          SDATA3,
    input  wire          SDATA4,
    input  wire          SDATA5,
    input  wire          SDATA6,
    input  wire          SDATA7,
    input  wire          SDATA8,

    output wire          FSYNC1,
    output wire          FSYNC2,
    output wire          FSYNC3,
    output wire          FSYNC4,
    output wire          FSYNC5,
    output wire          FSYNC6,
    output wire          FSYNC7,
    output wire          FSYNC8,

    output wire          BCLK1,
    output wire          BCLK2,
    output wire          BCLK3,
    output wire          BCLK4,
    output wire          BCLK5,
    output wire          BCLK6,
    output wire          BCLK7,
    output wire          BCLK8,

    output reg [23:0]    ADAU7118_1_CH0_o,
    output reg [23:0]    ADAU7118_1_CH1_o,
    output reg [23:0]    ADAU7118_1_CH2_o,
    output reg [23:0]    ADAU7118_1_CH3_o,
    output reg [23:0]    ADAU7118_1_CH4_o,
    output reg [23:0]    ADAU7118_1_CH5_o,
    output reg [23:0]    ADAU7118_1_CH6_o,
    output reg [23:0]    ADAU7118_1_CH7_o,

    output reg [15:0]    BIT_cnt,

    output reg [127:0]   m_axis_tdata,
    output wire [15:0]   m_axis_tkeep,
    output reg           m_axis_tlast,
    output reg           m_axis_tvalid,
    input  wire          m_axis_tready
);

localparam integer BCLK_HALF_DIV = SYS_CLK_FREQ / (BCLK_FREQ * 2);
localparam integer FRAME_BCLKS   = 256;
localparam integer CHANNEL_COUNT = 8;

// ADAU7118 uses 256 BCLK periods for one TDM frame.
// The tolerance also accepts a measured BCLK of about 49.12 MHz for 192 kHz.
localparam integer SAMPLE_RATE_EST_HZ = BCLK_FREQ / FRAME_BCLKS;
localparam integer RATE_75K_MIN_HZ    = 70_000;
localparam integer RATE_75K_MAX_HZ    = 80_000;
localparam integer RATE_192K_MIN_HZ   = 180_000;
localparam integer RATE_192K_MAX_HZ   = 205_000;

// Keep the indicators off during reset. If the board LED is active-low,
// invert this signal at the board-level wrapper or in the assignments below.
assign LED_75K = sys_rst_n &&
                 (SAMPLE_RATE_EST_HZ >= RATE_75K_MIN_HZ) &&
                 (SAMPLE_RATE_EST_HZ <= RATE_75K_MAX_HZ);
assign LED_192K = sys_rst_n &&
                  (SAMPLE_RATE_EST_HZ >= RATE_192K_MIN_HZ) &&
                  (SAMPLE_RATE_EST_HZ <= RATE_192K_MAX_HZ);

// SYS_CLK_FREQ / (2 * BCLK_HALF_DIV) = 19.2 MHz BCLK.
reg [31:0] bclk_div_cnt;
reg BCLK;

wire bclk_toggle;
wire bclk_rise_tick;
wire bclk_fall_tick;

// �Ƴ� init_success ������ֱ�Ӹ��ݼ���ֵ��ת
assign bclk_toggle    = (bclk_div_cnt == BCLK_HALF_DIV - 1);
assign bclk_rise_tick = bclk_toggle && !BCLK;
assign bclk_fall_tick = bclk_toggle && BCLK;

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        bclk_div_cnt <= 32'd0;
        BCLK         <= 1'b0;
    end else if (bclk_div_cnt == BCLK_HALF_DIV - 1) begin
        bclk_div_cnt <= 32'd0;
        BCLK         <= ~BCLK;
    end else begin
        bclk_div_cnt <= bclk_div_cnt + 1'b1;
    end
end

assign {BCLK1, BCLK2, BCLK3, BCLK4,
        BCLK5, BCLK6, BCLK7, BCLK8} = {8{BCLK}};

// ÿ256��BCLK����һ��FSYNC
reg [7:0] bclk_cnt;
reg fsync_48K;

wire frame_start_tick;

assign frame_start_tick = bclk_fall_tick && (bclk_cnt == 8'd255);

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        bclk_cnt  <= 8'd0;
        fsync_48K <= 1'b0;
    end else if (bclk_fall_tick) begin
        fsync_48K <= 1'b0;

        if (bclk_cnt == 8'd255) begin
            bclk_cnt  <= 8'd0;
            fsync_48K <= 1'b1;
        end else begin
            bclk_cnt <= bclk_cnt + 1'b1;
        end
    end
end

assign {FSYNC1, FSYNC2, FSYNC3, FSYNC4,
        FSYNC5, FSYNC6, FSYNC7, FSYNC8} = {8{fsync_48K}};

// �ȴ�128֡���ٿ�ʼ��AXI��������
reg [7:0] fsync_wait_cnt;
reg pcm_valid;

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        fsync_wait_cnt <= 8'd0;
        pcm_valid      <= 1'b0;
    // �Ƴ� init_success ����
    end else if (frame_start_tick) begin
        if (fsync_wait_cnt < 8'd128)
            fsync_wait_cnt <= fsync_wait_cnt + 1'b1;

        if (fsync_wait_cnt >= 8'd127)
            pcm_valid <= 1'b1;
    end
end

reg [23:0] ch_reg [1:8][0:7];
reg burst_start;

// ��BCLK�����ز���SDATA
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        BIT_cnt          <= 16'd0;
        burst_start      <= 1'b0;
        ADAU7118_1_CH0_o <= 24'd0;
        ADAU7118_1_CH1_o <= 24'd0;
        ADAU7118_1_CH2_o <= 24'd0;
        ADAU7118_1_CH3_o <= 24'd0;
        ADAU7118_1_CH4_o <= 24'd0;
        ADAU7118_1_CH5_o <= 24'd0;
        ADAU7118_1_CH6_o <= 24'd0;
        ADAU7118_1_CH7_o <= 24'd0;
    // �Ƴ� init_success ����
    end else if (bclk_rise_tick) begin
        if (fsync_48K) begin
            BIT_cnt     <= 16'd0;
            burst_start <= pcm_valid;

            if (pcm_valid) begin
                ADAU7118_1_CH0_o <= ch_reg[1][0];
                ADAU7118_1_CH1_o <= ch_reg[1][1];
                ADAU7118_1_CH2_o <= ch_reg[1][2];
                ADAU7118_1_CH3_o <= ch_reg[1][3];
                ADAU7118_1_CH4_o <= ch_reg[1][4];
                ADAU7118_1_CH5_o <= ch_reg[1][5];
                ADAU7118_1_CH6_o <= ch_reg[1][6];
                ADAU7118_1_CH7_o <= ch_reg[1][7];
            end
        end else begin
            burst_start <= 1'b0;

            if (BIT_cnt[4:0] >= 5'd1 &&
                BIT_cnt[4:0] <= 5'd24) begin

                ch_reg[1][BIT_cnt[7:5]] <=
                    {ch_reg[1][BIT_cnt[7:5]][22:0], SDATA1};
                ch_reg[2][BIT_cnt[7:5]] <=
                    {ch_reg[2][BIT_cnt[7:5]][22:0], SDATA2};
                ch_reg[3][BIT_cnt[7:5]] <=
                    {ch_reg[3][BIT_cnt[7:5]][22:0], SDATA3};
                ch_reg[4][BIT_cnt[7:5]] <=
                    {ch_reg[4][BIT_cnt[7:5]][22:0], SDATA4};
                ch_reg[5][BIT_cnt[7:5]] <=
                    {ch_reg[5][BIT_cnt[7:5]][22:0], SDATA5};
                ch_reg[6][BIT_cnt[7:5]] <=
                    {ch_reg[6][BIT_cnt[7:5]][22:0], SDATA6};
                ch_reg[7][BIT_cnt[7:5]] <=
                    {ch_reg[7][BIT_cnt[7:5]][22:0], SDATA7};
                ch_reg[8][BIT_cnt[7:5]] <=
                    {ch_reg[8][BIT_cnt[7:5]][22:0], SDATA8};
            end

            BIT_cnt <= BIT_cnt + 1'b1;
        end
    end
end

reg [2:0] burst_cnt;
reg [15:0] led_cnt;
reg burst_start_d1;
reg burst_start_d2;

assign m_axis_tkeep = 16'hffff;
wire [127:0] axis_word_current;
wire [127:0] axis_word_first;

assign axis_word_current = {
    ch_reg[8][burst_cnt][23:8],
    ch_reg[7][burst_cnt][23:8],
    ch_reg[6][burst_cnt][23:8],
    ch_reg[5][burst_cnt][23:8],
    ch_reg[4][burst_cnt][23:8],
    ch_reg[3][burst_cnt][23:8],
    ch_reg[2][burst_cnt][23:8],
    ch_reg[1][burst_cnt][23:8]
};

assign axis_word_first = {
    ch_reg[8][3'd0][23:8],
    ch_reg[7][3'd0][23:8],
    ch_reg[6][3'd0][23:8],
    ch_reg[5][3'd0][23:8],
    ch_reg[4][3'd0][23:8],
    ch_reg[3][3'd0][23:8],
    ch_reg[2][3'd0][23:8],
    ch_reg[1][3'd0][23:8]
};

// AXI-Stream output timing. The bus carries 8 lanes x 16 bits.
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        burst_cnt      <= 3'd0;
        m_axis_tvalid  <= 1'b0;
        m_axis_tlast   <= 1'b0;
        m_axis_tdata   <= 128'd0;
        burst_start_d1 <= 1'b0;
        burst_start_d2 <= 1'b0;
        pl_work        <= 1'b0;
        led_cnt        <= 16'd0;
    end else begin
        burst_start_d1 <= burst_start;
        burst_start_d2 <= burst_start_d1;

        // 1. Start a new burst.
        if (burst_start_d1 && !burst_start_d2) begin
            m_axis_tvalid <= 1'b1;
            burst_cnt     <= 3'd0;
            m_axis_tlast  <= 1'b0;
            m_axis_tdata  <= axis_word_first;
        end

        // 2. Keep data stable while tvalid is asserted.
        if (m_axis_tvalid) begin
             m_axis_tdata <= axis_word_current;
        end

        // 3. Advance on AXI-Stream handshake.
        if (m_axis_tvalid && m_axis_tready) begin
            if (burst_cnt == CHANNEL_COUNT - 1) begin
                // End of burst.
                m_axis_tvalid <= 1'b0;
                m_axis_tlast  <= 1'b0;
                
                // Activity indicator.
                if (led_cnt >= 16'd23999) begin
                    led_cnt <= 16'd0;
                    pl_work <= ~pl_work;
                end else begin
                    led_cnt <= led_cnt + 1'b1;
                end
            end else begin
                // Continue with the next sample slot.
                burst_cnt <= burst_cnt + 1'b1;
                // Assert tlast during the final beat.
                if (burst_cnt == CHANNEL_COUNT - 2) begin
                    m_axis_tlast <= 1'b1;
                end
            end
        end
    end
end

endmodule
