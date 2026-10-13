`timescale 1ns / 1ps
/**
 * Module: axis_tlast_aggregator
 * 功能：将 FFT 输出的 64 个小包（每包 128 点）聚合成一个大包（8192 点）
 * 解决 DMA 频繁中断和数据不连续的问题，并支持 TUSER (频率索引) 透传
 */
module axis_tlast_aggregator #(
    parameter integer CHANNELS = 64  // 聚合的通道数
)(
    input  wire        aclk,
    input  wire        aresetn,
    
    // 从 FFT / Subset Converter (Slave Interface)
    input  wire        s_axis_tvalid,
    output wire        s_axis_tready,
    input  wire [63:0] s_axis_tdata, 
    input  wire [7:0]  s_axis_tuser, // 新增：接收 8 位 TUSER (频率索引)
    input  wire        s_axis_tlast,
    
    // 给 DMA (Master Interface)
    output wire        m_axis_tvalid,
    input  wire        m_axis_tready,
    output wire [63:0] m_axis_tdata,
    output wire [7:0]  m_axis_tuser, // 新增：发送 8 位 TUSER 到 DMA
    output wire        m_axis_tlast
);

    reg [5:0] channel_cnt; // 计数 0-63

    // 握手信号、数据和 TUSER 直接透传
    assign s_axis_tready = m_axis_tready;
    assign m_axis_tvalid = s_axis_tvalid;
    assign m_axis_tdata  = s_axis_tdata;
    assign m_axis_tuser  = s_axis_tuser; // 新增：将频率索引原样传递给下游

    // 核心逻辑：拦截 TLAST 信号
    always @(posedge aclk) begin
        if (!aresetn) begin
            channel_cnt <= 6'd0;
        end else begin
            // 当一次有效传输发生且 FFT 告知该通道结束时，计数加 1
            if (s_axis_tvalid && s_axis_tready && s_axis_tlast) begin
                if (channel_cnt == (CHANNELS - 1))
                    channel_cnt <= 6'd0; // 满 64 个通道清零
                else
                    channel_cnt <= channel_cnt + 1'b1;
            end
        end
    end

    // 只有当计数到第 64 个通道，且该点是 FFT 帧的最后一个点时，才产生真正的 TLAST 给 DMA
    assign m_axis_tlast = (channel_cnt == (CHANNELS - 1)) ? s_axis_tlast : 1'b0;

endmodule