`timescale 1ns / 1ps

// Captures one unprocessed microphone channel before the FFT path and emits
// 128 signed 16-bit samples as 32 AXI-Stream 64-bit words.
//数据通道错乱大概率是这的问题
module raw_waveform_capture #(
    parameter integer CHANNEL_INDEX = 0
) (
    input  wire          clk,
    input  wire          rst_n,
    input  wire          frame_valid,
    input  wire [1023:0] frame_data,

    output wire [63:0]   m_axis_wave_tdata,
    output wire          m_axis_wave_tvalid,
    output wire          m_axis_wave_tlast,
    input  wire          m_axis_wave_tready
);

    reg signed [15:0] sample_mem [0:127];
    reg [6:0] capture_index;
    reg [4:0] stream_index;
    reg       stream_active;

    wire [6:0] sample_base = {stream_index, 2'b00};

    assign m_axis_wave_tdata = {
        sample_mem[sample_base + 7'd3],
        sample_mem[sample_base + 7'd2],
        sample_mem[sample_base + 7'd1],
        sample_mem[sample_base]
    };
    assign m_axis_wave_tvalid = stream_active;
    assign m_axis_wave_tlast = stream_active && (stream_index == 5'd31);

    always @(posedge clk) begin
        if (!rst_n) begin
            capture_index <= 7'd0;
            stream_index <= 5'd0;
            stream_active <= 1'b0;
        end else begin
            if (frame_valid) begin
                sample_mem[capture_index] <= frame_data[CHANNEL_INDEX * 16 +: 16];
                if (capture_index == 7'd127) begin
                    capture_index <= 7'd0;
                    // Keep the most recent complete frame while the DMA is not ready.
                    if (!stream_active) begin
                        stream_index <= 5'd0;
                        stream_active <= 1'b1;
                    end
                end else begin
                    capture_index <= capture_index + 1'b1;
                end
            end

            if (stream_active && m_axis_wave_tready) begin
                if (stream_index == 5'd31) begin
                    stream_active <= 1'b0;
                end else begin
                    stream_index <= stream_index + 1'b1;
                end
            end
        end
    end
endmodule