// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jul 16 20:36:58 2026
// Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Admin/Desktop/ZYNQ_7020/AXI_DMA.srcs/sources_1/bd/System/ip/System_data_buffer_manager_0_0/System_data_buffer_manager_0_0_stub.v
// Design      : System_data_buffer_manager_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "data_buffer_manager,Vivado 2018.3" *)
module System_data_buffer_manager_0_0(clk, rst_n, frame_valid, frame_data, 
  start_processing, processing_done, bram_wr_addr, bram_wr_data, bram_we)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,frame_valid,frame_data[1023:0],start_processing,processing_done,bram_wr_addr[6:0],bram_wr_data[1023:0],bram_we" */;
  input clk;
  input rst_n;
  input frame_valid;
  input [1023:0]frame_data;
  output start_processing;
  input processing_done;
  output [6:0]bram_wr_addr;
  output [1023:0]bram_wr_data;
  output bram_we;
endmodule
