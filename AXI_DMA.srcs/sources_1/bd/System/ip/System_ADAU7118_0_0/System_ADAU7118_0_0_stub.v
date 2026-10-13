// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 10 10:24:01 2026
// Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Ruanjian/Vivado/zynq_chengxu/ZYNQ_7015/ZYNQ_7020_yuntu/AXI_DMA.srcs/sources_1/bd/System/ip/System_ADAU7118_0_0/System_ADAU7118_0_0_stub.v
// Design      : System_ADAU7118_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ADAU7118,Vivado 2018.3" *)
module System_ADAU7118_0_0(sys_clk, sys_rst_n, pl_work, LED_75K, LED_192K, 
  SDATA1, SDATA2, SDATA3, SDATA4, SDATA5, SDATA6, SDATA7, SDATA8, FSYNC1, FSYNC2, FSYNC3, FSYNC4, FSYNC5, 
  FSYNC6, FSYNC7, FSYNC8, BCLK1, BCLK2, BCLK3, BCLK4, BCLK5, BCLK6, BCLK7, BCLK8, ADAU7118_1_CH0_o, 
  ADAU7118_1_CH1_o, ADAU7118_1_CH2_o, ADAU7118_1_CH3_o, ADAU7118_1_CH4_o, ADAU7118_1_CH5_o, 
  ADAU7118_1_CH6_o, ADAU7118_1_CH7_o, BIT_cnt, m_axis_tdata, m_axis_tkeep, m_axis_tlast, 
  m_axis_tvalid, m_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="sys_clk,sys_rst_n,pl_work,LED_75K,LED_192K,SDATA1,SDATA2,SDATA3,SDATA4,SDATA5,SDATA6,SDATA7,SDATA8,FSYNC1,FSYNC2,FSYNC3,FSYNC4,FSYNC5,FSYNC6,FSYNC7,FSYNC8,BCLK1,BCLK2,BCLK3,BCLK4,BCLK5,BCLK6,BCLK7,BCLK8,ADAU7118_1_CH0_o[23:0],ADAU7118_1_CH1_o[23:0],ADAU7118_1_CH2_o[23:0],ADAU7118_1_CH3_o[23:0],ADAU7118_1_CH4_o[23:0],ADAU7118_1_CH5_o[23:0],ADAU7118_1_CH6_o[23:0],ADAU7118_1_CH7_o[23:0],BIT_cnt[15:0],m_axis_tdata[127:0],m_axis_tkeep[15:0],m_axis_tlast,m_axis_tvalid,m_axis_tready" */;
  input sys_clk;
  input sys_rst_n;
  output pl_work;
  output LED_75K;
  output LED_192K;
  input SDATA1;
  input SDATA2;
  input SDATA3;
  input SDATA4;
  input SDATA5;
  input SDATA6;
  input SDATA7;
  input SDATA8;
  output FSYNC1;
  output FSYNC2;
  output FSYNC3;
  output FSYNC4;
  output FSYNC5;
  output FSYNC6;
  output FSYNC7;
  output FSYNC8;
  output BCLK1;
  output BCLK2;
  output BCLK3;
  output BCLK4;
  output BCLK5;
  output BCLK6;
  output BCLK7;
  output BCLK8;
  output [23:0]ADAU7118_1_CH0_o;
  output [23:0]ADAU7118_1_CH1_o;
  output [23:0]ADAU7118_1_CH2_o;
  output [23:0]ADAU7118_1_CH3_o;
  output [23:0]ADAU7118_1_CH4_o;
  output [23:0]ADAU7118_1_CH5_o;
  output [23:0]ADAU7118_1_CH6_o;
  output [23:0]ADAU7118_1_CH7_o;
  output [15:0]BIT_cnt;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tkeep;
  output m_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
endmodule
