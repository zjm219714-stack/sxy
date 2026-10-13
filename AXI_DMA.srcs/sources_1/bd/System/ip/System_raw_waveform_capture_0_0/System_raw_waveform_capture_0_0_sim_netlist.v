// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 10 09:21:55 2026
// Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Ruanjian/Vivado/zynq_chengxu/ZYNQ_7015/ZYNQ_7020_yuntu/AXI_DMA.srcs/sources_1/bd/System/ip/System_raw_waveform_capture_0_0/System_raw_waveform_capture_0_0_sim_netlist.v
// Design      : System_raw_waveform_capture_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "System_raw_waveform_capture_0_0,raw_waveform_capture,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "raw_waveform_capture,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module System_raw_waveform_capture_0_0
   (clk,
    rst_n,
    frame_valid,
    frame_data,
    m_axis_wave_tdata,
    m_axis_wave_tvalid,
    m_axis_wave_tlast,
    m_axis_wave_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_wave, FREQ_HZ 196595744, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input frame_valid;
  input [1023:0]frame_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_wave TDATA" *) output [63:0]m_axis_wave_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_wave TVALID" *) output m_axis_wave_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_wave TLAST" *) output m_axis_wave_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_wave TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_wave, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 196595744, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_wave_tready;

  wire clk;
  wire [1023:0]frame_data;
  wire frame_valid;
  wire [63:0]m_axis_wave_tdata;
  wire m_axis_wave_tlast;
  wire m_axis_wave_tready;
  wire m_axis_wave_tvalid;
  wire rst_n;

  System_raw_waveform_capture_0_0_raw_waveform_capture inst
       (.clk(clk),
        .frame_data(frame_data[15:0]),
        .frame_valid(frame_valid),
        .m_axis_wave_tdata(m_axis_wave_tdata),
        .m_axis_wave_tlast(m_axis_wave_tlast),
        .m_axis_wave_tready(m_axis_wave_tready),
        .rst_n(rst_n),
        .stream_active_reg_0(m_axis_wave_tvalid));
endmodule

(* ORIG_REF_NAME = "raw_waveform_capture" *) 
module System_raw_waveform_capture_0_0_raw_waveform_capture
   (m_axis_wave_tdata,
    stream_active_reg_0,
    m_axis_wave_tlast,
    rst_n,
    frame_valid,
    clk,
    frame_data,
    m_axis_wave_tready);
  output [63:0]m_axis_wave_tdata;
  output stream_active_reg_0;
  output m_axis_wave_tlast;
  input rst_n;
  input frame_valid;
  input clk;
  input [15:0]frame_data;
  input m_axis_wave_tready;

  wire [6:0]capture_index;
  wire \capture_index[0]_i_1_n_0 ;
  wire \capture_index[1]_i_1_n_0 ;
  wire \capture_index[2]_i_1_n_0 ;
  wire \capture_index[3]_i_1_n_0 ;
  wire \capture_index[4]_i_1_n_0 ;
  wire \capture_index[5]_i_1_n_0 ;
  wire \capture_index[6]_i_1_n_0 ;
  wire \capture_index[6]_i_2_n_0 ;
  wire \capture_index[6]_i_3_n_0 ;
  wire clk;
  wire [15:0]frame_data;
  wire frame_valid;
  wire [63:0]m_axis_wave_tdata;
  wire m_axis_wave_tlast;
  wire m_axis_wave_tready;
  wire rst_n;
  wire [6:2]sample_base;
  wire sample_mem_reg_r1_0_63_0_2_i_1_n_0;
  wire sample_mem_reg_r1_0_63_0_2_n_0;
  wire sample_mem_reg_r1_0_63_0_2_n_1;
  wire sample_mem_reg_r1_0_63_0_2_n_2;
  wire sample_mem_reg_r1_0_63_12_14_n_0;
  wire sample_mem_reg_r1_0_63_12_14_n_1;
  wire sample_mem_reg_r1_0_63_12_14_n_2;
  wire sample_mem_reg_r1_0_63_15_15_n_0;
  wire sample_mem_reg_r1_0_63_3_5_n_0;
  wire sample_mem_reg_r1_0_63_3_5_n_1;
  wire sample_mem_reg_r1_0_63_3_5_n_2;
  wire sample_mem_reg_r1_0_63_6_8_n_0;
  wire sample_mem_reg_r1_0_63_6_8_n_1;
  wire sample_mem_reg_r1_0_63_6_8_n_2;
  wire sample_mem_reg_r1_0_63_9_11_n_0;
  wire sample_mem_reg_r1_0_63_9_11_n_1;
  wire sample_mem_reg_r1_0_63_9_11_n_2;
  wire sample_mem_reg_r1_64_127_0_2_i_1_n_0;
  wire sample_mem_reg_r1_64_127_0_2_n_0;
  wire sample_mem_reg_r1_64_127_0_2_n_1;
  wire sample_mem_reg_r1_64_127_0_2_n_2;
  wire sample_mem_reg_r1_64_127_12_14_n_0;
  wire sample_mem_reg_r1_64_127_12_14_n_1;
  wire sample_mem_reg_r1_64_127_12_14_n_2;
  wire sample_mem_reg_r1_64_127_15_15_n_0;
  wire sample_mem_reg_r1_64_127_3_5_n_0;
  wire sample_mem_reg_r1_64_127_3_5_n_1;
  wire sample_mem_reg_r1_64_127_3_5_n_2;
  wire sample_mem_reg_r1_64_127_6_8_n_0;
  wire sample_mem_reg_r1_64_127_6_8_n_1;
  wire sample_mem_reg_r1_64_127_6_8_n_2;
  wire sample_mem_reg_r1_64_127_9_11_n_0;
  wire sample_mem_reg_r1_64_127_9_11_n_1;
  wire sample_mem_reg_r1_64_127_9_11_n_2;
  wire sample_mem_reg_r2_0_63_0_2_n_0;
  wire sample_mem_reg_r2_0_63_0_2_n_1;
  wire sample_mem_reg_r2_0_63_0_2_n_2;
  wire sample_mem_reg_r2_0_63_12_14_n_0;
  wire sample_mem_reg_r2_0_63_12_14_n_1;
  wire sample_mem_reg_r2_0_63_12_14_n_2;
  wire sample_mem_reg_r2_0_63_15_15_n_0;
  wire sample_mem_reg_r2_0_63_3_5_n_0;
  wire sample_mem_reg_r2_0_63_3_5_n_1;
  wire sample_mem_reg_r2_0_63_3_5_n_2;
  wire sample_mem_reg_r2_0_63_6_8_n_0;
  wire sample_mem_reg_r2_0_63_6_8_n_1;
  wire sample_mem_reg_r2_0_63_6_8_n_2;
  wire sample_mem_reg_r2_0_63_9_11_n_0;
  wire sample_mem_reg_r2_0_63_9_11_n_1;
  wire sample_mem_reg_r2_0_63_9_11_n_2;
  wire sample_mem_reg_r2_64_127_0_2_n_0;
  wire sample_mem_reg_r2_64_127_0_2_n_1;
  wire sample_mem_reg_r2_64_127_0_2_n_2;
  wire sample_mem_reg_r2_64_127_12_14_n_0;
  wire sample_mem_reg_r2_64_127_12_14_n_1;
  wire sample_mem_reg_r2_64_127_12_14_n_2;
  wire sample_mem_reg_r2_64_127_15_15_n_0;
  wire sample_mem_reg_r2_64_127_3_5_n_0;
  wire sample_mem_reg_r2_64_127_3_5_n_1;
  wire sample_mem_reg_r2_64_127_3_5_n_2;
  wire sample_mem_reg_r2_64_127_6_8_n_0;
  wire sample_mem_reg_r2_64_127_6_8_n_1;
  wire sample_mem_reg_r2_64_127_6_8_n_2;
  wire sample_mem_reg_r2_64_127_9_11_n_0;
  wire sample_mem_reg_r2_64_127_9_11_n_1;
  wire sample_mem_reg_r2_64_127_9_11_n_2;
  wire sample_mem_reg_r3_0_63_0_2_n_0;
  wire sample_mem_reg_r3_0_63_0_2_n_1;
  wire sample_mem_reg_r3_0_63_0_2_n_2;
  wire sample_mem_reg_r3_0_63_12_14_n_0;
  wire sample_mem_reg_r3_0_63_12_14_n_1;
  wire sample_mem_reg_r3_0_63_12_14_n_2;
  wire sample_mem_reg_r3_0_63_15_15_n_0;
  wire sample_mem_reg_r3_0_63_3_5_n_0;
  wire sample_mem_reg_r3_0_63_3_5_n_1;
  wire sample_mem_reg_r3_0_63_3_5_n_2;
  wire sample_mem_reg_r3_0_63_6_8_n_0;
  wire sample_mem_reg_r3_0_63_6_8_n_1;
  wire sample_mem_reg_r3_0_63_6_8_n_2;
  wire sample_mem_reg_r3_0_63_9_11_n_0;
  wire sample_mem_reg_r3_0_63_9_11_n_1;
  wire sample_mem_reg_r3_0_63_9_11_n_2;
  wire sample_mem_reg_r3_64_127_0_2_n_0;
  wire sample_mem_reg_r3_64_127_0_2_n_1;
  wire sample_mem_reg_r3_64_127_0_2_n_2;
  wire sample_mem_reg_r3_64_127_12_14_n_0;
  wire sample_mem_reg_r3_64_127_12_14_n_1;
  wire sample_mem_reg_r3_64_127_12_14_n_2;
  wire sample_mem_reg_r3_64_127_15_15_n_0;
  wire sample_mem_reg_r3_64_127_3_5_n_0;
  wire sample_mem_reg_r3_64_127_3_5_n_1;
  wire sample_mem_reg_r3_64_127_3_5_n_2;
  wire sample_mem_reg_r3_64_127_6_8_n_0;
  wire sample_mem_reg_r3_64_127_6_8_n_1;
  wire sample_mem_reg_r3_64_127_6_8_n_2;
  wire sample_mem_reg_r3_64_127_9_11_n_0;
  wire sample_mem_reg_r3_64_127_9_11_n_1;
  wire sample_mem_reg_r3_64_127_9_11_n_2;
  wire sample_mem_reg_r4_0_63_0_2_n_0;
  wire sample_mem_reg_r4_0_63_0_2_n_1;
  wire sample_mem_reg_r4_0_63_0_2_n_2;
  wire sample_mem_reg_r4_0_63_12_14_n_0;
  wire sample_mem_reg_r4_0_63_12_14_n_1;
  wire sample_mem_reg_r4_0_63_12_14_n_2;
  wire sample_mem_reg_r4_0_63_15_15_n_0;
  wire sample_mem_reg_r4_0_63_3_5_n_0;
  wire sample_mem_reg_r4_0_63_3_5_n_1;
  wire sample_mem_reg_r4_0_63_3_5_n_2;
  wire sample_mem_reg_r4_0_63_6_8_n_0;
  wire sample_mem_reg_r4_0_63_6_8_n_1;
  wire sample_mem_reg_r4_0_63_6_8_n_2;
  wire sample_mem_reg_r4_0_63_9_11_n_0;
  wire sample_mem_reg_r4_0_63_9_11_n_1;
  wire sample_mem_reg_r4_0_63_9_11_n_2;
  wire sample_mem_reg_r4_64_127_0_2_n_0;
  wire sample_mem_reg_r4_64_127_0_2_n_1;
  wire sample_mem_reg_r4_64_127_0_2_n_2;
  wire sample_mem_reg_r4_64_127_12_14_n_0;
  wire sample_mem_reg_r4_64_127_12_14_n_1;
  wire sample_mem_reg_r4_64_127_12_14_n_2;
  wire sample_mem_reg_r4_64_127_15_15_n_0;
  wire sample_mem_reg_r4_64_127_3_5_n_0;
  wire sample_mem_reg_r4_64_127_3_5_n_1;
  wire sample_mem_reg_r4_64_127_3_5_n_2;
  wire sample_mem_reg_r4_64_127_6_8_n_0;
  wire sample_mem_reg_r4_64_127_6_8_n_1;
  wire sample_mem_reg_r4_64_127_6_8_n_2;
  wire sample_mem_reg_r4_64_127_9_11_n_0;
  wire sample_mem_reg_r4_64_127_9_11_n_1;
  wire sample_mem_reg_r4_64_127_9_11_n_2;
  wire stream_active_i_1_n_0;
  wire stream_active_i_2_n_0;
  wire stream_active_i_3_n_0;
  wire stream_active_reg_0;
  wire \stream_index[0]_i_1_n_0 ;
  wire \stream_index[1]_i_1_n_0 ;
  wire \stream_index[2]_i_1_n_0 ;
  wire \stream_index[2]_i_2_n_0 ;
  wire \stream_index[3]_i_1_n_0 ;
  wire \stream_index[3]_i_2_n_0 ;
  wire \stream_index[3]_i_3_n_0 ;
  wire \stream_index[3]_i_4_n_0 ;
  wire \stream_index[4]_i_1_n_0 ;
  wire NLW_sample_mem_reg_r1_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r1_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r1_0_63_15_15_SPO_UNCONNECTED;
  wire NLW_sample_mem_reg_r1_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r1_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r1_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r1_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r1_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r1_64_127_15_15_SPO_UNCONNECTED;
  wire NLW_sample_mem_reg_r1_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r1_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r1_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r2_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r2_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r2_0_63_15_15_SPO_UNCONNECTED;
  wire NLW_sample_mem_reg_r2_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r2_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r2_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r2_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r2_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r2_64_127_15_15_SPO_UNCONNECTED;
  wire NLW_sample_mem_reg_r2_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r2_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r2_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r3_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r3_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r3_0_63_15_15_SPO_UNCONNECTED;
  wire NLW_sample_mem_reg_r3_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r3_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r3_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r3_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r3_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r3_64_127_15_15_SPO_UNCONNECTED;
  wire NLW_sample_mem_reg_r3_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r3_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r3_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r4_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r4_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r4_0_63_15_15_SPO_UNCONNECTED;
  wire NLW_sample_mem_reg_r4_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r4_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r4_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r4_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r4_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r4_64_127_15_15_SPO_UNCONNECTED;
  wire NLW_sample_mem_reg_r4_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r4_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_sample_mem_reg_r4_64_127_9_11_DOD_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \capture_index[0]_i_1 
       (.I0(capture_index[0]),
        .O(\capture_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \capture_index[1]_i_1 
       (.I0(capture_index[0]),
        .I1(capture_index[1]),
        .O(\capture_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \capture_index[2]_i_1 
       (.I0(capture_index[2]),
        .I1(capture_index[1]),
        .I2(capture_index[0]),
        .O(\capture_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \capture_index[3]_i_1 
       (.I0(capture_index[3]),
        .I1(capture_index[0]),
        .I2(capture_index[1]),
        .I3(capture_index[2]),
        .O(\capture_index[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \capture_index[4]_i_1 
       (.I0(capture_index[4]),
        .I1(capture_index[3]),
        .I2(capture_index[0]),
        .I3(capture_index[1]),
        .I4(capture_index[2]),
        .O(\capture_index[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \capture_index[5]_i_1 
       (.I0(capture_index[5]),
        .I1(capture_index[3]),
        .I2(capture_index[0]),
        .I3(capture_index[1]),
        .I4(capture_index[2]),
        .I5(capture_index[4]),
        .O(\capture_index[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \capture_index[6]_i_1 
       (.I0(rst_n),
        .O(\capture_index[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \capture_index[6]_i_2 
       (.I0(capture_index[6]),
        .I1(capture_index[4]),
        .I2(capture_index[5]),
        .I3(\capture_index[6]_i_3_n_0 ),
        .O(\capture_index[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \capture_index[6]_i_3 
       (.I0(capture_index[3]),
        .I1(capture_index[0]),
        .I2(capture_index[1]),
        .I3(capture_index[2]),
        .O(\capture_index[6]_i_3_n_0 ));
  FDRE \capture_index_reg[0] 
       (.C(clk),
        .CE(frame_valid),
        .D(\capture_index[0]_i_1_n_0 ),
        .Q(capture_index[0]),
        .R(\capture_index[6]_i_1_n_0 ));
  FDRE \capture_index_reg[1] 
       (.C(clk),
        .CE(frame_valid),
        .D(\capture_index[1]_i_1_n_0 ),
        .Q(capture_index[1]),
        .R(\capture_index[6]_i_1_n_0 ));
  FDRE \capture_index_reg[2] 
       (.C(clk),
        .CE(frame_valid),
        .D(\capture_index[2]_i_1_n_0 ),
        .Q(capture_index[2]),
        .R(\capture_index[6]_i_1_n_0 ));
  FDRE \capture_index_reg[3] 
       (.C(clk),
        .CE(frame_valid),
        .D(\capture_index[3]_i_1_n_0 ),
        .Q(capture_index[3]),
        .R(\capture_index[6]_i_1_n_0 ));
  FDRE \capture_index_reg[4] 
       (.C(clk),
        .CE(frame_valid),
        .D(\capture_index[4]_i_1_n_0 ),
        .Q(capture_index[4]),
        .R(\capture_index[6]_i_1_n_0 ));
  FDRE \capture_index_reg[5] 
       (.C(clk),
        .CE(frame_valid),
        .D(\capture_index[5]_i_1_n_0 ),
        .Q(capture_index[5]),
        .R(\capture_index[6]_i_1_n_0 ));
  FDRE \capture_index_reg[6] 
       (.C(clk),
        .CE(frame_valid),
        .D(\capture_index[6]_i_2_n_0 ),
        .Q(capture_index[6]),
        .R(\capture_index[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[0]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_0_2_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_0_2_n_0),
        .O(m_axis_wave_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[10]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_9_11_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_9_11_n_1),
        .O(m_axis_wave_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[11]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_9_11_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_9_11_n_2),
        .O(m_axis_wave_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[12]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_12_14_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_12_14_n_0),
        .O(m_axis_wave_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[13]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_12_14_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_12_14_n_1),
        .O(m_axis_wave_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[14]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_12_14_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_12_14_n_2),
        .O(m_axis_wave_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[15]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_15_15_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_15_15_n_0),
        .O(m_axis_wave_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[16]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_0_2_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_0_2_n_0),
        .O(m_axis_wave_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[17]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_0_2_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_0_2_n_1),
        .O(m_axis_wave_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[18]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_0_2_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_0_2_n_2),
        .O(m_axis_wave_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[19]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_3_5_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_3_5_n_0),
        .O(m_axis_wave_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[1]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_0_2_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_0_2_n_1),
        .O(m_axis_wave_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[20]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_3_5_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_3_5_n_1),
        .O(m_axis_wave_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[21]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_3_5_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_3_5_n_2),
        .O(m_axis_wave_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[22]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_6_8_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_6_8_n_0),
        .O(m_axis_wave_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[23]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_6_8_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_6_8_n_1),
        .O(m_axis_wave_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[24]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_6_8_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_6_8_n_2),
        .O(m_axis_wave_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[25]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_9_11_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_9_11_n_0),
        .O(m_axis_wave_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[26]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_9_11_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_9_11_n_1),
        .O(m_axis_wave_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[27]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_9_11_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_9_11_n_2),
        .O(m_axis_wave_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[28]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_12_14_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_12_14_n_0),
        .O(m_axis_wave_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[29]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_12_14_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_12_14_n_1),
        .O(m_axis_wave_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[2]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_0_2_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_0_2_n_2),
        .O(m_axis_wave_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[30]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_12_14_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_12_14_n_2),
        .O(m_axis_wave_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[31]_INST_0 
       (.I0(sample_mem_reg_r3_64_127_15_15_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r3_0_63_15_15_n_0),
        .O(m_axis_wave_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[32]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_0_2_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_0_2_n_0),
        .O(m_axis_wave_tdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[33]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_0_2_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_0_2_n_1),
        .O(m_axis_wave_tdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[34]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_0_2_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_0_2_n_2),
        .O(m_axis_wave_tdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[35]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_3_5_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_3_5_n_0),
        .O(m_axis_wave_tdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[36]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_3_5_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_3_5_n_1),
        .O(m_axis_wave_tdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[37]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_3_5_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_3_5_n_2),
        .O(m_axis_wave_tdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[38]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_6_8_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_6_8_n_0),
        .O(m_axis_wave_tdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[39]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_6_8_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_6_8_n_1),
        .O(m_axis_wave_tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[3]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_3_5_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_3_5_n_0),
        .O(m_axis_wave_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[40]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_6_8_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_6_8_n_2),
        .O(m_axis_wave_tdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[41]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_9_11_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_9_11_n_0),
        .O(m_axis_wave_tdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[42]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_9_11_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_9_11_n_1),
        .O(m_axis_wave_tdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[43]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_9_11_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_9_11_n_2),
        .O(m_axis_wave_tdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[44]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_12_14_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_12_14_n_0),
        .O(m_axis_wave_tdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[45]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_12_14_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_12_14_n_1),
        .O(m_axis_wave_tdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[46]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_12_14_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_12_14_n_2),
        .O(m_axis_wave_tdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[47]_INST_0 
       (.I0(sample_mem_reg_r2_64_127_15_15_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r2_0_63_15_15_n_0),
        .O(m_axis_wave_tdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[48]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_0_2_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_0_2_n_0),
        .O(m_axis_wave_tdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[49]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_0_2_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_0_2_n_1),
        .O(m_axis_wave_tdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[4]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_3_5_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_3_5_n_1),
        .O(m_axis_wave_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[50]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_0_2_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_0_2_n_2),
        .O(m_axis_wave_tdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[51]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_3_5_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_3_5_n_0),
        .O(m_axis_wave_tdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[52]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_3_5_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_3_5_n_1),
        .O(m_axis_wave_tdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[53]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_3_5_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_3_5_n_2),
        .O(m_axis_wave_tdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[54]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_6_8_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_6_8_n_0),
        .O(m_axis_wave_tdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[55]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_6_8_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_6_8_n_1),
        .O(m_axis_wave_tdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[56]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_6_8_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_6_8_n_2),
        .O(m_axis_wave_tdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[57]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_9_11_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_9_11_n_0),
        .O(m_axis_wave_tdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[58]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_9_11_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_9_11_n_1),
        .O(m_axis_wave_tdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[59]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_9_11_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_9_11_n_2),
        .O(m_axis_wave_tdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[5]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_3_5_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_3_5_n_2),
        .O(m_axis_wave_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[60]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_12_14_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_12_14_n_0),
        .O(m_axis_wave_tdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[61]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_12_14_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_12_14_n_1),
        .O(m_axis_wave_tdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[62]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_12_14_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_12_14_n_2),
        .O(m_axis_wave_tdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[63]_INST_0 
       (.I0(sample_mem_reg_r1_64_127_15_15_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r1_0_63_15_15_n_0),
        .O(m_axis_wave_tdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[6]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_6_8_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_6_8_n_0),
        .O(m_axis_wave_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[7]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_6_8_n_1),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_6_8_n_1),
        .O(m_axis_wave_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[8]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_6_8_n_2),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_6_8_n_2),
        .O(m_axis_wave_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_wave_tdata[9]_INST_0 
       (.I0(sample_mem_reg_r4_64_127_9_11_n_0),
        .I1(sample_base[6]),
        .I2(sample_mem_reg_r4_0_63_9_11_n_0),
        .O(m_axis_wave_tdata[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    m_axis_wave_tlast_INST_0
       (.I0(stream_active_reg_0),
        .I1(sample_base[4]),
        .I2(sample_base[3]),
        .I3(sample_base[2]),
        .I4(sample_base[5]),
        .I5(sample_base[6]),
        .O(m_axis_wave_tlast));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M sample_mem_reg_r1_0_63_0_2
       (.ADDRA({sample_base[5:2],1'b1,1'b1}),
        .ADDRB({sample_base[5:2],1'b1,1'b1}),
        .ADDRC({sample_base[5:2],1'b1,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[0]),
        .DIB(frame_data[1]),
        .DIC(frame_data[2]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r1_0_63_0_2_n_0),
        .DOB(sample_mem_reg_r1_0_63_0_2_n_1),
        .DOC(sample_mem_reg_r1_0_63_0_2_n_2),
        .DOD(NLW_sample_mem_reg_r1_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    sample_mem_reg_r1_0_63_0_2_i_1
       (.I0(rst_n),
        .I1(frame_valid),
        .I2(capture_index[6]),
        .O(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M sample_mem_reg_r1_0_63_12_14
       (.ADDRA({sample_base[5:2],1'b1,1'b1}),
        .ADDRB({sample_base[5:2],1'b1,1'b1}),
        .ADDRC({sample_base[5:2],1'b1,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[12]),
        .DIB(frame_data[13]),
        .DIC(frame_data[14]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r1_0_63_12_14_n_0),
        .DOB(sample_mem_reg_r1_0_63_12_14_n_1),
        .DOC(sample_mem_reg_r1_0_63_12_14_n_2),
        .DOD(NLW_sample_mem_reg_r1_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D sample_mem_reg_r1_0_63_15_15
       (.A0(capture_index[0]),
        .A1(capture_index[1]),
        .A2(capture_index[2]),
        .A3(capture_index[3]),
        .A4(capture_index[4]),
        .A5(capture_index[5]),
        .D(frame_data[15]),
        .DPO(sample_mem_reg_r1_0_63_15_15_n_0),
        .DPRA0(1'b1),
        .DPRA1(1'b1),
        .DPRA2(sample_base[2]),
        .DPRA3(sample_base[3]),
        .DPRA4(sample_base[4]),
        .DPRA5(sample_base[5]),
        .SPO(NLW_sample_mem_reg_r1_0_63_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M sample_mem_reg_r1_0_63_3_5
       (.ADDRA({sample_base[5:2],1'b1,1'b1}),
        .ADDRB({sample_base[5:2],1'b1,1'b1}),
        .ADDRC({sample_base[5:2],1'b1,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[3]),
        .DIB(frame_data[4]),
        .DIC(frame_data[5]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r1_0_63_3_5_n_0),
        .DOB(sample_mem_reg_r1_0_63_3_5_n_1),
        .DOC(sample_mem_reg_r1_0_63_3_5_n_2),
        .DOD(NLW_sample_mem_reg_r1_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M sample_mem_reg_r1_0_63_6_8
       (.ADDRA({sample_base[5:2],1'b1,1'b1}),
        .ADDRB({sample_base[5:2],1'b1,1'b1}),
        .ADDRC({sample_base[5:2],1'b1,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[6]),
        .DIB(frame_data[7]),
        .DIC(frame_data[8]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r1_0_63_6_8_n_0),
        .DOB(sample_mem_reg_r1_0_63_6_8_n_1),
        .DOC(sample_mem_reg_r1_0_63_6_8_n_2),
        .DOD(NLW_sample_mem_reg_r1_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M sample_mem_reg_r1_0_63_9_11
       (.ADDRA({sample_base[5:2],1'b1,1'b1}),
        .ADDRB({sample_base[5:2],1'b1,1'b1}),
        .ADDRC({sample_base[5:2],1'b1,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[9]),
        .DIB(frame_data[10]),
        .DIC(frame_data[11]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r1_0_63_9_11_n_0),
        .DOB(sample_mem_reg_r1_0_63_9_11_n_1),
        .DOC(sample_mem_reg_r1_0_63_9_11_n_2),
        .DOD(NLW_sample_mem_reg_r1_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M sample_mem_reg_r1_64_127_0_2
       (.ADDRA({sample_base[5:2],1'b1,1'b1}),
        .ADDRB({sample_base[5:2],1'b1,1'b1}),
        .ADDRC({sample_base[5:2],1'b1,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[0]),
        .DIB(frame_data[1]),
        .DIC(frame_data[2]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r1_64_127_0_2_n_0),
        .DOB(sample_mem_reg_r1_64_127_0_2_n_1),
        .DOC(sample_mem_reg_r1_64_127_0_2_n_2),
        .DOD(NLW_sample_mem_reg_r1_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    sample_mem_reg_r1_64_127_0_2_i_1
       (.I0(rst_n),
        .I1(frame_valid),
        .I2(capture_index[6]),
        .O(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M sample_mem_reg_r1_64_127_12_14
       (.ADDRA({sample_base[5:2],1'b1,1'b1}),
        .ADDRB({sample_base[5:2],1'b1,1'b1}),
        .ADDRC({sample_base[5:2],1'b1,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[12]),
        .DIB(frame_data[13]),
        .DIC(frame_data[14]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r1_64_127_12_14_n_0),
        .DOB(sample_mem_reg_r1_64_127_12_14_n_1),
        .DOC(sample_mem_reg_r1_64_127_12_14_n_2),
        .DOD(NLW_sample_mem_reg_r1_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D sample_mem_reg_r1_64_127_15_15
       (.A0(capture_index[0]),
        .A1(capture_index[1]),
        .A2(capture_index[2]),
        .A3(capture_index[3]),
        .A4(capture_index[4]),
        .A5(capture_index[5]),
        .D(frame_data[15]),
        .DPO(sample_mem_reg_r1_64_127_15_15_n_0),
        .DPRA0(1'b1),
        .DPRA1(1'b1),
        .DPRA2(sample_base[2]),
        .DPRA3(sample_base[3]),
        .DPRA4(sample_base[4]),
        .DPRA5(sample_base[5]),
        .SPO(NLW_sample_mem_reg_r1_64_127_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M sample_mem_reg_r1_64_127_3_5
       (.ADDRA({sample_base[5:2],1'b1,1'b1}),
        .ADDRB({sample_base[5:2],1'b1,1'b1}),
        .ADDRC({sample_base[5:2],1'b1,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[3]),
        .DIB(frame_data[4]),
        .DIC(frame_data[5]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r1_64_127_3_5_n_0),
        .DOB(sample_mem_reg_r1_64_127_3_5_n_1),
        .DOC(sample_mem_reg_r1_64_127_3_5_n_2),
        .DOD(NLW_sample_mem_reg_r1_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M sample_mem_reg_r1_64_127_6_8
       (.ADDRA({sample_base[5:2],1'b1,1'b1}),
        .ADDRB({sample_base[5:2],1'b1,1'b1}),
        .ADDRC({sample_base[5:2],1'b1,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[6]),
        .DIB(frame_data[7]),
        .DIC(frame_data[8]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r1_64_127_6_8_n_0),
        .DOB(sample_mem_reg_r1_64_127_6_8_n_1),
        .DOC(sample_mem_reg_r1_64_127_6_8_n_2),
        .DOD(NLW_sample_mem_reg_r1_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M sample_mem_reg_r1_64_127_9_11
       (.ADDRA({sample_base[5:2],1'b1,1'b1}),
        .ADDRB({sample_base[5:2],1'b1,1'b1}),
        .ADDRC({sample_base[5:2],1'b1,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[9]),
        .DIB(frame_data[10]),
        .DIC(frame_data[11]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r1_64_127_9_11_n_0),
        .DOB(sample_mem_reg_r1_64_127_9_11_n_1),
        .DOC(sample_mem_reg_r1_64_127_9_11_n_2),
        .DOD(NLW_sample_mem_reg_r1_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M sample_mem_reg_r2_0_63_0_2
       (.ADDRA({sample_base[5:2],1'b1,1'b0}),
        .ADDRB({sample_base[5:2],1'b1,1'b0}),
        .ADDRC({sample_base[5:2],1'b1,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[0]),
        .DIB(frame_data[1]),
        .DIC(frame_data[2]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r2_0_63_0_2_n_0),
        .DOB(sample_mem_reg_r2_0_63_0_2_n_1),
        .DOC(sample_mem_reg_r2_0_63_0_2_n_2),
        .DOD(NLW_sample_mem_reg_r2_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M sample_mem_reg_r2_0_63_12_14
       (.ADDRA({sample_base[5:2],1'b1,1'b0}),
        .ADDRB({sample_base[5:2],1'b1,1'b0}),
        .ADDRC({sample_base[5:2],1'b1,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[12]),
        .DIB(frame_data[13]),
        .DIC(frame_data[14]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r2_0_63_12_14_n_0),
        .DOB(sample_mem_reg_r2_0_63_12_14_n_1),
        .DOC(sample_mem_reg_r2_0_63_12_14_n_2),
        .DOD(NLW_sample_mem_reg_r2_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D sample_mem_reg_r2_0_63_15_15
       (.A0(capture_index[0]),
        .A1(capture_index[1]),
        .A2(capture_index[2]),
        .A3(capture_index[3]),
        .A4(capture_index[4]),
        .A5(capture_index[5]),
        .D(frame_data[15]),
        .DPO(sample_mem_reg_r2_0_63_15_15_n_0),
        .DPRA0(1'b0),
        .DPRA1(1'b1),
        .DPRA2(sample_base[2]),
        .DPRA3(sample_base[3]),
        .DPRA4(sample_base[4]),
        .DPRA5(sample_base[5]),
        .SPO(NLW_sample_mem_reg_r2_0_63_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M sample_mem_reg_r2_0_63_3_5
       (.ADDRA({sample_base[5:2],1'b1,1'b0}),
        .ADDRB({sample_base[5:2],1'b1,1'b0}),
        .ADDRC({sample_base[5:2],1'b1,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[3]),
        .DIB(frame_data[4]),
        .DIC(frame_data[5]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r2_0_63_3_5_n_0),
        .DOB(sample_mem_reg_r2_0_63_3_5_n_1),
        .DOC(sample_mem_reg_r2_0_63_3_5_n_2),
        .DOD(NLW_sample_mem_reg_r2_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M sample_mem_reg_r2_0_63_6_8
       (.ADDRA({sample_base[5:2],1'b1,1'b0}),
        .ADDRB({sample_base[5:2],1'b1,1'b0}),
        .ADDRC({sample_base[5:2],1'b1,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[6]),
        .DIB(frame_data[7]),
        .DIC(frame_data[8]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r2_0_63_6_8_n_0),
        .DOB(sample_mem_reg_r2_0_63_6_8_n_1),
        .DOC(sample_mem_reg_r2_0_63_6_8_n_2),
        .DOD(NLW_sample_mem_reg_r2_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M sample_mem_reg_r2_0_63_9_11
       (.ADDRA({sample_base[5:2],1'b1,1'b0}),
        .ADDRB({sample_base[5:2],1'b1,1'b0}),
        .ADDRC({sample_base[5:2],1'b1,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[9]),
        .DIB(frame_data[10]),
        .DIC(frame_data[11]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r2_0_63_9_11_n_0),
        .DOB(sample_mem_reg_r2_0_63_9_11_n_1),
        .DOC(sample_mem_reg_r2_0_63_9_11_n_2),
        .DOD(NLW_sample_mem_reg_r2_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M sample_mem_reg_r2_64_127_0_2
       (.ADDRA({sample_base[5:2],1'b1,1'b0}),
        .ADDRB({sample_base[5:2],1'b1,1'b0}),
        .ADDRC({sample_base[5:2],1'b1,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[0]),
        .DIB(frame_data[1]),
        .DIC(frame_data[2]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r2_64_127_0_2_n_0),
        .DOB(sample_mem_reg_r2_64_127_0_2_n_1),
        .DOC(sample_mem_reg_r2_64_127_0_2_n_2),
        .DOD(NLW_sample_mem_reg_r2_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M sample_mem_reg_r2_64_127_12_14
       (.ADDRA({sample_base[5:2],1'b1,1'b0}),
        .ADDRB({sample_base[5:2],1'b1,1'b0}),
        .ADDRC({sample_base[5:2],1'b1,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[12]),
        .DIB(frame_data[13]),
        .DIC(frame_data[14]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r2_64_127_12_14_n_0),
        .DOB(sample_mem_reg_r2_64_127_12_14_n_1),
        .DOC(sample_mem_reg_r2_64_127_12_14_n_2),
        .DOD(NLW_sample_mem_reg_r2_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D sample_mem_reg_r2_64_127_15_15
       (.A0(capture_index[0]),
        .A1(capture_index[1]),
        .A2(capture_index[2]),
        .A3(capture_index[3]),
        .A4(capture_index[4]),
        .A5(capture_index[5]),
        .D(frame_data[15]),
        .DPO(sample_mem_reg_r2_64_127_15_15_n_0),
        .DPRA0(1'b0),
        .DPRA1(1'b1),
        .DPRA2(sample_base[2]),
        .DPRA3(sample_base[3]),
        .DPRA4(sample_base[4]),
        .DPRA5(sample_base[5]),
        .SPO(NLW_sample_mem_reg_r2_64_127_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M sample_mem_reg_r2_64_127_3_5
       (.ADDRA({sample_base[5:2],1'b1,1'b0}),
        .ADDRB({sample_base[5:2],1'b1,1'b0}),
        .ADDRC({sample_base[5:2],1'b1,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[3]),
        .DIB(frame_data[4]),
        .DIC(frame_data[5]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r2_64_127_3_5_n_0),
        .DOB(sample_mem_reg_r2_64_127_3_5_n_1),
        .DOC(sample_mem_reg_r2_64_127_3_5_n_2),
        .DOD(NLW_sample_mem_reg_r2_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M sample_mem_reg_r2_64_127_6_8
       (.ADDRA({sample_base[5:2],1'b1,1'b0}),
        .ADDRB({sample_base[5:2],1'b1,1'b0}),
        .ADDRC({sample_base[5:2],1'b1,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[6]),
        .DIB(frame_data[7]),
        .DIC(frame_data[8]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r2_64_127_6_8_n_0),
        .DOB(sample_mem_reg_r2_64_127_6_8_n_1),
        .DOC(sample_mem_reg_r2_64_127_6_8_n_2),
        .DOD(NLW_sample_mem_reg_r2_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M sample_mem_reg_r2_64_127_9_11
       (.ADDRA({sample_base[5:2],1'b1,1'b0}),
        .ADDRB({sample_base[5:2],1'b1,1'b0}),
        .ADDRC({sample_base[5:2],1'b1,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[9]),
        .DIB(frame_data[10]),
        .DIC(frame_data[11]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r2_64_127_9_11_n_0),
        .DOB(sample_mem_reg_r2_64_127_9_11_n_1),
        .DOC(sample_mem_reg_r2_64_127_9_11_n_2),
        .DOD(NLW_sample_mem_reg_r2_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M sample_mem_reg_r3_0_63_0_2
       (.ADDRA({sample_base[5:2],1'b0,1'b1}),
        .ADDRB({sample_base[5:2],1'b0,1'b1}),
        .ADDRC({sample_base[5:2],1'b0,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[0]),
        .DIB(frame_data[1]),
        .DIC(frame_data[2]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r3_0_63_0_2_n_0),
        .DOB(sample_mem_reg_r3_0_63_0_2_n_1),
        .DOC(sample_mem_reg_r3_0_63_0_2_n_2),
        .DOD(NLW_sample_mem_reg_r3_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M sample_mem_reg_r3_0_63_12_14
       (.ADDRA({sample_base[5:2],1'b0,1'b1}),
        .ADDRB({sample_base[5:2],1'b0,1'b1}),
        .ADDRC({sample_base[5:2],1'b0,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[12]),
        .DIB(frame_data[13]),
        .DIC(frame_data[14]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r3_0_63_12_14_n_0),
        .DOB(sample_mem_reg_r3_0_63_12_14_n_1),
        .DOC(sample_mem_reg_r3_0_63_12_14_n_2),
        .DOD(NLW_sample_mem_reg_r3_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D sample_mem_reg_r3_0_63_15_15
       (.A0(capture_index[0]),
        .A1(capture_index[1]),
        .A2(capture_index[2]),
        .A3(capture_index[3]),
        .A4(capture_index[4]),
        .A5(capture_index[5]),
        .D(frame_data[15]),
        .DPO(sample_mem_reg_r3_0_63_15_15_n_0),
        .DPRA0(1'b1),
        .DPRA1(1'b0),
        .DPRA2(sample_base[2]),
        .DPRA3(sample_base[3]),
        .DPRA4(sample_base[4]),
        .DPRA5(sample_base[5]),
        .SPO(NLW_sample_mem_reg_r3_0_63_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M sample_mem_reg_r3_0_63_3_5
       (.ADDRA({sample_base[5:2],1'b0,1'b1}),
        .ADDRB({sample_base[5:2],1'b0,1'b1}),
        .ADDRC({sample_base[5:2],1'b0,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[3]),
        .DIB(frame_data[4]),
        .DIC(frame_data[5]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r3_0_63_3_5_n_0),
        .DOB(sample_mem_reg_r3_0_63_3_5_n_1),
        .DOC(sample_mem_reg_r3_0_63_3_5_n_2),
        .DOD(NLW_sample_mem_reg_r3_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M sample_mem_reg_r3_0_63_6_8
       (.ADDRA({sample_base[5:2],1'b0,1'b1}),
        .ADDRB({sample_base[5:2],1'b0,1'b1}),
        .ADDRC({sample_base[5:2],1'b0,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[6]),
        .DIB(frame_data[7]),
        .DIC(frame_data[8]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r3_0_63_6_8_n_0),
        .DOB(sample_mem_reg_r3_0_63_6_8_n_1),
        .DOC(sample_mem_reg_r3_0_63_6_8_n_2),
        .DOD(NLW_sample_mem_reg_r3_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M sample_mem_reg_r3_0_63_9_11
       (.ADDRA({sample_base[5:2],1'b0,1'b1}),
        .ADDRB({sample_base[5:2],1'b0,1'b1}),
        .ADDRC({sample_base[5:2],1'b0,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[9]),
        .DIB(frame_data[10]),
        .DIC(frame_data[11]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r3_0_63_9_11_n_0),
        .DOB(sample_mem_reg_r3_0_63_9_11_n_1),
        .DOC(sample_mem_reg_r3_0_63_9_11_n_2),
        .DOD(NLW_sample_mem_reg_r3_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M sample_mem_reg_r3_64_127_0_2
       (.ADDRA({sample_base[5:2],1'b0,1'b1}),
        .ADDRB({sample_base[5:2],1'b0,1'b1}),
        .ADDRC({sample_base[5:2],1'b0,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[0]),
        .DIB(frame_data[1]),
        .DIC(frame_data[2]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r3_64_127_0_2_n_0),
        .DOB(sample_mem_reg_r3_64_127_0_2_n_1),
        .DOC(sample_mem_reg_r3_64_127_0_2_n_2),
        .DOD(NLW_sample_mem_reg_r3_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M sample_mem_reg_r3_64_127_12_14
       (.ADDRA({sample_base[5:2],1'b0,1'b1}),
        .ADDRB({sample_base[5:2],1'b0,1'b1}),
        .ADDRC({sample_base[5:2],1'b0,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[12]),
        .DIB(frame_data[13]),
        .DIC(frame_data[14]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r3_64_127_12_14_n_0),
        .DOB(sample_mem_reg_r3_64_127_12_14_n_1),
        .DOC(sample_mem_reg_r3_64_127_12_14_n_2),
        .DOD(NLW_sample_mem_reg_r3_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D sample_mem_reg_r3_64_127_15_15
       (.A0(capture_index[0]),
        .A1(capture_index[1]),
        .A2(capture_index[2]),
        .A3(capture_index[3]),
        .A4(capture_index[4]),
        .A5(capture_index[5]),
        .D(frame_data[15]),
        .DPO(sample_mem_reg_r3_64_127_15_15_n_0),
        .DPRA0(1'b1),
        .DPRA1(1'b0),
        .DPRA2(sample_base[2]),
        .DPRA3(sample_base[3]),
        .DPRA4(sample_base[4]),
        .DPRA5(sample_base[5]),
        .SPO(NLW_sample_mem_reg_r3_64_127_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M sample_mem_reg_r3_64_127_3_5
       (.ADDRA({sample_base[5:2],1'b0,1'b1}),
        .ADDRB({sample_base[5:2],1'b0,1'b1}),
        .ADDRC({sample_base[5:2],1'b0,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[3]),
        .DIB(frame_data[4]),
        .DIC(frame_data[5]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r3_64_127_3_5_n_0),
        .DOB(sample_mem_reg_r3_64_127_3_5_n_1),
        .DOC(sample_mem_reg_r3_64_127_3_5_n_2),
        .DOD(NLW_sample_mem_reg_r3_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M sample_mem_reg_r3_64_127_6_8
       (.ADDRA({sample_base[5:2],1'b0,1'b1}),
        .ADDRB({sample_base[5:2],1'b0,1'b1}),
        .ADDRC({sample_base[5:2],1'b0,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[6]),
        .DIB(frame_data[7]),
        .DIC(frame_data[8]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r3_64_127_6_8_n_0),
        .DOB(sample_mem_reg_r3_64_127_6_8_n_1),
        .DOC(sample_mem_reg_r3_64_127_6_8_n_2),
        .DOD(NLW_sample_mem_reg_r3_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M sample_mem_reg_r3_64_127_9_11
       (.ADDRA({sample_base[5:2],1'b0,1'b1}),
        .ADDRB({sample_base[5:2],1'b0,1'b1}),
        .ADDRC({sample_base[5:2],1'b0,1'b1}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[9]),
        .DIB(frame_data[10]),
        .DIC(frame_data[11]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r3_64_127_9_11_n_0),
        .DOB(sample_mem_reg_r3_64_127_9_11_n_1),
        .DOC(sample_mem_reg_r3_64_127_9_11_n_2),
        .DOD(NLW_sample_mem_reg_r3_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M sample_mem_reg_r4_0_63_0_2
       (.ADDRA({sample_base[5:2],1'b0,1'b0}),
        .ADDRB({sample_base[5:2],1'b0,1'b0}),
        .ADDRC({sample_base[5:2],1'b0,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[0]),
        .DIB(frame_data[1]),
        .DIC(frame_data[2]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r4_0_63_0_2_n_0),
        .DOB(sample_mem_reg_r4_0_63_0_2_n_1),
        .DOC(sample_mem_reg_r4_0_63_0_2_n_2),
        .DOD(NLW_sample_mem_reg_r4_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M sample_mem_reg_r4_0_63_12_14
       (.ADDRA({sample_base[5:2],1'b0,1'b0}),
        .ADDRB({sample_base[5:2],1'b0,1'b0}),
        .ADDRC({sample_base[5:2],1'b0,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[12]),
        .DIB(frame_data[13]),
        .DIC(frame_data[14]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r4_0_63_12_14_n_0),
        .DOB(sample_mem_reg_r4_0_63_12_14_n_1),
        .DOC(sample_mem_reg_r4_0_63_12_14_n_2),
        .DOD(NLW_sample_mem_reg_r4_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D sample_mem_reg_r4_0_63_15_15
       (.A0(capture_index[0]),
        .A1(capture_index[1]),
        .A2(capture_index[2]),
        .A3(capture_index[3]),
        .A4(capture_index[4]),
        .A5(capture_index[5]),
        .D(frame_data[15]),
        .DPO(sample_mem_reg_r4_0_63_15_15_n_0),
        .DPRA0(1'b0),
        .DPRA1(1'b0),
        .DPRA2(sample_base[2]),
        .DPRA3(sample_base[3]),
        .DPRA4(sample_base[4]),
        .DPRA5(sample_base[5]),
        .SPO(NLW_sample_mem_reg_r4_0_63_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M sample_mem_reg_r4_0_63_3_5
       (.ADDRA({sample_base[5:2],1'b0,1'b0}),
        .ADDRB({sample_base[5:2],1'b0,1'b0}),
        .ADDRC({sample_base[5:2],1'b0,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[3]),
        .DIB(frame_data[4]),
        .DIC(frame_data[5]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r4_0_63_3_5_n_0),
        .DOB(sample_mem_reg_r4_0_63_3_5_n_1),
        .DOC(sample_mem_reg_r4_0_63_3_5_n_2),
        .DOD(NLW_sample_mem_reg_r4_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M sample_mem_reg_r4_0_63_6_8
       (.ADDRA({sample_base[5:2],1'b0,1'b0}),
        .ADDRB({sample_base[5:2],1'b0,1'b0}),
        .ADDRC({sample_base[5:2],1'b0,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[6]),
        .DIB(frame_data[7]),
        .DIC(frame_data[8]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r4_0_63_6_8_n_0),
        .DOB(sample_mem_reg_r4_0_63_6_8_n_1),
        .DOC(sample_mem_reg_r4_0_63_6_8_n_2),
        .DOD(NLW_sample_mem_reg_r4_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M sample_mem_reg_r4_0_63_9_11
       (.ADDRA({sample_base[5:2],1'b0,1'b0}),
        .ADDRB({sample_base[5:2],1'b0,1'b0}),
        .ADDRC({sample_base[5:2],1'b0,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[9]),
        .DIB(frame_data[10]),
        .DIC(frame_data[11]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r4_0_63_9_11_n_0),
        .DOB(sample_mem_reg_r4_0_63_9_11_n_1),
        .DOC(sample_mem_reg_r4_0_63_9_11_n_2),
        .DOD(NLW_sample_mem_reg_r4_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M sample_mem_reg_r4_64_127_0_2
       (.ADDRA({sample_base[5:2],1'b0,1'b0}),
        .ADDRB({sample_base[5:2],1'b0,1'b0}),
        .ADDRC({sample_base[5:2],1'b0,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[0]),
        .DIB(frame_data[1]),
        .DIC(frame_data[2]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r4_64_127_0_2_n_0),
        .DOB(sample_mem_reg_r4_64_127_0_2_n_1),
        .DOC(sample_mem_reg_r4_64_127_0_2_n_2),
        .DOD(NLW_sample_mem_reg_r4_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M sample_mem_reg_r4_64_127_12_14
       (.ADDRA({sample_base[5:2],1'b0,1'b0}),
        .ADDRB({sample_base[5:2],1'b0,1'b0}),
        .ADDRC({sample_base[5:2],1'b0,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[12]),
        .DIB(frame_data[13]),
        .DIC(frame_data[14]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r4_64_127_12_14_n_0),
        .DOB(sample_mem_reg_r4_64_127_12_14_n_1),
        .DOC(sample_mem_reg_r4_64_127_12_14_n_2),
        .DOD(NLW_sample_mem_reg_r4_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM64X1D sample_mem_reg_r4_64_127_15_15
       (.A0(capture_index[0]),
        .A1(capture_index[1]),
        .A2(capture_index[2]),
        .A3(capture_index[3]),
        .A4(capture_index[4]),
        .A5(capture_index[5]),
        .D(frame_data[15]),
        .DPO(sample_mem_reg_r4_64_127_15_15_n_0),
        .DPRA0(1'b0),
        .DPRA1(1'b0),
        .DPRA2(sample_base[2]),
        .DPRA3(sample_base[3]),
        .DPRA4(sample_base[4]),
        .DPRA5(sample_base[5]),
        .SPO(NLW_sample_mem_reg_r4_64_127_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M sample_mem_reg_r4_64_127_3_5
       (.ADDRA({sample_base[5:2],1'b0,1'b0}),
        .ADDRB({sample_base[5:2],1'b0,1'b0}),
        .ADDRC({sample_base[5:2],1'b0,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[3]),
        .DIB(frame_data[4]),
        .DIC(frame_data[5]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r4_64_127_3_5_n_0),
        .DOB(sample_mem_reg_r4_64_127_3_5_n_1),
        .DOC(sample_mem_reg_r4_64_127_3_5_n_2),
        .DOD(NLW_sample_mem_reg_r4_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M sample_mem_reg_r4_64_127_6_8
       (.ADDRA({sample_base[5:2],1'b0,1'b0}),
        .ADDRB({sample_base[5:2],1'b0,1'b0}),
        .ADDRC({sample_base[5:2],1'b0,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[6]),
        .DIB(frame_data[7]),
        .DIC(frame_data[8]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r4_64_127_6_8_n_0),
        .DOB(sample_mem_reg_r4_64_127_6_8_n_1),
        .DOC(sample_mem_reg_r4_64_127_6_8_n_2),
        .DOD(NLW_sample_mem_reg_r4_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M sample_mem_reg_r4_64_127_9_11
       (.ADDRA({sample_base[5:2],1'b0,1'b0}),
        .ADDRB({sample_base[5:2],1'b0,1'b0}),
        .ADDRC({sample_base[5:2],1'b0,1'b0}),
        .ADDRD(capture_index[5:0]),
        .DIA(frame_data[9]),
        .DIB(frame_data[10]),
        .DIC(frame_data[11]),
        .DID(1'b0),
        .DOA(sample_mem_reg_r4_64_127_9_11_n_0),
        .DOB(sample_mem_reg_r4_64_127_9_11_n_1),
        .DOC(sample_mem_reg_r4_64_127_9_11_n_2),
        .DOD(NLW_sample_mem_reg_r4_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(sample_mem_reg_r1_64_127_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'hF7000000)) 
    stream_active_i_1
       (.I0(m_axis_wave_tready),
        .I1(stream_active_reg_0),
        .I2(stream_active_i_2_n_0),
        .I3(stream_active_i_3_n_0),
        .I4(rst_n),
        .O(stream_active_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    stream_active_i_2
       (.I0(sample_base[6]),
        .I1(sample_base[5]),
        .I2(sample_base[2]),
        .I3(sample_base[3]),
        .I4(sample_base[4]),
        .O(stream_active_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    stream_active_i_3
       (.I0(\capture_index[6]_i_3_n_0 ),
        .I1(capture_index[5]),
        .I2(capture_index[4]),
        .I3(capture_index[6]),
        .I4(frame_valid),
        .I5(stream_active_reg_0),
        .O(stream_active_i_3_n_0));
  FDRE stream_active_reg
       (.C(clk),
        .CE(1'b1),
        .D(stream_active_i_1_n_0),
        .Q(stream_active_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \stream_index[0]_i_1 
       (.I0(stream_active_reg_0),
        .I1(\stream_index[2]_i_2_n_0 ),
        .I2(sample_base[2]),
        .O(\stream_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAA28)) 
    \stream_index[1]_i_1 
       (.I0(stream_active_reg_0),
        .I1(sample_base[2]),
        .I2(sample_base[3]),
        .I3(\stream_index[2]_i_2_n_0 ),
        .O(\stream_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8AA8A8A8)) 
    \stream_index[2]_i_1 
       (.I0(stream_active_reg_0),
        .I1(\stream_index[2]_i_2_n_0 ),
        .I2(sample_base[4]),
        .I3(sample_base[3]),
        .I4(sample_base[2]),
        .O(\stream_index[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hD5555555)) 
    \stream_index[2]_i_2 
       (.I0(m_axis_wave_tready),
        .I1(sample_base[3]),
        .I2(sample_base[4]),
        .I3(sample_base[6]),
        .I4(sample_base[5]),
        .O(\stream_index[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF10101010101010)) 
    \stream_index[3]_i_1 
       (.I0(\capture_index[6]_i_3_n_0 ),
        .I1(\stream_index[3]_i_3_n_0 ),
        .I2(frame_valid),
        .I3(m_axis_wave_tready),
        .I4(stream_active_reg_0),
        .I5(stream_active_i_2_n_0),
        .O(\stream_index[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8288AAAAAAAAAAAA)) 
    \stream_index[3]_i_2 
       (.I0(stream_active_reg_0),
        .I1(sample_base[5]),
        .I2(\stream_index[3]_i_4_n_0 ),
        .I3(sample_base[4]),
        .I4(m_axis_wave_tready),
        .I5(stream_active_i_2_n_0),
        .O(\stream_index[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \stream_index[3]_i_3 
       (.I0(capture_index[5]),
        .I1(capture_index[4]),
        .I2(capture_index[6]),
        .I3(stream_active_reg_0),
        .O(\stream_index[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \stream_index[3]_i_4 
       (.I0(sample_base[2]),
        .I1(sample_base[3]),
        .O(\stream_index[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A8AAA8A8A8A8A8A)) 
    \stream_index[4]_i_1 
       (.I0(stream_active_reg_0),
        .I1(sample_base[6]),
        .I2(m_axis_wave_tready),
        .I3(sample_base[5]),
        .I4(\stream_index[3]_i_4_n_0 ),
        .I5(sample_base[4]),
        .O(\stream_index[4]_i_1_n_0 ));
  FDRE \stream_index_reg[0] 
       (.C(clk),
        .CE(\stream_index[3]_i_1_n_0 ),
        .D(\stream_index[0]_i_1_n_0 ),
        .Q(sample_base[2]),
        .R(\capture_index[6]_i_1_n_0 ));
  FDRE \stream_index_reg[1] 
       (.C(clk),
        .CE(\stream_index[3]_i_1_n_0 ),
        .D(\stream_index[1]_i_1_n_0 ),
        .Q(sample_base[3]),
        .R(\capture_index[6]_i_1_n_0 ));
  FDRE \stream_index_reg[2] 
       (.C(clk),
        .CE(\stream_index[3]_i_1_n_0 ),
        .D(\stream_index[2]_i_1_n_0 ),
        .Q(sample_base[4]),
        .R(\capture_index[6]_i_1_n_0 ));
  FDRE \stream_index_reg[3] 
       (.C(clk),
        .CE(\stream_index[3]_i_1_n_0 ),
        .D(\stream_index[3]_i_2_n_0 ),
        .Q(sample_base[5]),
        .R(\capture_index[6]_i_1_n_0 ));
  FDRE \stream_index_reg[4] 
       (.C(clk),
        .CE(\stream_index[3]_i_1_n_0 ),
        .D(\stream_index[4]_i_1_n_0 ),
        .Q(sample_base[6]),
        .R(\capture_index[6]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
