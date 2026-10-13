`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/07/08 09:54:05
// Design Name: 
// Module Name: clk_mux
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


`timescale 1ns / 1ps
// 3路时钟动态切换模块 (通过 PS 端 GPIO 控制)
module clk_mux (
    input clk_48k,     // 对应 GPIO: 2'b00
    input clk_75k,     // 对应 GPIO: 2'b01
    input clk_150k,    // 对应 GPIO: 2'b10
    input [1:0] sel,   // 来自 AXI GPIO 的控制线
    output reg clk_out
);
    
    always @(*) begin
        case(sel)
            2'b00: clk_out = clk_48k;
            2'b01: clk_out = clk_75k;
            2'b10: clk_out = clk_150k;
            default: clk_out = clk_75k; // 异常状态默认保护为 75k
        endcase
    end
endmodule
