`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/18 21:10:20
// Design Name: 
// Module Name: data_align_check
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


module data_align_check (
    input wire clk,
    input wire rst_n,
    // AXI-Stream Interface
    input wire [127:0] s_axis_tdata,
    input wire s_axis_tvalid,
    input wire s_axis_tready,
    input wire s_axis_tlast,
    
    // Output Flags
    output reg error_flag,      // High if data is misaligned
    output reg [5:0] err_ch_id  // Which channel failed
);

    reg [2:0] beat_cnt; // 0-7, because 8 beats * 8 channels = 64 channels

    always @(posedge clk) begin
        if (!rst_n) begin
            beat_cnt <= 3'd0;
            error_flag <= 1'b0;
            err_ch_id <= 6'd0;
        end 
        else if (s_axis_tvalid && s_axis_tready) begin
            // Check 8 channels in one 128-bit word
            // Channel IDs should be: beat_cnt*8 + (0 to 7)
            
            // Example: check the first 16-bit word in the 128-bit bus
            if (s_axis_tdata[15:10] != (beat_cnt * 8 + 0)) begin
                error_flag <= 1'b1;
                err_ch_id <= (beat_cnt * 8 + 0);
            end
            
            // Example: check the last 16-bit word in the 128-bit bus
            if (s_axis_tdata[127:122] != (beat_cnt * 8 + 7)) begin
                error_flag <= 1'b1;
                err_ch_id <= (beat_cnt * 8 + 7);
            end

            // Counter logic
            if (beat_cnt == 3'd7)
                beat_cnt <= 3'd0;
            else
                beat_cnt <= beat_cnt + 1'b1;
        end
    end
endmodule
