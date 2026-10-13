`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/25 20:55:14
// Design Name: 
// Module Name: data_buffer_manager
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module data_buffer_manager(
    input  wire          clk,
    input  wire          rst_n,
    // 来自 axis_parser
    input  wire          frame_valid,
    input  wire [1023:0] frame_data,
    // 给到 fft_feeder 的控制
    output reg           start_processing,
    input  wire          processing_done,
    // BRAM 写端口接口
    output wire [6:0]    bram_wr_addr,
    output wire [1023:0] bram_wr_data,
    output wire          bram_we
);
    reg [6:0] wr_ptr;
    
    assign bram_wr_addr = wr_ptr;
    assign bram_wr_data = frame_data;
    assign bram_we      = frame_valid;

    always @(posedge clk) begin
        if (!rst_n) begin
            wr_ptr <= 7'd0;
            start_processing <= 1'b0;
        end 
        else begin
            start_processing <= 1'b0;
            if (frame_valid) begin
                if (wr_ptr == 7'd127) begin
                    wr_ptr <= 7'd0;
                    start_processing <= 1'b1; // 攒够 128 点了，通知 FFT 开始
                end 
                else begin
                    wr_ptr <= wr_ptr + 1'b1;
                end
            end
        end
    end
endmodule
