// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jul 16 20:37:00 2026
// Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Admin/Desktop/ZYNQ_7020/AXI_DMA.srcs/sources_1/bd/System/ip/System_fft_feeder_0_1/System_fft_feeder_0_1_stub.v
// Design      : System_fft_feeder_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fft_feeder,Vivado 2018.3" *)
module System_fft_feeder_0_1(clk, rst_n, start_processing, processing_done, 
  bram_rd_addr, bram_rd_data, rom_rd_addr, rom_rd_data, m_axis_fft_tdata, m_axis_fft_tuser, 
  m_axis_fft_tvalid, m_axis_fft_tlast, m_axis_fft_tready)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,start_processing,processing_done,bram_rd_addr[6:0],bram_rd_data[1023:0],rom_rd_addr[6:0],rom_rd_data[15:0],m_axis_fft_tdata[31:0],m_axis_fft_tuser[7:0],m_axis_fft_tvalid,m_axis_fft_tlast,m_axis_fft_tready" */;
  input clk;
  input rst_n;
  input start_processing;
  output processing_done;
  output [6:0]bram_rd_addr;
  input [1023:0]bram_rd_data;
  output [6:0]rom_rd_addr;
  input [15:0]rom_rd_data;
  output [31:0]m_axis_fft_tdata;
  output [7:0]m_axis_fft_tuser;
  output m_axis_fft_tvalid;
  output m_axis_fft_tlast;
  input m_axis_fft_tready;
endmodule
