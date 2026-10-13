
`timescale 1ns / 1ps

module fft_feeder (
    input  wire          clk,
    input  wire          rst_n,
    
    // 控制接口
    input  wire          start_processing, 
    output reg           processing_done,  
    
    // 64通道 BRAM 接口 (128行 x 1024位)
    output reg  [6:0]    bram_rd_addr,
    input  wire [1023:0] bram_rd_data,
    
    // 窗函数 ROM 接口 (128点 x 16位 Q15)
    output wire [6:0]    rom_rd_addr,
    input  wire [15:0]   rom_rd_data,
    
    // AXI-Stream 输出到 FFT IP
    output wire [31:0]   m_axis_fft_tdata, 
    output wire [7:0]    m_axis_fft_tuser,  // 输出当前通道号 (0-63)
    output wire          m_axis_fft_tvalid,
    output wire          m_axis_fft_tlast,
    input  wire          m_axis_fft_tready
);

    // --- 状态定义 ---
    localparam IDLE      = 2'd0;
    localparam FEED_DATA = 2'd1;
    localparam WAIT_LAST = 2'd2; 
    
    reg [1:0] state;
    reg [5:0] ch_cnt;    
    reg [6:0] t_cnt;     

    // --- 第一级流水线：地址输出 (T0) ---
    assign rom_rd_addr = bram_rd_addr;

    // --- 第二级流水线：采样 BRAM/ROM 输出 (T1 & T2) ---
    // 根据 ILA，BRAM 内部有 2 拍延迟，数据在 T2 拍到达
    reg signed [15:0] raw_audio_reg;
    reg signed [15:0] window_coeff_reg;
    
    always @(posedge clk) begin
        if (m_axis_fft_tready) begin
            // 这里的切片逻辑提取当前通道的 16bit 数据
            raw_audio_reg    <= bram_rd_data[ch_cnt * 16 +: 16];
            window_coeff_reg <= rom_rd_data;
        end
    end

    // --- 第三级流水线：DSP 乘法计算 (T3) ---
    reg signed [31:0] mult_res;
    always @(posedge clk) begin
        if (m_axis_fft_tready) begin
            mult_res <= raw_audio_reg * window_coeff_reg;
        end
    end
    
    // Q15 缩放处理
    wire [15:0] windowed_audio = mult_res[30:15];

    // --- 核心修改：流水线控制信号延迟 (Shift Register) ---
    // 延迟深度从 3 扩展到 4，以匹配数据通路的 4 个时钟周期延迟
    // T0: 发出地址 -> T1: BRAM内部 -> T2: raw_audio_reg -> T3: mult_res -> T4: FFT输入
    reg [3:0]  pipe_valid;
    reg [3:0]  pipe_last;
    reg [31:0] pipe_user; // 8 bit * 4 stages = 32 bit

    always @(posedge clk) begin
        if (!rst_n) begin
            pipe_valid <= 4'b0;
            pipe_last  <= 4'b0;
            pipe_user  <= 32'b0;
        end else if (m_axis_fft_tready) begin
            // 将有效信号向后推 4 拍
            pipe_valid <= {pipe_valid[2:0], (state == FEED_DATA)};
            pipe_last  <= {pipe_last[2:0],  (state == FEED_DATA && t_cnt == 7'd127)};
            pipe_user  <= {pipe_user[23:0], 2'b00, ch_cnt};
        end
    end

    // 对接输出：取流水线的最后一拍
    assign m_axis_fft_tvalid = pipe_valid[3];
    assign m_axis_fft_tlast  = pipe_last[3];
    assign m_axis_fft_tuser  = pipe_user[31:24];
    //assign m_axis_fft_tdata  = {16'd0, windowed_audio}; 
    // 暂时不乘系数，直接把 BRAM 的原始数据丢给 FFT
    assign m_axis_fft_tdata = {16'd0, raw_audio_reg};
    // --- 状态机控制逻辑 ---
    always @(posedge clk) begin
        if (!rst_n) begin
            state           <= IDLE;
            ch_cnt          <= 6'd0;
            t_cnt           <= 7'd0;
            bram_rd_addr    <= 7'd0;
            processing_done <= 1'b0;
        end else begin
            processing_done <= 1'b0;
            
            case (state)
                IDLE: begin
                    if (start_processing) begin
                        state        <= FEED_DATA;
                        ch_cnt       <= 6'd0;
                        t_cnt        <= 7'd0;
                        bram_rd_addr <= 7'd0;
                    end
                end

                FEED_DATA: begin
                    if (m_axis_fft_tready) begin
                        if (t_cnt == 7'd127) begin
                            t_cnt <= 7'd0;
                            bram_rd_addr <= 7'd0;
                            if (ch_cnt == 6'd63) begin
                                state <= WAIT_LAST;
                            end else begin
                                ch_cnt <= ch_cnt + 1'b1;
                            end
                        end else begin
                            t_cnt <= t_cnt + 1'b1;
                            bram_rd_addr <= t_cnt + 1'b1; // 预取下一拍地址
                        end
                    end
                end

                WAIT_LAST: begin
                    // 确保 4 级流水线全部清空后再结束
                    if (m_axis_fft_tready && pipe_valid == 4'b0) begin
                        processing_done <= 1'b1;
                        state           <= IDLE;
                    end
                end
            endcase
        end
    end

endmodule