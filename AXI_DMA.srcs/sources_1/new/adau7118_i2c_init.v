`timescale 1ns / 1ps

module adau7118_i2c_init #(
    // This sequencer actively configures the ADAU7118 after power-on.
    parameter integer CLK_FREQ = 196_608_000,
    parameter integer I2C_FREQ = 250_000,
    parameter [6:0] SLAVE_ADDR = 7'h16,
    parameter integer POWER_ON_DELAY_CLKS = 1_920_000,
    parameter [7:0] DEC_RATIO_CLK_MAP_VALUE = 8'hC1,
    parameter [7:0] PDM_CLK_CH_ENABLE_VALUE = 8'h3F
)(
    input wire clk,
    input wire rst_n,

    output wire scl,
    inout wire sda,

    output reg init_done,
    output reg init_error,
    output wire busy
);

localparam [15:0] ADAU7118_REG_CLK_EN            = 16'h0004;
localparam [15:0] ADAU7118_REG_DEC_RATIO_CLK_MAP = 16'h0005;
localparam [15:0] ADAU7118_REG_SAI_CTRL          = 16'h0007;

localparam [3:0] S_DELAY        = 4'd0;
localparam [3:0] S_WR_04_DIS    = 4'd1;
localparam [3:0] S_WAIT_04_DIS  = 4'd2;
localparam [3:0] S_WR_05        = 4'd3;
localparam [3:0] S_WAIT_05      = 4'd4;
localparam [3:0] S_WR_07        = 4'd5;
localparam [3:0] S_WAIT_07      = 4'd6;
localparam [3:0] S_WR_04_EN     = 4'd7;
localparam [3:0] S_WAIT_04_EN   = 4'd8;
localparam [3:0] S_DONE         = 4'd9;

reg [3:0] state;
reg [31:0] delay_cnt;

reg i2c_exec;
reg i2c_rh_wl;
reg [15:0] i2c_addr;
reg [7:0] i2c_data_w;

wire [7:0] i2c_data_r;
wire i2c_done;
wire i2c_ack;
wire i2c_dri_clk;

reg i2c_done_meta;
reg i2c_done_sync;
reg i2c_done_sync_d;
wire i2c_done_rise;

assign i2c_done_rise = i2c_done_sync & ~i2c_done_sync_d;
assign busy = (state != S_DONE);

I2C_driver #(
    .CLK_FREQ(CLK_FREQ),
    .I2C_FREQ(I2C_FREQ),
    .SLAVE_ADDR(SLAVE_ADDR)
) u_i2c_driver (
    .clk(clk),
    .rst_n(rst_n),

    .i2c_exec(i2c_exec),
    .bit_ctrl(1'b0),
    .i2c_rh_wl(i2c_rh_wl),
    .i2c_addr(i2c_addr),
    .i2c_data_w(i2c_data_w),
    .i2c_data_r(i2c_data_r),
    .i2c_done(i2c_done),
    .i2c_ack(i2c_ack),

    .scl(scl),
    .sda(sda),
    .dri_clk(i2c_dri_clk)
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        i2c_done_meta   <= 1'b0;
        i2c_done_sync   <= 1'b0;
        i2c_done_sync_d <= 1'b0;
    end else begin
        i2c_done_meta   <= i2c_done;
        i2c_done_sync   <= i2c_done_meta;
        i2c_done_sync_d <= i2c_done_sync;
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state      <= S_DELAY;
        delay_cnt  <= 32'd0;
        i2c_exec   <= 1'b0;
        i2c_rh_wl  <= 1'b0;
        i2c_addr   <= 16'd0;
        i2c_data_w <= 8'd0;
        init_done  <= 1'b0;
        init_error <= 1'b0;
    end else begin
        case (state)
            S_DELAY: begin
                i2c_exec   <= 1'b0;
                init_done  <= 1'b0;
                init_error <= 1'b0;

                if (delay_cnt >= POWER_ON_DELAY_CLKS - 1) begin
                    delay_cnt <= 32'd0;
                    state <= S_WR_04_DIS;
                end else begin
                    delay_cnt <= delay_cnt + 1'b1;
                end
            end

            // Disable PDM clocks and channel pairs before changing clock mapping.
            S_WR_04_DIS: begin
                i2c_rh_wl  <= 1'b0;
                i2c_addr   <= ADAU7118_REG_CLK_EN;
                i2c_data_w <= 8'h00;
                i2c_exec   <= 1'b1;
                state <= S_WAIT_04_DIS;
            end

            S_WAIT_04_DIS: begin
                i2c_exec <= 1'b1;
                if (i2c_done_rise) begin
                    i2c_exec <= 1'b0;
                    if (i2c_ack) init_error <= 1'b1;
                    state <= S_WR_05;
                end
            end

            // DEC_RATIO_CLK_MAP_VALUE 8'hC1 selects 32x decimation.
            S_WR_05: begin
                i2c_rh_wl  <= 1'b0;
                i2c_addr   <= ADAU7118_REG_DEC_RATIO_CLK_MAP;
                i2c_data_w <= DEC_RATIO_CLK_MAP_VALUE;
                i2c_exec   <= 1'b1;
                state <= S_WAIT_05;
            end

            S_WAIT_05: begin
                i2c_exec <= 1'b1;
                if (i2c_done_rise) begin
                    i2c_exec <= 1'b0;
                    if (i2c_ack) init_error <= 1'b1;
                    state <= S_WR_07;
                end
            end

            // Serial audio interface configuration.
            S_WR_07: begin
                i2c_rh_wl  <= 1'b0;
                i2c_addr   <= ADAU7118_REG_SAI_CTRL;
                i2c_data_w <= 8'h41;
                i2c_exec   <= 1'b1;
                state <= S_WAIT_07;
            end

            S_WAIT_07: begin
                i2c_exec <= 1'b1;
                if (i2c_done_rise) begin
                    i2c_exec <= 1'b0;
                    if (i2c_ack) init_error <= 1'b1;
                    state <= S_WR_04_EN;
                end
            end

            // Enable PDM clocks and channel pairs. Default 8'h3F enables all.
            S_WR_04_EN: begin
                i2c_rh_wl  <= 1'b0;
                i2c_addr   <= ADAU7118_REG_CLK_EN;
                i2c_data_w <= PDM_CLK_CH_ENABLE_VALUE;
                i2c_exec   <= 1'b1;
                state <= S_WAIT_04_EN;
            end

            S_WAIT_04_EN: begin
                i2c_exec <= 1'b1;
                if (i2c_done_rise) begin
                    i2c_exec <= 1'b0;
                    if (i2c_ack) init_error <= 1'b1;
                    init_done <= 1'b1;
                    state <= S_DONE;
                end
            end

            S_DONE: begin
                i2c_exec <= 1'b0;
                init_done <= 1'b1;
            end

            default: begin
                state <= S_DELAY;
                delay_cnt <= 32'd0;
                i2c_exec <= 1'b0;
                init_done <= 1'b0;
                init_error <= 1'b1;
            end
        endcase
    end
end

endmodule
