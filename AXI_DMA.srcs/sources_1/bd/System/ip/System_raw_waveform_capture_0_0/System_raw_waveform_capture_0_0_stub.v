// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 10 09:21:55 2026
// Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Ruanjian/Vivado/zynq_chengxu/ZYNQ_7015/ZYNQ_7020_yuntu/AXI_DMA.srcs/sources_1/bd/System/ip/System_raw_waveform_capture_0_0/System_raw_waveform_capture_0_0_stub.v
// Design      : System_raw_waveform_capture_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "raw_waveform_capture,Vivado 2018.3" *)
module System_raw_waveform_capture_0_0(clk, rst_n, frame_valid, frame_data, 
  m_axis_wave_tdata, m_axis_wave_tvalid, m_axis_wave_tlast, m_axis_wave_tready)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,frame_valid,frame_data[1023:0],m_axis_wave_tdata[63:0],m_axis_wave_tvalid,m_axis_wave_tlast,m_axis_wave_tready" */;
  input clk;
  input rst_n;
  input frame_valid;
  input [1023:0]frame_data;
  output [63:0]m_axis_wave_tdata;
  output m_axis_wave_tvalid;
  output m_axis_wave_tlast;
  input m_axis_wave_tready;
endmodule
