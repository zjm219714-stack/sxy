// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 10 10:12:50 2026
// Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Ruanjian/Vivado/zynq_chengxu/ZYNQ_7015/ZYNQ_7020_yuntu/AXI_DMA.srcs/sources_1/bd/System/ip/System_adau7118_i2c_init_0_0/System_adau7118_i2c_init_0_0_stub.v
// Design      : System_adau7118_i2c_init_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adau7118_i2c_init,Vivado 2018.3" *)
module System_adau7118_i2c_init_0_0(clk, rst_n, scl, sda, init_done, init_error, busy)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,scl,sda,init_done,init_error,busy" */;
  input clk;
  input rst_n;
  output scl;
  inout sda;
  output init_done;
  output init_error;
  output busy;
endmodule
