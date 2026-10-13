// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:ADAU7118:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module System_ADAU7118_0_0 (
  sys_clk,
  sys_rst_n,
  pl_work,
  LED_75K,
  LED_192K,
  SDATA1,
  SDATA2,
  SDATA3,
  SDATA4,
  SDATA5,
  SDATA6,
  SDATA7,
  SDATA8,
  FSYNC1,
  FSYNC2,
  FSYNC3,
  FSYNC4,
  FSYNC5,
  FSYNC6,
  FSYNC7,
  FSYNC8,
  BCLK1,
  BCLK2,
  BCLK3,
  BCLK4,
  BCLK5,
  BCLK6,
  BCLK7,
  BCLK8,
  ADAU7118_1_CH0_o,
  ADAU7118_1_CH1_o,
  ADAU7118_1_CH2_o,
  ADAU7118_1_CH3_o,
  ADAU7118_1_CH4_o,
  ADAU7118_1_CH5_o,
  ADAU7118_1_CH6_o,
  ADAU7118_1_CH7_o,
  BIT_cnt,
  m_axis_tdata,
  m_axis_tkeep,
  m_axis_tlast,
  m_axis_tvalid,
  m_axis_tready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, ASSOCIATED_BUSIF m_axis, FREQ_HZ 196595744, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *)
input wire sys_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *)
input wire sys_rst_n;
output wire pl_work;
output wire LED_75K;
output wire LED_192K;
input wire SDATA1;
input wire SDATA2;
input wire SDATA3;
input wire SDATA4;
input wire SDATA5;
input wire SDATA6;
input wire SDATA7;
input wire SDATA8;
output wire FSYNC1;
output wire FSYNC2;
output wire FSYNC3;
output wire FSYNC4;
output wire FSYNC5;
output wire FSYNC6;
output wire FSYNC7;
output wire FSYNC8;
output wire BCLK1;
output wire BCLK2;
output wire BCLK3;
output wire BCLK4;
output wire BCLK5;
output wire BCLK6;
output wire BCLK7;
output wire BCLK8;
output wire [23 : 0] ADAU7118_1_CH0_o;
output wire [23 : 0] ADAU7118_1_CH1_o;
output wire [23 : 0] ADAU7118_1_CH2_o;
output wire [23 : 0] ADAU7118_1_CH3_o;
output wire [23 : 0] ADAU7118_1_CH4_o;
output wire [23 : 0] ADAU7118_1_CH5_o;
output wire [23 : 0] ADAU7118_1_CH6_o;
output wire [23 : 0] ADAU7118_1_CH7_o;
output wire [15 : 0] BIT_cnt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [127 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *)
output wire [15 : 0] m_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire m_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 196595744, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
input wire m_axis_tready;

  ADAU7118 #(
    .SYS_CLK_FREQ(245760000),
    .BCLK_FREQ(24576000)
  ) inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .pl_work(pl_work),
    .LED_75K(LED_75K),
    .LED_192K(LED_192K),
    .SDATA1(SDATA1),
    .SDATA2(SDATA2),
    .SDATA3(SDATA3),
    .SDATA4(SDATA4),
    .SDATA5(SDATA5),
    .SDATA6(SDATA6),
    .SDATA7(SDATA7),
    .SDATA8(SDATA8),
    .FSYNC1(FSYNC1),
    .FSYNC2(FSYNC2),
    .FSYNC3(FSYNC3),
    .FSYNC4(FSYNC4),
    .FSYNC5(FSYNC5),
    .FSYNC6(FSYNC6),
    .FSYNC7(FSYNC7),
    .FSYNC8(FSYNC8),
    .BCLK1(BCLK1),
    .BCLK2(BCLK2),
    .BCLK3(BCLK3),
    .BCLK4(BCLK4),
    .BCLK5(BCLK5),
    .BCLK6(BCLK6),
    .BCLK7(BCLK7),
    .BCLK8(BCLK8),
    .ADAU7118_1_CH0_o(ADAU7118_1_CH0_o),
    .ADAU7118_1_CH1_o(ADAU7118_1_CH1_o),
    .ADAU7118_1_CH2_o(ADAU7118_1_CH2_o),
    .ADAU7118_1_CH3_o(ADAU7118_1_CH3_o),
    .ADAU7118_1_CH4_o(ADAU7118_1_CH4_o),
    .ADAU7118_1_CH5_o(ADAU7118_1_CH5_o),
    .ADAU7118_1_CH6_o(ADAU7118_1_CH6_o),
    .ADAU7118_1_CH7_o(ADAU7118_1_CH7_o),
    .BIT_cnt(BIT_cnt),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready)
  );
endmodule
