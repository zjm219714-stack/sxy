`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: axis_parser
// Description: 将 128-bit 的 AXI-Stream 数据（8拍）拼装成 1024-bit 的 64 通道并行数据。
//              此版本已移除所有调试引脚，适用于最终部署。
//////////////////////////////////////////////////////////////////////////////////

module axis_parser(
    input  wire          aclk,            // 全局时钟
    input  wire          aresetn,         // 全局复位，低电平有效
    
    // AXI4-Stream 从设备接口 (连接到 DMA MM2S)
    input  wire          s_axis_tvalid,   
    output wire          s_axis_tready,   
    input  wire [127:0]  s_axis_tdata,    
    input  wire          s_axis_tlast,    
    
    // 并行数据输出给下游算法 (64 通道 * 16 bits = 1024 bits)
    output reg           frame_valid,     
    output reg  [1023:0] frame_data       
);

    // ======================== 内部寄存器 ========================
    reg [2:0]    cycle_cnt;   // 0-7 计数器，用于对齐 8 拍数据
    reg [1023:0] data_buffer; // 移位缓存

    // 始终准备好接收数据
    assign s_axis_tready = 1'b1;

    // ======================== 串转并核心逻辑 ========================
    always @(posedge aclk) begin
        if (!aresetn) begin
            cycle_cnt   <= 3'd0;
            frame_valid <= 1'b0;
            frame_data  <= 1024'd0;
            data_buffer <= 1024'd0;
        end else begin
            // 默认拉低有效信号
            frame_valid <= 1'b0;

            if (s_axis_tvalid && s_axis_tready) begin
                // 1. 将到来的 128 位数据存入缓存对应的位置
                case (cycle_cnt)
                    3'd0: data_buffer[127:0]   <= s_axis_tdata;
                    3'd1: data_buffer[255:128] <= s_axis_tdata;
                    3'd2: data_buffer[383:256] <= s_axis_tdata;
                    3'd3: data_buffer[511:384] <= s_axis_tdata;
                    3'd4: data_buffer[639:512] <= s_axis_tdata;
                    3'd5: data_buffer[767:640] <= s_axis_tdata;
                    3'd6: data_buffer[895:768] <= s_axis_tdata;
                    3'd7: data_buffer[1023:896]<= s_axis_tdata;
                endcase

                // 2. 状态跳转与输出控制
                if (cycle_cnt == 3'd7) begin
                    cycle_cnt   <= 3'd0;
                    frame_valid <= 1'b1;
                    // 在第 8 拍直接输出结果，减少一拍延迟
                    frame_data  <= {s_axis_tdata, data_buffer[895:0]};
                end else begin
                    cycle_cnt <= cycle_cnt + 1'b1;
                end
                
                // 3. TLAST 防呆逻辑：确保下一帧数据起始对齐
                if (s_axis_tlast) begin
                    cycle_cnt <= 3'd0;
                end
            end
        end
    end

endmodule