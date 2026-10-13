// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jul 16 20:37:00 2026
// Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Admin/Desktop/ZYNQ_7020/AXI_DMA.srcs/sources_1/bd/System/ip/System_fft_feeder_0_1/System_fft_feeder_0_1_sim_netlist.v
// Design      : System_fft_feeder_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "System_fft_feeder_0_1,fft_feeder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fft_feeder,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module System_fft_feeder_0_1
   (clk,
    rst_n,
    start_processing,
    processing_done,
    bram_rd_addr,
    bram_rd_data,
    rom_rd_addr,
    rom_rd_data,
    m_axis_fft_tdata,
    m_axis_fft_tuser,
    m_axis_fft_tvalid,
    m_axis_fft_tlast,
    m_axis_fft_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_fft, FREQ_HZ 122875816, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input start_processing;
  output processing_done;
  output [6:0]bram_rd_addr;
  input [1023:0]bram_rd_data;
  output [6:0]rom_rd_addr;
  input [15:0]rom_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fft TDATA" *) output [31:0]m_axis_fft_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fft TUSER" *) output [7:0]m_axis_fft_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fft TVALID" *) output m_axis_fft_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fft TLAST" *) output m_axis_fft_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fft TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_fft, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 122875816, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_fft_tready;

  wire \<const0> ;
  wire [6:0]bram_rd_addr;
  wire [1023:0]bram_rd_data;
  wire clk;
  wire [15:0]\^m_axis_fft_tdata ;
  wire m_axis_fft_tlast;
  wire m_axis_fft_tready;
  wire [5:0]\^m_axis_fft_tuser ;
  wire m_axis_fft_tvalid;
  wire processing_done;
  wire rst_n;
  wire start_processing;

  assign m_axis_fft_tdata[31] = \<const0> ;
  assign m_axis_fft_tdata[30] = \<const0> ;
  assign m_axis_fft_tdata[29] = \<const0> ;
  assign m_axis_fft_tdata[28] = \<const0> ;
  assign m_axis_fft_tdata[27] = \<const0> ;
  assign m_axis_fft_tdata[26] = \<const0> ;
  assign m_axis_fft_tdata[25] = \<const0> ;
  assign m_axis_fft_tdata[24] = \<const0> ;
  assign m_axis_fft_tdata[23] = \<const0> ;
  assign m_axis_fft_tdata[22] = \<const0> ;
  assign m_axis_fft_tdata[21] = \<const0> ;
  assign m_axis_fft_tdata[20] = \<const0> ;
  assign m_axis_fft_tdata[19] = \<const0> ;
  assign m_axis_fft_tdata[18] = \<const0> ;
  assign m_axis_fft_tdata[17] = \<const0> ;
  assign m_axis_fft_tdata[16] = \<const0> ;
  assign m_axis_fft_tdata[15:0] = \^m_axis_fft_tdata [15:0];
  assign m_axis_fft_tuser[7] = \<const0> ;
  assign m_axis_fft_tuser[6] = \<const0> ;
  assign m_axis_fft_tuser[5:0] = \^m_axis_fft_tuser [5:0];
  assign rom_rd_addr[6:0] = bram_rd_addr;
  GND GND
       (.G(\<const0> ));
  System_fft_feeder_0_1_fft_feeder inst
       (.Q(bram_rd_addr),
        .bram_rd_data(bram_rd_data),
        .clk(clk),
        .m_axis_fft_tdata(\^m_axis_fft_tdata ),
        .m_axis_fft_tlast(m_axis_fft_tlast),
        .m_axis_fft_tready(m_axis_fft_tready),
        .m_axis_fft_tuser(\^m_axis_fft_tuser ),
        .m_axis_fft_tvalid(m_axis_fft_tvalid),
        .processing_done(processing_done),
        .rst_n(rst_n),
        .start_processing(start_processing));
endmodule

(* ORIG_REF_NAME = "fft_feeder" *) 
module System_fft_feeder_0_1_fft_feeder
   (m_axis_fft_tuser,
    m_axis_fft_tlast,
    Q,
    m_axis_fft_tvalid,
    m_axis_fft_tdata,
    processing_done,
    m_axis_fft_tready,
    clk,
    rst_n,
    start_processing,
    bram_rd_data);
  output [5:0]m_axis_fft_tuser;
  output m_axis_fft_tlast;
  output [6:0]Q;
  output m_axis_fft_tvalid;
  output [15:0]m_axis_fft_tdata;
  output processing_done;
  input m_axis_fft_tready;
  input clk;
  input rst_n;
  input start_processing;
  input [1023:0]bram_rd_data;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [6:0]Q;
  wire [1023:0]bram_rd_data;
  wire [5:1]ch_cnt;
  wire \ch_cnt[0]_i_1_n_0 ;
  wire \ch_cnt[0]_rep_i_1_n_0 ;
  wire \ch_cnt[1]_rep_i_1__0_n_0 ;
  wire \ch_cnt[1]_rep_i_1_n_0 ;
  wire \ch_cnt[5]_i_1_n_0 ;
  wire \ch_cnt[5]_i_3_n_0 ;
  wire \ch_cnt[5]_i_4_n_0 ;
  wire \ch_cnt_reg[0]_rep_n_0 ;
  wire \ch_cnt_reg[1]_rep__0_n_0 ;
  wire \ch_cnt_reg[1]_rep_n_0 ;
  wire \ch_cnt_reg_n_0_[0] ;
  wire \ch_cnt_reg_n_0_[1] ;
  wire \ch_cnt_reg_n_0_[2] ;
  wire \ch_cnt_reg_n_0_[3] ;
  wire \ch_cnt_reg_n_0_[4] ;
  wire \ch_cnt_reg_n_0_[5] ;
  wire clk;
  wire data0;
  wire [15:0]m_axis_fft_tdata;
  wire m_axis_fft_tlast;
  wire m_axis_fft_tready;
  wire [5:0]m_axis_fft_tuser;
  wire m_axis_fft_tvalid;
  wire [0:0]p_2_out;
  wire \pipe_last_reg[1]_srl2___inst_pipe_user_reg_r_0_i_2_n_0 ;
  wire \pipe_last_reg[1]_srl2___inst_pipe_user_reg_r_0_n_0 ;
  wire \pipe_last_reg[2]_inst_pipe_user_reg_r_1_n_0 ;
  wire pipe_last_reg_gate_n_0;
  wire \pipe_user_reg[10]_srl2___inst_pipe_user_reg_r_0_n_0 ;
  wire \pipe_user_reg[11]_srl2___inst_pipe_user_reg_r_0_n_0 ;
  wire \pipe_user_reg[12]_srl2___inst_pipe_user_reg_r_0_n_0 ;
  wire \pipe_user_reg[13]_srl2___inst_pipe_user_reg_r_0_n_0 ;
  wire \pipe_user_reg[16]_inst_pipe_user_reg_r_1_n_0 ;
  wire \pipe_user_reg[17]_inst_pipe_user_reg_r_1_n_0 ;
  wire \pipe_user_reg[18]_inst_pipe_user_reg_r_1_n_0 ;
  wire \pipe_user_reg[19]_inst_pipe_user_reg_r_1_n_0 ;
  wire \pipe_user_reg[20]_inst_pipe_user_reg_r_1_n_0 ;
  wire \pipe_user_reg[21]_inst_pipe_user_reg_r_1_n_0 ;
  wire \pipe_user_reg[8]_srl2___inst_pipe_user_reg_r_0_n_0 ;
  wire \pipe_user_reg[9]_srl2___inst_pipe_user_reg_r_0_n_0 ;
  wire pipe_user_reg_gate__0_n_0;
  wire pipe_user_reg_gate__1_n_0;
  wire pipe_user_reg_gate__2_n_0;
  wire pipe_user_reg_gate__3_n_0;
  wire pipe_user_reg_gate__4_n_0;
  wire pipe_user_reg_gate_n_0;
  wire pipe_user_reg_r_0_n_0;
  wire pipe_user_reg_r_1_n_0;
  wire pipe_user_reg_r_n_0;
  wire [2:0]pipe_valid;
  wire processing_done;
  wire processing_done_i_1_n_0;
  wire \raw_audio_reg[0]_i_14_n_0 ;
  wire \raw_audio_reg[0]_i_15_n_0 ;
  wire \raw_audio_reg[0]_i_16_n_0 ;
  wire \raw_audio_reg[0]_i_17_n_0 ;
  wire \raw_audio_reg[0]_i_18_n_0 ;
  wire \raw_audio_reg[0]_i_19_n_0 ;
  wire \raw_audio_reg[0]_i_1_n_0 ;
  wire \raw_audio_reg[0]_i_20_n_0 ;
  wire \raw_audio_reg[0]_i_21_n_0 ;
  wire \raw_audio_reg[0]_i_22_n_0 ;
  wire \raw_audio_reg[0]_i_23_n_0 ;
  wire \raw_audio_reg[0]_i_24_n_0 ;
  wire \raw_audio_reg[0]_i_25_n_0 ;
  wire \raw_audio_reg[0]_i_26_n_0 ;
  wire \raw_audio_reg[0]_i_27_n_0 ;
  wire \raw_audio_reg[0]_i_28_n_0 ;
  wire \raw_audio_reg[0]_i_29_n_0 ;
  wire \raw_audio_reg[10]_i_14_n_0 ;
  wire \raw_audio_reg[10]_i_15_n_0 ;
  wire \raw_audio_reg[10]_i_16_n_0 ;
  wire \raw_audio_reg[10]_i_17_n_0 ;
  wire \raw_audio_reg[10]_i_18_n_0 ;
  wire \raw_audio_reg[10]_i_19_n_0 ;
  wire \raw_audio_reg[10]_i_1_n_0 ;
  wire \raw_audio_reg[10]_i_20_n_0 ;
  wire \raw_audio_reg[10]_i_21_n_0 ;
  wire \raw_audio_reg[10]_i_22_n_0 ;
  wire \raw_audio_reg[10]_i_23_n_0 ;
  wire \raw_audio_reg[10]_i_24_n_0 ;
  wire \raw_audio_reg[10]_i_25_n_0 ;
  wire \raw_audio_reg[10]_i_26_n_0 ;
  wire \raw_audio_reg[10]_i_27_n_0 ;
  wire \raw_audio_reg[10]_i_28_n_0 ;
  wire \raw_audio_reg[10]_i_29_n_0 ;
  wire \raw_audio_reg[11]_i_14_n_0 ;
  wire \raw_audio_reg[11]_i_15_n_0 ;
  wire \raw_audio_reg[11]_i_16_n_0 ;
  wire \raw_audio_reg[11]_i_17_n_0 ;
  wire \raw_audio_reg[11]_i_18_n_0 ;
  wire \raw_audio_reg[11]_i_19_n_0 ;
  wire \raw_audio_reg[11]_i_1_n_0 ;
  wire \raw_audio_reg[11]_i_20_n_0 ;
  wire \raw_audio_reg[11]_i_21_n_0 ;
  wire \raw_audio_reg[11]_i_22_n_0 ;
  wire \raw_audio_reg[11]_i_23_n_0 ;
  wire \raw_audio_reg[11]_i_24_n_0 ;
  wire \raw_audio_reg[11]_i_25_n_0 ;
  wire \raw_audio_reg[11]_i_26_n_0 ;
  wire \raw_audio_reg[11]_i_27_n_0 ;
  wire \raw_audio_reg[11]_i_28_n_0 ;
  wire \raw_audio_reg[11]_i_29_n_0 ;
  wire \raw_audio_reg[12]_i_14_n_0 ;
  wire \raw_audio_reg[12]_i_15_n_0 ;
  wire \raw_audio_reg[12]_i_16_n_0 ;
  wire \raw_audio_reg[12]_i_17_n_0 ;
  wire \raw_audio_reg[12]_i_18_n_0 ;
  wire \raw_audio_reg[12]_i_19_n_0 ;
  wire \raw_audio_reg[12]_i_1_n_0 ;
  wire \raw_audio_reg[12]_i_20_n_0 ;
  wire \raw_audio_reg[12]_i_21_n_0 ;
  wire \raw_audio_reg[12]_i_22_n_0 ;
  wire \raw_audio_reg[12]_i_23_n_0 ;
  wire \raw_audio_reg[12]_i_24_n_0 ;
  wire \raw_audio_reg[12]_i_25_n_0 ;
  wire \raw_audio_reg[12]_i_26_n_0 ;
  wire \raw_audio_reg[12]_i_27_n_0 ;
  wire \raw_audio_reg[12]_i_28_n_0 ;
  wire \raw_audio_reg[12]_i_29_n_0 ;
  wire \raw_audio_reg[13]_i_14_n_0 ;
  wire \raw_audio_reg[13]_i_15_n_0 ;
  wire \raw_audio_reg[13]_i_16_n_0 ;
  wire \raw_audio_reg[13]_i_17_n_0 ;
  wire \raw_audio_reg[13]_i_18_n_0 ;
  wire \raw_audio_reg[13]_i_19_n_0 ;
  wire \raw_audio_reg[13]_i_1_n_0 ;
  wire \raw_audio_reg[13]_i_20_n_0 ;
  wire \raw_audio_reg[13]_i_21_n_0 ;
  wire \raw_audio_reg[13]_i_22_n_0 ;
  wire \raw_audio_reg[13]_i_23_n_0 ;
  wire \raw_audio_reg[13]_i_24_n_0 ;
  wire \raw_audio_reg[13]_i_25_n_0 ;
  wire \raw_audio_reg[13]_i_26_n_0 ;
  wire \raw_audio_reg[13]_i_27_n_0 ;
  wire \raw_audio_reg[13]_i_28_n_0 ;
  wire \raw_audio_reg[13]_i_29_n_0 ;
  wire \raw_audio_reg[14]_i_14_n_0 ;
  wire \raw_audio_reg[14]_i_15_n_0 ;
  wire \raw_audio_reg[14]_i_16_n_0 ;
  wire \raw_audio_reg[14]_i_17_n_0 ;
  wire \raw_audio_reg[14]_i_18_n_0 ;
  wire \raw_audio_reg[14]_i_19_n_0 ;
  wire \raw_audio_reg[14]_i_1_n_0 ;
  wire \raw_audio_reg[14]_i_20_n_0 ;
  wire \raw_audio_reg[14]_i_21_n_0 ;
  wire \raw_audio_reg[14]_i_22_n_0 ;
  wire \raw_audio_reg[14]_i_23_n_0 ;
  wire \raw_audio_reg[14]_i_24_n_0 ;
  wire \raw_audio_reg[14]_i_25_n_0 ;
  wire \raw_audio_reg[14]_i_26_n_0 ;
  wire \raw_audio_reg[14]_i_27_n_0 ;
  wire \raw_audio_reg[14]_i_28_n_0 ;
  wire \raw_audio_reg[14]_i_29_n_0 ;
  wire \raw_audio_reg[15]_i_14_n_0 ;
  wire \raw_audio_reg[15]_i_15_n_0 ;
  wire \raw_audio_reg[15]_i_16_n_0 ;
  wire \raw_audio_reg[15]_i_17_n_0 ;
  wire \raw_audio_reg[15]_i_18_n_0 ;
  wire \raw_audio_reg[15]_i_19_n_0 ;
  wire \raw_audio_reg[15]_i_1_n_0 ;
  wire \raw_audio_reg[15]_i_20_n_0 ;
  wire \raw_audio_reg[15]_i_21_n_0 ;
  wire \raw_audio_reg[15]_i_22_n_0 ;
  wire \raw_audio_reg[15]_i_23_n_0 ;
  wire \raw_audio_reg[15]_i_24_n_0 ;
  wire \raw_audio_reg[15]_i_25_n_0 ;
  wire \raw_audio_reg[15]_i_26_n_0 ;
  wire \raw_audio_reg[15]_i_27_n_0 ;
  wire \raw_audio_reg[15]_i_28_n_0 ;
  wire \raw_audio_reg[15]_i_29_n_0 ;
  wire \raw_audio_reg[1]_i_14_n_0 ;
  wire \raw_audio_reg[1]_i_15_n_0 ;
  wire \raw_audio_reg[1]_i_16_n_0 ;
  wire \raw_audio_reg[1]_i_17_n_0 ;
  wire \raw_audio_reg[1]_i_18_n_0 ;
  wire \raw_audio_reg[1]_i_19_n_0 ;
  wire \raw_audio_reg[1]_i_1_n_0 ;
  wire \raw_audio_reg[1]_i_20_n_0 ;
  wire \raw_audio_reg[1]_i_21_n_0 ;
  wire \raw_audio_reg[1]_i_22_n_0 ;
  wire \raw_audio_reg[1]_i_23_n_0 ;
  wire \raw_audio_reg[1]_i_24_n_0 ;
  wire \raw_audio_reg[1]_i_25_n_0 ;
  wire \raw_audio_reg[1]_i_26_n_0 ;
  wire \raw_audio_reg[1]_i_27_n_0 ;
  wire \raw_audio_reg[1]_i_28_n_0 ;
  wire \raw_audio_reg[1]_i_29_n_0 ;
  wire \raw_audio_reg[2]_i_14_n_0 ;
  wire \raw_audio_reg[2]_i_15_n_0 ;
  wire \raw_audio_reg[2]_i_16_n_0 ;
  wire \raw_audio_reg[2]_i_17_n_0 ;
  wire \raw_audio_reg[2]_i_18_n_0 ;
  wire \raw_audio_reg[2]_i_19_n_0 ;
  wire \raw_audio_reg[2]_i_1_n_0 ;
  wire \raw_audio_reg[2]_i_20_n_0 ;
  wire \raw_audio_reg[2]_i_21_n_0 ;
  wire \raw_audio_reg[2]_i_22_n_0 ;
  wire \raw_audio_reg[2]_i_23_n_0 ;
  wire \raw_audio_reg[2]_i_24_n_0 ;
  wire \raw_audio_reg[2]_i_25_n_0 ;
  wire \raw_audio_reg[2]_i_26_n_0 ;
  wire \raw_audio_reg[2]_i_27_n_0 ;
  wire \raw_audio_reg[2]_i_28_n_0 ;
  wire \raw_audio_reg[2]_i_29_n_0 ;
  wire \raw_audio_reg[3]_i_14_n_0 ;
  wire \raw_audio_reg[3]_i_15_n_0 ;
  wire \raw_audio_reg[3]_i_16_n_0 ;
  wire \raw_audio_reg[3]_i_17_n_0 ;
  wire \raw_audio_reg[3]_i_18_n_0 ;
  wire \raw_audio_reg[3]_i_19_n_0 ;
  wire \raw_audio_reg[3]_i_1_n_0 ;
  wire \raw_audio_reg[3]_i_20_n_0 ;
  wire \raw_audio_reg[3]_i_21_n_0 ;
  wire \raw_audio_reg[3]_i_22_n_0 ;
  wire \raw_audio_reg[3]_i_23_n_0 ;
  wire \raw_audio_reg[3]_i_24_n_0 ;
  wire \raw_audio_reg[3]_i_25_n_0 ;
  wire \raw_audio_reg[3]_i_26_n_0 ;
  wire \raw_audio_reg[3]_i_27_n_0 ;
  wire \raw_audio_reg[3]_i_28_n_0 ;
  wire \raw_audio_reg[3]_i_29_n_0 ;
  wire \raw_audio_reg[4]_i_14_n_0 ;
  wire \raw_audio_reg[4]_i_15_n_0 ;
  wire \raw_audio_reg[4]_i_16_n_0 ;
  wire \raw_audio_reg[4]_i_17_n_0 ;
  wire \raw_audio_reg[4]_i_18_n_0 ;
  wire \raw_audio_reg[4]_i_19_n_0 ;
  wire \raw_audio_reg[4]_i_1_n_0 ;
  wire \raw_audio_reg[4]_i_20_n_0 ;
  wire \raw_audio_reg[4]_i_21_n_0 ;
  wire \raw_audio_reg[4]_i_22_n_0 ;
  wire \raw_audio_reg[4]_i_23_n_0 ;
  wire \raw_audio_reg[4]_i_24_n_0 ;
  wire \raw_audio_reg[4]_i_25_n_0 ;
  wire \raw_audio_reg[4]_i_26_n_0 ;
  wire \raw_audio_reg[4]_i_27_n_0 ;
  wire \raw_audio_reg[4]_i_28_n_0 ;
  wire \raw_audio_reg[4]_i_29_n_0 ;
  wire \raw_audio_reg[5]_i_14_n_0 ;
  wire \raw_audio_reg[5]_i_15_n_0 ;
  wire \raw_audio_reg[5]_i_16_n_0 ;
  wire \raw_audio_reg[5]_i_17_n_0 ;
  wire \raw_audio_reg[5]_i_18_n_0 ;
  wire \raw_audio_reg[5]_i_19_n_0 ;
  wire \raw_audio_reg[5]_i_1_n_0 ;
  wire \raw_audio_reg[5]_i_20_n_0 ;
  wire \raw_audio_reg[5]_i_21_n_0 ;
  wire \raw_audio_reg[5]_i_22_n_0 ;
  wire \raw_audio_reg[5]_i_23_n_0 ;
  wire \raw_audio_reg[5]_i_24_n_0 ;
  wire \raw_audio_reg[5]_i_25_n_0 ;
  wire \raw_audio_reg[5]_i_26_n_0 ;
  wire \raw_audio_reg[5]_i_27_n_0 ;
  wire \raw_audio_reg[5]_i_28_n_0 ;
  wire \raw_audio_reg[5]_i_29_n_0 ;
  wire \raw_audio_reg[6]_i_14_n_0 ;
  wire \raw_audio_reg[6]_i_15_n_0 ;
  wire \raw_audio_reg[6]_i_16_n_0 ;
  wire \raw_audio_reg[6]_i_17_n_0 ;
  wire \raw_audio_reg[6]_i_18_n_0 ;
  wire \raw_audio_reg[6]_i_19_n_0 ;
  wire \raw_audio_reg[6]_i_1_n_0 ;
  wire \raw_audio_reg[6]_i_20_n_0 ;
  wire \raw_audio_reg[6]_i_21_n_0 ;
  wire \raw_audio_reg[6]_i_22_n_0 ;
  wire \raw_audio_reg[6]_i_23_n_0 ;
  wire \raw_audio_reg[6]_i_24_n_0 ;
  wire \raw_audio_reg[6]_i_25_n_0 ;
  wire \raw_audio_reg[6]_i_26_n_0 ;
  wire \raw_audio_reg[6]_i_27_n_0 ;
  wire \raw_audio_reg[6]_i_28_n_0 ;
  wire \raw_audio_reg[6]_i_29_n_0 ;
  wire \raw_audio_reg[7]_i_14_n_0 ;
  wire \raw_audio_reg[7]_i_15_n_0 ;
  wire \raw_audio_reg[7]_i_16_n_0 ;
  wire \raw_audio_reg[7]_i_17_n_0 ;
  wire \raw_audio_reg[7]_i_18_n_0 ;
  wire \raw_audio_reg[7]_i_19_n_0 ;
  wire \raw_audio_reg[7]_i_1_n_0 ;
  wire \raw_audio_reg[7]_i_20_n_0 ;
  wire \raw_audio_reg[7]_i_21_n_0 ;
  wire \raw_audio_reg[7]_i_22_n_0 ;
  wire \raw_audio_reg[7]_i_23_n_0 ;
  wire \raw_audio_reg[7]_i_24_n_0 ;
  wire \raw_audio_reg[7]_i_25_n_0 ;
  wire \raw_audio_reg[7]_i_26_n_0 ;
  wire \raw_audio_reg[7]_i_27_n_0 ;
  wire \raw_audio_reg[7]_i_28_n_0 ;
  wire \raw_audio_reg[7]_i_29_n_0 ;
  wire \raw_audio_reg[8]_i_14_n_0 ;
  wire \raw_audio_reg[8]_i_15_n_0 ;
  wire \raw_audio_reg[8]_i_16_n_0 ;
  wire \raw_audio_reg[8]_i_17_n_0 ;
  wire \raw_audio_reg[8]_i_18_n_0 ;
  wire \raw_audio_reg[8]_i_19_n_0 ;
  wire \raw_audio_reg[8]_i_1_n_0 ;
  wire \raw_audio_reg[8]_i_20_n_0 ;
  wire \raw_audio_reg[8]_i_21_n_0 ;
  wire \raw_audio_reg[8]_i_22_n_0 ;
  wire \raw_audio_reg[8]_i_23_n_0 ;
  wire \raw_audio_reg[8]_i_24_n_0 ;
  wire \raw_audio_reg[8]_i_25_n_0 ;
  wire \raw_audio_reg[8]_i_26_n_0 ;
  wire \raw_audio_reg[8]_i_27_n_0 ;
  wire \raw_audio_reg[8]_i_28_n_0 ;
  wire \raw_audio_reg[8]_i_29_n_0 ;
  wire \raw_audio_reg[9]_i_14_n_0 ;
  wire \raw_audio_reg[9]_i_15_n_0 ;
  wire \raw_audio_reg[9]_i_16_n_0 ;
  wire \raw_audio_reg[9]_i_17_n_0 ;
  wire \raw_audio_reg[9]_i_18_n_0 ;
  wire \raw_audio_reg[9]_i_19_n_0 ;
  wire \raw_audio_reg[9]_i_1_n_0 ;
  wire \raw_audio_reg[9]_i_20_n_0 ;
  wire \raw_audio_reg[9]_i_21_n_0 ;
  wire \raw_audio_reg[9]_i_22_n_0 ;
  wire \raw_audio_reg[9]_i_23_n_0 ;
  wire \raw_audio_reg[9]_i_24_n_0 ;
  wire \raw_audio_reg[9]_i_25_n_0 ;
  wire \raw_audio_reg[9]_i_26_n_0 ;
  wire \raw_audio_reg[9]_i_27_n_0 ;
  wire \raw_audio_reg[9]_i_28_n_0 ;
  wire \raw_audio_reg[9]_i_29_n_0 ;
  wire \raw_audio_reg_reg[0]_i_10_n_0 ;
  wire \raw_audio_reg_reg[0]_i_11_n_0 ;
  wire \raw_audio_reg_reg[0]_i_12_n_0 ;
  wire \raw_audio_reg_reg[0]_i_13_n_0 ;
  wire \raw_audio_reg_reg[0]_i_2_n_0 ;
  wire \raw_audio_reg_reg[0]_i_3_n_0 ;
  wire \raw_audio_reg_reg[0]_i_4_n_0 ;
  wire \raw_audio_reg_reg[0]_i_5_n_0 ;
  wire \raw_audio_reg_reg[0]_i_6_n_0 ;
  wire \raw_audio_reg_reg[0]_i_7_n_0 ;
  wire \raw_audio_reg_reg[0]_i_8_n_0 ;
  wire \raw_audio_reg_reg[0]_i_9_n_0 ;
  wire \raw_audio_reg_reg[10]_i_10_n_0 ;
  wire \raw_audio_reg_reg[10]_i_11_n_0 ;
  wire \raw_audio_reg_reg[10]_i_12_n_0 ;
  wire \raw_audio_reg_reg[10]_i_13_n_0 ;
  wire \raw_audio_reg_reg[10]_i_2_n_0 ;
  wire \raw_audio_reg_reg[10]_i_3_n_0 ;
  wire \raw_audio_reg_reg[10]_i_4_n_0 ;
  wire \raw_audio_reg_reg[10]_i_5_n_0 ;
  wire \raw_audio_reg_reg[10]_i_6_n_0 ;
  wire \raw_audio_reg_reg[10]_i_7_n_0 ;
  wire \raw_audio_reg_reg[10]_i_8_n_0 ;
  wire \raw_audio_reg_reg[10]_i_9_n_0 ;
  wire \raw_audio_reg_reg[11]_i_10_n_0 ;
  wire \raw_audio_reg_reg[11]_i_11_n_0 ;
  wire \raw_audio_reg_reg[11]_i_12_n_0 ;
  wire \raw_audio_reg_reg[11]_i_13_n_0 ;
  wire \raw_audio_reg_reg[11]_i_2_n_0 ;
  wire \raw_audio_reg_reg[11]_i_3_n_0 ;
  wire \raw_audio_reg_reg[11]_i_4_n_0 ;
  wire \raw_audio_reg_reg[11]_i_5_n_0 ;
  wire \raw_audio_reg_reg[11]_i_6_n_0 ;
  wire \raw_audio_reg_reg[11]_i_7_n_0 ;
  wire \raw_audio_reg_reg[11]_i_8_n_0 ;
  wire \raw_audio_reg_reg[11]_i_9_n_0 ;
  wire \raw_audio_reg_reg[12]_i_10_n_0 ;
  wire \raw_audio_reg_reg[12]_i_11_n_0 ;
  wire \raw_audio_reg_reg[12]_i_12_n_0 ;
  wire \raw_audio_reg_reg[12]_i_13_n_0 ;
  wire \raw_audio_reg_reg[12]_i_2_n_0 ;
  wire \raw_audio_reg_reg[12]_i_3_n_0 ;
  wire \raw_audio_reg_reg[12]_i_4_n_0 ;
  wire \raw_audio_reg_reg[12]_i_5_n_0 ;
  wire \raw_audio_reg_reg[12]_i_6_n_0 ;
  wire \raw_audio_reg_reg[12]_i_7_n_0 ;
  wire \raw_audio_reg_reg[12]_i_8_n_0 ;
  wire \raw_audio_reg_reg[12]_i_9_n_0 ;
  wire \raw_audio_reg_reg[13]_i_10_n_0 ;
  wire \raw_audio_reg_reg[13]_i_11_n_0 ;
  wire \raw_audio_reg_reg[13]_i_12_n_0 ;
  wire \raw_audio_reg_reg[13]_i_13_n_0 ;
  wire \raw_audio_reg_reg[13]_i_2_n_0 ;
  wire \raw_audio_reg_reg[13]_i_3_n_0 ;
  wire \raw_audio_reg_reg[13]_i_4_n_0 ;
  wire \raw_audio_reg_reg[13]_i_5_n_0 ;
  wire \raw_audio_reg_reg[13]_i_6_n_0 ;
  wire \raw_audio_reg_reg[13]_i_7_n_0 ;
  wire \raw_audio_reg_reg[13]_i_8_n_0 ;
  wire \raw_audio_reg_reg[13]_i_9_n_0 ;
  wire \raw_audio_reg_reg[14]_i_10_n_0 ;
  wire \raw_audio_reg_reg[14]_i_11_n_0 ;
  wire \raw_audio_reg_reg[14]_i_12_n_0 ;
  wire \raw_audio_reg_reg[14]_i_13_n_0 ;
  wire \raw_audio_reg_reg[14]_i_2_n_0 ;
  wire \raw_audio_reg_reg[14]_i_3_n_0 ;
  wire \raw_audio_reg_reg[14]_i_4_n_0 ;
  wire \raw_audio_reg_reg[14]_i_5_n_0 ;
  wire \raw_audio_reg_reg[14]_i_6_n_0 ;
  wire \raw_audio_reg_reg[14]_i_7_n_0 ;
  wire \raw_audio_reg_reg[14]_i_8_n_0 ;
  wire \raw_audio_reg_reg[14]_i_9_n_0 ;
  wire \raw_audio_reg_reg[15]_i_10_n_0 ;
  wire \raw_audio_reg_reg[15]_i_11_n_0 ;
  wire \raw_audio_reg_reg[15]_i_12_n_0 ;
  wire \raw_audio_reg_reg[15]_i_13_n_0 ;
  wire \raw_audio_reg_reg[15]_i_2_n_0 ;
  wire \raw_audio_reg_reg[15]_i_3_n_0 ;
  wire \raw_audio_reg_reg[15]_i_4_n_0 ;
  wire \raw_audio_reg_reg[15]_i_5_n_0 ;
  wire \raw_audio_reg_reg[15]_i_6_n_0 ;
  wire \raw_audio_reg_reg[15]_i_7_n_0 ;
  wire \raw_audio_reg_reg[15]_i_8_n_0 ;
  wire \raw_audio_reg_reg[15]_i_9_n_0 ;
  wire \raw_audio_reg_reg[1]_i_10_n_0 ;
  wire \raw_audio_reg_reg[1]_i_11_n_0 ;
  wire \raw_audio_reg_reg[1]_i_12_n_0 ;
  wire \raw_audio_reg_reg[1]_i_13_n_0 ;
  wire \raw_audio_reg_reg[1]_i_2_n_0 ;
  wire \raw_audio_reg_reg[1]_i_3_n_0 ;
  wire \raw_audio_reg_reg[1]_i_4_n_0 ;
  wire \raw_audio_reg_reg[1]_i_5_n_0 ;
  wire \raw_audio_reg_reg[1]_i_6_n_0 ;
  wire \raw_audio_reg_reg[1]_i_7_n_0 ;
  wire \raw_audio_reg_reg[1]_i_8_n_0 ;
  wire \raw_audio_reg_reg[1]_i_9_n_0 ;
  wire \raw_audio_reg_reg[2]_i_10_n_0 ;
  wire \raw_audio_reg_reg[2]_i_11_n_0 ;
  wire \raw_audio_reg_reg[2]_i_12_n_0 ;
  wire \raw_audio_reg_reg[2]_i_13_n_0 ;
  wire \raw_audio_reg_reg[2]_i_2_n_0 ;
  wire \raw_audio_reg_reg[2]_i_3_n_0 ;
  wire \raw_audio_reg_reg[2]_i_4_n_0 ;
  wire \raw_audio_reg_reg[2]_i_5_n_0 ;
  wire \raw_audio_reg_reg[2]_i_6_n_0 ;
  wire \raw_audio_reg_reg[2]_i_7_n_0 ;
  wire \raw_audio_reg_reg[2]_i_8_n_0 ;
  wire \raw_audio_reg_reg[2]_i_9_n_0 ;
  wire \raw_audio_reg_reg[3]_i_10_n_0 ;
  wire \raw_audio_reg_reg[3]_i_11_n_0 ;
  wire \raw_audio_reg_reg[3]_i_12_n_0 ;
  wire \raw_audio_reg_reg[3]_i_13_n_0 ;
  wire \raw_audio_reg_reg[3]_i_2_n_0 ;
  wire \raw_audio_reg_reg[3]_i_3_n_0 ;
  wire \raw_audio_reg_reg[3]_i_4_n_0 ;
  wire \raw_audio_reg_reg[3]_i_5_n_0 ;
  wire \raw_audio_reg_reg[3]_i_6_n_0 ;
  wire \raw_audio_reg_reg[3]_i_7_n_0 ;
  wire \raw_audio_reg_reg[3]_i_8_n_0 ;
  wire \raw_audio_reg_reg[3]_i_9_n_0 ;
  wire \raw_audio_reg_reg[4]_i_10_n_0 ;
  wire \raw_audio_reg_reg[4]_i_11_n_0 ;
  wire \raw_audio_reg_reg[4]_i_12_n_0 ;
  wire \raw_audio_reg_reg[4]_i_13_n_0 ;
  wire \raw_audio_reg_reg[4]_i_2_n_0 ;
  wire \raw_audio_reg_reg[4]_i_3_n_0 ;
  wire \raw_audio_reg_reg[4]_i_4_n_0 ;
  wire \raw_audio_reg_reg[4]_i_5_n_0 ;
  wire \raw_audio_reg_reg[4]_i_6_n_0 ;
  wire \raw_audio_reg_reg[4]_i_7_n_0 ;
  wire \raw_audio_reg_reg[4]_i_8_n_0 ;
  wire \raw_audio_reg_reg[4]_i_9_n_0 ;
  wire \raw_audio_reg_reg[5]_i_10_n_0 ;
  wire \raw_audio_reg_reg[5]_i_11_n_0 ;
  wire \raw_audio_reg_reg[5]_i_12_n_0 ;
  wire \raw_audio_reg_reg[5]_i_13_n_0 ;
  wire \raw_audio_reg_reg[5]_i_2_n_0 ;
  wire \raw_audio_reg_reg[5]_i_3_n_0 ;
  wire \raw_audio_reg_reg[5]_i_4_n_0 ;
  wire \raw_audio_reg_reg[5]_i_5_n_0 ;
  wire \raw_audio_reg_reg[5]_i_6_n_0 ;
  wire \raw_audio_reg_reg[5]_i_7_n_0 ;
  wire \raw_audio_reg_reg[5]_i_8_n_0 ;
  wire \raw_audio_reg_reg[5]_i_9_n_0 ;
  wire \raw_audio_reg_reg[6]_i_10_n_0 ;
  wire \raw_audio_reg_reg[6]_i_11_n_0 ;
  wire \raw_audio_reg_reg[6]_i_12_n_0 ;
  wire \raw_audio_reg_reg[6]_i_13_n_0 ;
  wire \raw_audio_reg_reg[6]_i_2_n_0 ;
  wire \raw_audio_reg_reg[6]_i_3_n_0 ;
  wire \raw_audio_reg_reg[6]_i_4_n_0 ;
  wire \raw_audio_reg_reg[6]_i_5_n_0 ;
  wire \raw_audio_reg_reg[6]_i_6_n_0 ;
  wire \raw_audio_reg_reg[6]_i_7_n_0 ;
  wire \raw_audio_reg_reg[6]_i_8_n_0 ;
  wire \raw_audio_reg_reg[6]_i_9_n_0 ;
  wire \raw_audio_reg_reg[7]_i_10_n_0 ;
  wire \raw_audio_reg_reg[7]_i_11_n_0 ;
  wire \raw_audio_reg_reg[7]_i_12_n_0 ;
  wire \raw_audio_reg_reg[7]_i_13_n_0 ;
  wire \raw_audio_reg_reg[7]_i_2_n_0 ;
  wire \raw_audio_reg_reg[7]_i_3_n_0 ;
  wire \raw_audio_reg_reg[7]_i_4_n_0 ;
  wire \raw_audio_reg_reg[7]_i_5_n_0 ;
  wire \raw_audio_reg_reg[7]_i_6_n_0 ;
  wire \raw_audio_reg_reg[7]_i_7_n_0 ;
  wire \raw_audio_reg_reg[7]_i_8_n_0 ;
  wire \raw_audio_reg_reg[7]_i_9_n_0 ;
  wire \raw_audio_reg_reg[8]_i_10_n_0 ;
  wire \raw_audio_reg_reg[8]_i_11_n_0 ;
  wire \raw_audio_reg_reg[8]_i_12_n_0 ;
  wire \raw_audio_reg_reg[8]_i_13_n_0 ;
  wire \raw_audio_reg_reg[8]_i_2_n_0 ;
  wire \raw_audio_reg_reg[8]_i_3_n_0 ;
  wire \raw_audio_reg_reg[8]_i_4_n_0 ;
  wire \raw_audio_reg_reg[8]_i_5_n_0 ;
  wire \raw_audio_reg_reg[8]_i_6_n_0 ;
  wire \raw_audio_reg_reg[8]_i_7_n_0 ;
  wire \raw_audio_reg_reg[8]_i_8_n_0 ;
  wire \raw_audio_reg_reg[8]_i_9_n_0 ;
  wire \raw_audio_reg_reg[9]_i_10_n_0 ;
  wire \raw_audio_reg_reg[9]_i_11_n_0 ;
  wire \raw_audio_reg_reg[9]_i_12_n_0 ;
  wire \raw_audio_reg_reg[9]_i_13_n_0 ;
  wire \raw_audio_reg_reg[9]_i_2_n_0 ;
  wire \raw_audio_reg_reg[9]_i_3_n_0 ;
  wire \raw_audio_reg_reg[9]_i_4_n_0 ;
  wire \raw_audio_reg_reg[9]_i_5_n_0 ;
  wire \raw_audio_reg_reg[9]_i_6_n_0 ;
  wire \raw_audio_reg_reg[9]_i_7_n_0 ;
  wire \raw_audio_reg_reg[9]_i_8_n_0 ;
  wire \raw_audio_reg_reg[9]_i_9_n_0 ;
  wire rst_n;
  wire start_processing;
  wire state0__3;
  wire [6:0]t_cnt;
  wire \t_cnt[3]_i_2_n_0 ;
  wire \t_cnt[3]_i_3_n_0 ;
  wire \t_cnt[4]_i_2_n_0 ;
  wire \t_cnt[4]_i_3_n_0 ;
  wire \t_cnt[5]_i_2_n_0 ;
  wire \t_cnt[5]_i_3_n_0 ;
  wire \t_cnt[6]_i_1_n_0 ;
  wire \t_cnt[6]_i_2_n_0 ;
  wire \t_cnt[6]_i_4_n_0 ;
  wire \t_cnt[6]_i_5_n_0 ;
  wire \t_cnt[6]_i_6_n_0 ;
  wire \t_cnt[6]_i_7_n_0 ;
  wire \t_cnt[6]_i_8_n_0 ;
  wire \t_cnt[6]_i_9_n_0 ;

  LUT6 #(
    .INIT(64'hCCDDC8C8FFFFFFFF)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(state0__3),
        .I3(start_processing),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(rst_n),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\FSM_onehot_state[0]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(\FSM_onehot_state[2]_i_4_n_0 ),
        .I3(\pipe_last_reg[1]_srl2___inst_pipe_user_reg_r_0_i_2_n_0 ),
        .I4(m_axis_fft_tready),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFA020200000000)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state[1]_i_2_n_0 ),
        .I3(start_processing),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(rst_n),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(m_axis_fft_tvalid),
        .I1(pipe_valid[2]),
        .I2(pipe_valid[0]),
        .I3(pipe_valid[1]),
        .I4(m_axis_fft_tready),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8F800000000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(state0__3),
        .I4(\FSM_onehot_state[2]_i_3_n_0 ),
        .I5(rst_n),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(m_axis_fft_tready),
        .I1(\pipe_last_reg[1]_srl2___inst_pipe_user_reg_r_0_i_2_n_0 ),
        .I2(\FSM_onehot_state[2]_i_4_n_0 ),
        .I3(Q[6]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(start_processing),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(\ch_cnt_reg_n_0_[5] ),
        .I1(\ch_cnt_reg_n_0_[4] ),
        .I2(\ch_cnt_reg[1]_rep__0_n_0 ),
        .I3(\ch_cnt_reg_n_0_[0] ),
        .I4(\ch_cnt_reg_n_0_[3] ),
        .I5(\ch_cnt_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:001,FEED_DATA:010,WAIT_LAST:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,FEED_DATA:010,WAIT_LAST:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,FEED_DATA:010,WAIT_LAST:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ch_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\ch_cnt_reg[0]_rep_n_0 ),
        .O(\ch_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ch_cnt[0]_rep_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\ch_cnt_reg[0]_rep_n_0 ),
        .O(\ch_cnt[0]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \ch_cnt[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\ch_cnt_reg[1]_rep__0_n_0 ),
        .I2(\ch_cnt_reg_n_0_[0] ),
        .O(ch_cnt[1]));
  LUT3 #(
    .INIT(8'h28)) 
    \ch_cnt[1]_rep_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\ch_cnt_reg[1]_rep__0_n_0 ),
        .I2(\ch_cnt_reg_n_0_[0] ),
        .O(\ch_cnt[1]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \ch_cnt[1]_rep_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\ch_cnt_reg[1]_rep__0_n_0 ),
        .I2(\ch_cnt_reg_n_0_[0] ),
        .O(\ch_cnt[1]_rep_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \ch_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\ch_cnt_reg_n_0_[2] ),
        .I2(\ch_cnt_reg[1]_rep__0_n_0 ),
        .I3(\ch_cnt_reg_n_0_[0] ),
        .O(ch_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \ch_cnt[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\ch_cnt_reg_n_0_[3] ),
        .I2(\ch_cnt_reg_n_0_[2] ),
        .I3(\ch_cnt_reg_n_0_[0] ),
        .I4(\ch_cnt_reg[1]_rep__0_n_0 ),
        .O(ch_cnt[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \ch_cnt[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\ch_cnt_reg_n_0_[4] ),
        .I2(\ch_cnt_reg_n_0_[3] ),
        .I3(\ch_cnt_reg[1]_rep__0_n_0 ),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(\ch_cnt_reg_n_0_[2] ),
        .O(ch_cnt[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ch_cnt[5]_i_1 
       (.I0(start_processing),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\ch_cnt[5]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\ch_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888288888888888)) 
    \ch_cnt[5]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\ch_cnt_reg_n_0_[5] ),
        .I2(\ch_cnt_reg_n_0_[4] ),
        .I3(\ch_cnt_reg_n_0_[2] ),
        .I4(\ch_cnt[5]_i_4_n_0 ),
        .I5(\ch_cnt_reg_n_0_[3] ),
        .O(ch_cnt[5]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \ch_cnt[5]_i_3 
       (.I0(m_axis_fft_tready),
        .I1(\pipe_last_reg[1]_srl2___inst_pipe_user_reg_r_0_i_2_n_0 ),
        .I2(data0),
        .I3(Q[6]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\ch_cnt[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ch_cnt[5]_i_4 
       (.I0(\ch_cnt_reg[1]_rep__0_n_0 ),
        .I1(\ch_cnt_reg_n_0_[0] ),
        .O(\ch_cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ch_cnt[5]_i_5 
       (.I0(\ch_cnt_reg_n_0_[0] ),
        .I1(\ch_cnt_reg[1]_rep__0_n_0 ),
        .I2(\ch_cnt_reg_n_0_[2] ),
        .I3(\ch_cnt_reg_n_0_[3] ),
        .I4(\ch_cnt_reg_n_0_[5] ),
        .I5(\ch_cnt_reg_n_0_[4] ),
        .O(data0));
  (* ORIG_CELL_NAME = "ch_cnt_reg[0]" *) 
  FDRE \ch_cnt_reg[0] 
       (.C(clk),
        .CE(\ch_cnt[5]_i_1_n_0 ),
        .D(\ch_cnt[0]_i_1_n_0 ),
        .Q(\ch_cnt_reg_n_0_[0] ),
        .R(\t_cnt[6]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "ch_cnt_reg[0]" *) 
  FDRE \ch_cnt_reg[0]_rep 
       (.C(clk),
        .CE(\ch_cnt[5]_i_1_n_0 ),
        .D(\ch_cnt[0]_rep_i_1_n_0 ),
        .Q(\ch_cnt_reg[0]_rep_n_0 ),
        .R(\t_cnt[6]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "ch_cnt_reg[1]" *) 
  FDRE \ch_cnt_reg[1] 
       (.C(clk),
        .CE(\ch_cnt[5]_i_1_n_0 ),
        .D(ch_cnt[1]),
        .Q(\ch_cnt_reg_n_0_[1] ),
        .R(\t_cnt[6]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "ch_cnt_reg[1]" *) 
  FDRE \ch_cnt_reg[1]_rep 
       (.C(clk),
        .CE(\ch_cnt[5]_i_1_n_0 ),
        .D(\ch_cnt[1]_rep_i_1_n_0 ),
        .Q(\ch_cnt_reg[1]_rep_n_0 ),
        .R(\t_cnt[6]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "ch_cnt_reg[1]" *) 
  FDRE \ch_cnt_reg[1]_rep__0 
       (.C(clk),
        .CE(\ch_cnt[5]_i_1_n_0 ),
        .D(\ch_cnt[1]_rep_i_1__0_n_0 ),
        .Q(\ch_cnt_reg[1]_rep__0_n_0 ),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \ch_cnt_reg[2] 
       (.C(clk),
        .CE(\ch_cnt[5]_i_1_n_0 ),
        .D(ch_cnt[2]),
        .Q(\ch_cnt_reg_n_0_[2] ),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \ch_cnt_reg[3] 
       (.C(clk),
        .CE(\ch_cnt[5]_i_1_n_0 ),
        .D(ch_cnt[3]),
        .Q(\ch_cnt_reg_n_0_[3] ),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \ch_cnt_reg[4] 
       (.C(clk),
        .CE(\ch_cnt[5]_i_1_n_0 ),
        .D(ch_cnt[4]),
        .Q(\ch_cnt_reg_n_0_[4] ),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \ch_cnt_reg[5] 
       (.C(clk),
        .CE(\ch_cnt[5]_i_1_n_0 ),
        .D(ch_cnt[5]),
        .Q(\ch_cnt_reg_n_0_[5] ),
        .R(\t_cnt[6]_i_1_n_0 ));
  (* srl_bus_name = "\inst/pipe_last_reg " *) 
  (* srl_name = "\inst/pipe_last_reg[1]_srl2___inst_pipe_user_reg_r_0 " *) 
  SRL16E \pipe_last_reg[1]_srl2___inst_pipe_user_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(m_axis_fft_tready),
        .CLK(clk),
        .D(p_2_out),
        .Q(\pipe_last_reg[1]_srl2___inst_pipe_user_reg_r_0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \pipe_last_reg[1]_srl2___inst_pipe_user_reg_r_0_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\pipe_last_reg[1]_srl2___inst_pipe_user_reg_r_0_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(p_2_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pipe_last_reg[1]_srl2___inst_pipe_user_reg_r_0_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\pipe_last_reg[1]_srl2___inst_pipe_user_reg_r_0_i_2_n_0 ));
  FDRE \pipe_last_reg[2]_inst_pipe_user_reg_r_1 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\pipe_last_reg[1]_srl2___inst_pipe_user_reg_r_0_n_0 ),
        .Q(\pipe_last_reg[2]_inst_pipe_user_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \pipe_last_reg[3] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(pipe_last_reg_gate_n_0),
        .Q(m_axis_fft_tlast),
        .R(\t_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pipe_last_reg_gate
       (.I0(\pipe_last_reg[2]_inst_pipe_user_reg_r_1_n_0 ),
        .I1(pipe_user_reg_r_1_n_0),
        .O(pipe_last_reg_gate_n_0));
  (* srl_bus_name = "\inst/pipe_user_reg " *) 
  (* srl_name = "\inst/pipe_user_reg[10]_srl2___inst_pipe_user_reg_r_0 " *) 
  SRL16E \pipe_user_reg[10]_srl2___inst_pipe_user_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(m_axis_fft_tready),
        .CLK(clk),
        .D(\ch_cnt_reg_n_0_[2] ),
        .Q(\pipe_user_reg[10]_srl2___inst_pipe_user_reg_r_0_n_0 ));
  (* srl_bus_name = "\inst/pipe_user_reg " *) 
  (* srl_name = "\inst/pipe_user_reg[11]_srl2___inst_pipe_user_reg_r_0 " *) 
  SRL16E \pipe_user_reg[11]_srl2___inst_pipe_user_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(m_axis_fft_tready),
        .CLK(clk),
        .D(\ch_cnt_reg_n_0_[3] ),
        .Q(\pipe_user_reg[11]_srl2___inst_pipe_user_reg_r_0_n_0 ));
  (* srl_bus_name = "\inst/pipe_user_reg " *) 
  (* srl_name = "\inst/pipe_user_reg[12]_srl2___inst_pipe_user_reg_r_0 " *) 
  SRL16E \pipe_user_reg[12]_srl2___inst_pipe_user_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(m_axis_fft_tready),
        .CLK(clk),
        .D(\ch_cnt_reg_n_0_[4] ),
        .Q(\pipe_user_reg[12]_srl2___inst_pipe_user_reg_r_0_n_0 ));
  (* srl_bus_name = "\inst/pipe_user_reg " *) 
  (* srl_name = "\inst/pipe_user_reg[13]_srl2___inst_pipe_user_reg_r_0 " *) 
  SRL16E \pipe_user_reg[13]_srl2___inst_pipe_user_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(m_axis_fft_tready),
        .CLK(clk),
        .D(\ch_cnt_reg_n_0_[5] ),
        .Q(\pipe_user_reg[13]_srl2___inst_pipe_user_reg_r_0_n_0 ));
  FDRE \pipe_user_reg[16]_inst_pipe_user_reg_r_1 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\pipe_user_reg[8]_srl2___inst_pipe_user_reg_r_0_n_0 ),
        .Q(\pipe_user_reg[16]_inst_pipe_user_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \pipe_user_reg[17]_inst_pipe_user_reg_r_1 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\pipe_user_reg[9]_srl2___inst_pipe_user_reg_r_0_n_0 ),
        .Q(\pipe_user_reg[17]_inst_pipe_user_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \pipe_user_reg[18]_inst_pipe_user_reg_r_1 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\pipe_user_reg[10]_srl2___inst_pipe_user_reg_r_0_n_0 ),
        .Q(\pipe_user_reg[18]_inst_pipe_user_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \pipe_user_reg[19]_inst_pipe_user_reg_r_1 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\pipe_user_reg[11]_srl2___inst_pipe_user_reg_r_0_n_0 ),
        .Q(\pipe_user_reg[19]_inst_pipe_user_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \pipe_user_reg[20]_inst_pipe_user_reg_r_1 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\pipe_user_reg[12]_srl2___inst_pipe_user_reg_r_0_n_0 ),
        .Q(\pipe_user_reg[20]_inst_pipe_user_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \pipe_user_reg[21]_inst_pipe_user_reg_r_1 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\pipe_user_reg[13]_srl2___inst_pipe_user_reg_r_0_n_0 ),
        .Q(\pipe_user_reg[21]_inst_pipe_user_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \pipe_user_reg[24] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(pipe_user_reg_gate__4_n_0),
        .Q(m_axis_fft_tuser[0]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \pipe_user_reg[25] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(pipe_user_reg_gate__3_n_0),
        .Q(m_axis_fft_tuser[1]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \pipe_user_reg[26] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(pipe_user_reg_gate__2_n_0),
        .Q(m_axis_fft_tuser[2]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \pipe_user_reg[27] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(pipe_user_reg_gate__1_n_0),
        .Q(m_axis_fft_tuser[3]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \pipe_user_reg[28] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(pipe_user_reg_gate__0_n_0),
        .Q(m_axis_fft_tuser[4]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \pipe_user_reg[29] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(pipe_user_reg_gate_n_0),
        .Q(m_axis_fft_tuser[5]),
        .R(\t_cnt[6]_i_1_n_0 ));
  (* srl_bus_name = "\inst/pipe_user_reg " *) 
  (* srl_name = "\inst/pipe_user_reg[8]_srl2___inst_pipe_user_reg_r_0 " *) 
  SRL16E \pipe_user_reg[8]_srl2___inst_pipe_user_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(m_axis_fft_tready),
        .CLK(clk),
        .D(\ch_cnt_reg[0]_rep_n_0 ),
        .Q(\pipe_user_reg[8]_srl2___inst_pipe_user_reg_r_0_n_0 ));
  (* srl_bus_name = "\inst/pipe_user_reg " *) 
  (* srl_name = "\inst/pipe_user_reg[9]_srl2___inst_pipe_user_reg_r_0 " *) 
  SRL16E \pipe_user_reg[9]_srl2___inst_pipe_user_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(m_axis_fft_tready),
        .CLK(clk),
        .D(\ch_cnt_reg[1]_rep__0_n_0 ),
        .Q(\pipe_user_reg[9]_srl2___inst_pipe_user_reg_r_0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pipe_user_reg_gate
       (.I0(\pipe_user_reg[21]_inst_pipe_user_reg_r_1_n_0 ),
        .I1(pipe_user_reg_r_1_n_0),
        .O(pipe_user_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pipe_user_reg_gate__0
       (.I0(\pipe_user_reg[20]_inst_pipe_user_reg_r_1_n_0 ),
        .I1(pipe_user_reg_r_1_n_0),
        .O(pipe_user_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pipe_user_reg_gate__1
       (.I0(\pipe_user_reg[19]_inst_pipe_user_reg_r_1_n_0 ),
        .I1(pipe_user_reg_r_1_n_0),
        .O(pipe_user_reg_gate__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    pipe_user_reg_gate__2
       (.I0(\pipe_user_reg[18]_inst_pipe_user_reg_r_1_n_0 ),
        .I1(pipe_user_reg_r_1_n_0),
        .O(pipe_user_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pipe_user_reg_gate__3
       (.I0(\pipe_user_reg[17]_inst_pipe_user_reg_r_1_n_0 ),
        .I1(pipe_user_reg_r_1_n_0),
        .O(pipe_user_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pipe_user_reg_gate__4
       (.I0(\pipe_user_reg[16]_inst_pipe_user_reg_r_1_n_0 ),
        .I1(pipe_user_reg_r_1_n_0),
        .O(pipe_user_reg_gate__4_n_0));
  FDRE pipe_user_reg_r
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(1'b1),
        .Q(pipe_user_reg_r_n_0),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE pipe_user_reg_r_0
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(pipe_user_reg_r_n_0),
        .Q(pipe_user_reg_r_0_n_0),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE pipe_user_reg_r_1
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(pipe_user_reg_r_0_n_0),
        .Q(pipe_user_reg_r_1_n_0),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \pipe_valid_reg[0] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(pipe_valid[0]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \pipe_valid_reg[1] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(pipe_valid[0]),
        .Q(pipe_valid[1]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \pipe_valid_reg[2] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(pipe_valid[1]),
        .Q(pipe_valid[2]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \pipe_valid_reg[3] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(pipe_valid[2]),
        .Q(m_axis_fft_tvalid),
        .R(\t_cnt[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    processing_done_i_1
       (.I0(state0__3),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(rst_n),
        .O(processing_done_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    processing_done_i_2
       (.I0(m_axis_fft_tready),
        .I1(pipe_valid[1]),
        .I2(pipe_valid[0]),
        .I3(pipe_valid[2]),
        .I4(m_axis_fft_tvalid),
        .O(state0__3));
  FDRE processing_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(processing_done_i_1_n_0),
        .Q(processing_done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_1 
       (.I0(\raw_audio_reg_reg[0]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[0]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[0]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[0]_i_5_n_0 ),
        .O(\raw_audio_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_14 
       (.I0(bram_rd_data[816]),
        .I1(bram_rd_data[800]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[784]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[768]),
        .O(\raw_audio_reg[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_15 
       (.I0(bram_rd_data[880]),
        .I1(bram_rd_data[864]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[848]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[832]),
        .O(\raw_audio_reg[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_16 
       (.I0(bram_rd_data[944]),
        .I1(bram_rd_data[928]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[912]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[896]),
        .O(\raw_audio_reg[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_17 
       (.I0(bram_rd_data[1008]),
        .I1(bram_rd_data[992]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[976]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[960]),
        .O(\raw_audio_reg[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_18 
       (.I0(bram_rd_data[560]),
        .I1(bram_rd_data[544]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[528]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[512]),
        .O(\raw_audio_reg[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_19 
       (.I0(bram_rd_data[624]),
        .I1(bram_rd_data[608]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[592]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[576]),
        .O(\raw_audio_reg[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_20 
       (.I0(bram_rd_data[688]),
        .I1(bram_rd_data[672]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[656]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[640]),
        .O(\raw_audio_reg[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_21 
       (.I0(bram_rd_data[752]),
        .I1(bram_rd_data[736]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[720]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[704]),
        .O(\raw_audio_reg[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_22 
       (.I0(bram_rd_data[304]),
        .I1(bram_rd_data[288]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[272]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[256]),
        .O(\raw_audio_reg[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_23 
       (.I0(bram_rd_data[368]),
        .I1(bram_rd_data[352]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[336]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[320]),
        .O(\raw_audio_reg[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_24 
       (.I0(bram_rd_data[432]),
        .I1(bram_rd_data[416]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[400]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[384]),
        .O(\raw_audio_reg[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_25 
       (.I0(bram_rd_data[496]),
        .I1(bram_rd_data[480]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[464]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[448]),
        .O(\raw_audio_reg[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_26 
       (.I0(bram_rd_data[48]),
        .I1(bram_rd_data[32]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[16]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[0]),
        .O(\raw_audio_reg[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_27 
       (.I0(bram_rd_data[112]),
        .I1(bram_rd_data[96]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[80]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[64]),
        .O(\raw_audio_reg[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_28 
       (.I0(bram_rd_data[176]),
        .I1(bram_rd_data[160]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[144]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[128]),
        .O(\raw_audio_reg[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[0]_i_29 
       (.I0(bram_rd_data[240]),
        .I1(bram_rd_data[224]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[208]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[192]),
        .O(\raw_audio_reg[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_1 
       (.I0(\raw_audio_reg_reg[10]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[10]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[10]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[10]_i_5_n_0 ),
        .O(\raw_audio_reg[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_14 
       (.I0(bram_rd_data[826]),
        .I1(bram_rd_data[810]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[794]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[778]),
        .O(\raw_audio_reg[10]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_15 
       (.I0(bram_rd_data[890]),
        .I1(bram_rd_data[874]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[858]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[842]),
        .O(\raw_audio_reg[10]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_16 
       (.I0(bram_rd_data[954]),
        .I1(bram_rd_data[938]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[922]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[906]),
        .O(\raw_audio_reg[10]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_17 
       (.I0(bram_rd_data[1018]),
        .I1(bram_rd_data[1002]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[986]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[970]),
        .O(\raw_audio_reg[10]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_18 
       (.I0(bram_rd_data[570]),
        .I1(bram_rd_data[554]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[538]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[522]),
        .O(\raw_audio_reg[10]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_19 
       (.I0(bram_rd_data[634]),
        .I1(bram_rd_data[618]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[602]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[586]),
        .O(\raw_audio_reg[10]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_20 
       (.I0(bram_rd_data[698]),
        .I1(bram_rd_data[682]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[666]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[650]),
        .O(\raw_audio_reg[10]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_21 
       (.I0(bram_rd_data[762]),
        .I1(bram_rd_data[746]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[730]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[714]),
        .O(\raw_audio_reg[10]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_22 
       (.I0(bram_rd_data[314]),
        .I1(bram_rd_data[298]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[282]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[266]),
        .O(\raw_audio_reg[10]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_23 
       (.I0(bram_rd_data[378]),
        .I1(bram_rd_data[362]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[346]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[330]),
        .O(\raw_audio_reg[10]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_24 
       (.I0(bram_rd_data[442]),
        .I1(bram_rd_data[426]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[410]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[394]),
        .O(\raw_audio_reg[10]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_25 
       (.I0(bram_rd_data[506]),
        .I1(bram_rd_data[490]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[474]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[458]),
        .O(\raw_audio_reg[10]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_26 
       (.I0(bram_rd_data[58]),
        .I1(bram_rd_data[42]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[26]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[10]),
        .O(\raw_audio_reg[10]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_27 
       (.I0(bram_rd_data[122]),
        .I1(bram_rd_data[106]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[90]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[74]),
        .O(\raw_audio_reg[10]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_28 
       (.I0(bram_rd_data[186]),
        .I1(bram_rd_data[170]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[154]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[138]),
        .O(\raw_audio_reg[10]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[10]_i_29 
       (.I0(bram_rd_data[250]),
        .I1(bram_rd_data[234]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[218]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[202]),
        .O(\raw_audio_reg[10]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_1 
       (.I0(\raw_audio_reg_reg[11]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[11]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[11]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[11]_i_5_n_0 ),
        .O(\raw_audio_reg[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_14 
       (.I0(bram_rd_data[827]),
        .I1(bram_rd_data[811]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[795]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[779]),
        .O(\raw_audio_reg[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_15 
       (.I0(bram_rd_data[891]),
        .I1(bram_rd_data[875]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[859]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[843]),
        .O(\raw_audio_reg[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_16 
       (.I0(bram_rd_data[955]),
        .I1(bram_rd_data[939]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[923]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[907]),
        .O(\raw_audio_reg[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_17 
       (.I0(bram_rd_data[1019]),
        .I1(bram_rd_data[1003]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[987]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[971]),
        .O(\raw_audio_reg[11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_18 
       (.I0(bram_rd_data[571]),
        .I1(bram_rd_data[555]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[539]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[523]),
        .O(\raw_audio_reg[11]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_19 
       (.I0(bram_rd_data[635]),
        .I1(bram_rd_data[619]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[603]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[587]),
        .O(\raw_audio_reg[11]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_20 
       (.I0(bram_rd_data[699]),
        .I1(bram_rd_data[683]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[667]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[651]),
        .O(\raw_audio_reg[11]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_21 
       (.I0(bram_rd_data[763]),
        .I1(bram_rd_data[747]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[731]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[715]),
        .O(\raw_audio_reg[11]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_22 
       (.I0(bram_rd_data[315]),
        .I1(bram_rd_data[299]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[283]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[267]),
        .O(\raw_audio_reg[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_23 
       (.I0(bram_rd_data[379]),
        .I1(bram_rd_data[363]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[347]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[331]),
        .O(\raw_audio_reg[11]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_24 
       (.I0(bram_rd_data[443]),
        .I1(bram_rd_data[427]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[411]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[395]),
        .O(\raw_audio_reg[11]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_25 
       (.I0(bram_rd_data[507]),
        .I1(bram_rd_data[491]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[475]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[459]),
        .O(\raw_audio_reg[11]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_26 
       (.I0(bram_rd_data[59]),
        .I1(bram_rd_data[43]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[27]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[11]),
        .O(\raw_audio_reg[11]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_27 
       (.I0(bram_rd_data[123]),
        .I1(bram_rd_data[107]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[91]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[75]),
        .O(\raw_audio_reg[11]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_28 
       (.I0(bram_rd_data[187]),
        .I1(bram_rd_data[171]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[155]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[139]),
        .O(\raw_audio_reg[11]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[11]_i_29 
       (.I0(bram_rd_data[251]),
        .I1(bram_rd_data[235]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[219]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[203]),
        .O(\raw_audio_reg[11]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_1 
       (.I0(\raw_audio_reg_reg[12]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[12]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[12]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[12]_i_5_n_0 ),
        .O(\raw_audio_reg[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_14 
       (.I0(bram_rd_data[828]),
        .I1(bram_rd_data[812]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[796]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[780]),
        .O(\raw_audio_reg[12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_15 
       (.I0(bram_rd_data[892]),
        .I1(bram_rd_data[876]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[860]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[844]),
        .O(\raw_audio_reg[12]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_16 
       (.I0(bram_rd_data[956]),
        .I1(bram_rd_data[940]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[924]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[908]),
        .O(\raw_audio_reg[12]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_17 
       (.I0(bram_rd_data[1020]),
        .I1(bram_rd_data[1004]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[988]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[972]),
        .O(\raw_audio_reg[12]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_18 
       (.I0(bram_rd_data[572]),
        .I1(bram_rd_data[556]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[540]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[524]),
        .O(\raw_audio_reg[12]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_19 
       (.I0(bram_rd_data[636]),
        .I1(bram_rd_data[620]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[604]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[588]),
        .O(\raw_audio_reg[12]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_20 
       (.I0(bram_rd_data[700]),
        .I1(bram_rd_data[684]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[668]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[652]),
        .O(\raw_audio_reg[12]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_21 
       (.I0(bram_rd_data[764]),
        .I1(bram_rd_data[748]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[732]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[716]),
        .O(\raw_audio_reg[12]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_22 
       (.I0(bram_rd_data[316]),
        .I1(bram_rd_data[300]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[284]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[268]),
        .O(\raw_audio_reg[12]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_23 
       (.I0(bram_rd_data[380]),
        .I1(bram_rd_data[364]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[348]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[332]),
        .O(\raw_audio_reg[12]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_24 
       (.I0(bram_rd_data[444]),
        .I1(bram_rd_data[428]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[412]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[396]),
        .O(\raw_audio_reg[12]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_25 
       (.I0(bram_rd_data[508]),
        .I1(bram_rd_data[492]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[476]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[460]),
        .O(\raw_audio_reg[12]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_26 
       (.I0(bram_rd_data[60]),
        .I1(bram_rd_data[44]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[28]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[12]),
        .O(\raw_audio_reg[12]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_27 
       (.I0(bram_rd_data[124]),
        .I1(bram_rd_data[108]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[92]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[76]),
        .O(\raw_audio_reg[12]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_28 
       (.I0(bram_rd_data[188]),
        .I1(bram_rd_data[172]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[156]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[140]),
        .O(\raw_audio_reg[12]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[12]_i_29 
       (.I0(bram_rd_data[252]),
        .I1(bram_rd_data[236]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[220]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[204]),
        .O(\raw_audio_reg[12]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_1 
       (.I0(\raw_audio_reg_reg[13]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[13]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[13]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[13]_i_5_n_0 ),
        .O(\raw_audio_reg[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_14 
       (.I0(bram_rd_data[829]),
        .I1(bram_rd_data[813]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[797]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[781]),
        .O(\raw_audio_reg[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_15 
       (.I0(bram_rd_data[893]),
        .I1(bram_rd_data[877]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[861]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[845]),
        .O(\raw_audio_reg[13]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_16 
       (.I0(bram_rd_data[957]),
        .I1(bram_rd_data[941]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[925]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[909]),
        .O(\raw_audio_reg[13]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_17 
       (.I0(bram_rd_data[1021]),
        .I1(bram_rd_data[1005]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[989]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[973]),
        .O(\raw_audio_reg[13]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_18 
       (.I0(bram_rd_data[573]),
        .I1(bram_rd_data[557]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[541]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[525]),
        .O(\raw_audio_reg[13]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_19 
       (.I0(bram_rd_data[637]),
        .I1(bram_rd_data[621]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[605]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[589]),
        .O(\raw_audio_reg[13]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_20 
       (.I0(bram_rd_data[701]),
        .I1(bram_rd_data[685]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[669]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[653]),
        .O(\raw_audio_reg[13]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_21 
       (.I0(bram_rd_data[765]),
        .I1(bram_rd_data[749]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[733]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[717]),
        .O(\raw_audio_reg[13]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_22 
       (.I0(bram_rd_data[317]),
        .I1(bram_rd_data[301]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[285]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[269]),
        .O(\raw_audio_reg[13]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_23 
       (.I0(bram_rd_data[381]),
        .I1(bram_rd_data[365]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[349]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[333]),
        .O(\raw_audio_reg[13]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_24 
       (.I0(bram_rd_data[445]),
        .I1(bram_rd_data[429]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[413]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[397]),
        .O(\raw_audio_reg[13]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_25 
       (.I0(bram_rd_data[509]),
        .I1(bram_rd_data[493]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[477]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[461]),
        .O(\raw_audio_reg[13]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_26 
       (.I0(bram_rd_data[61]),
        .I1(bram_rd_data[45]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[29]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[13]),
        .O(\raw_audio_reg[13]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_27 
       (.I0(bram_rd_data[125]),
        .I1(bram_rd_data[109]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[93]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[77]),
        .O(\raw_audio_reg[13]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_28 
       (.I0(bram_rd_data[189]),
        .I1(bram_rd_data[173]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[157]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[141]),
        .O(\raw_audio_reg[13]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[13]_i_29 
       (.I0(bram_rd_data[253]),
        .I1(bram_rd_data[237]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[221]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[205]),
        .O(\raw_audio_reg[13]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_1 
       (.I0(\raw_audio_reg_reg[14]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[14]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[14]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[14]_i_5_n_0 ),
        .O(\raw_audio_reg[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_14 
       (.I0(bram_rd_data[830]),
        .I1(bram_rd_data[814]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[798]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[782]),
        .O(\raw_audio_reg[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_15 
       (.I0(bram_rd_data[894]),
        .I1(bram_rd_data[878]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[862]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[846]),
        .O(\raw_audio_reg[14]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_16 
       (.I0(bram_rd_data[958]),
        .I1(bram_rd_data[942]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[926]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[910]),
        .O(\raw_audio_reg[14]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_17 
       (.I0(bram_rd_data[1022]),
        .I1(bram_rd_data[1006]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[990]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[974]),
        .O(\raw_audio_reg[14]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_18 
       (.I0(bram_rd_data[574]),
        .I1(bram_rd_data[558]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[542]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[526]),
        .O(\raw_audio_reg[14]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_19 
       (.I0(bram_rd_data[638]),
        .I1(bram_rd_data[622]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[606]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[590]),
        .O(\raw_audio_reg[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_20 
       (.I0(bram_rd_data[702]),
        .I1(bram_rd_data[686]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[670]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[654]),
        .O(\raw_audio_reg[14]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_21 
       (.I0(bram_rd_data[766]),
        .I1(bram_rd_data[750]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[734]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[718]),
        .O(\raw_audio_reg[14]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_22 
       (.I0(bram_rd_data[318]),
        .I1(bram_rd_data[302]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[286]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[270]),
        .O(\raw_audio_reg[14]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_23 
       (.I0(bram_rd_data[382]),
        .I1(bram_rd_data[366]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[350]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[334]),
        .O(\raw_audio_reg[14]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_24 
       (.I0(bram_rd_data[446]),
        .I1(bram_rd_data[430]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[414]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[398]),
        .O(\raw_audio_reg[14]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_25 
       (.I0(bram_rd_data[510]),
        .I1(bram_rd_data[494]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[478]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[462]),
        .O(\raw_audio_reg[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_26 
       (.I0(bram_rd_data[62]),
        .I1(bram_rd_data[46]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[30]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[14]),
        .O(\raw_audio_reg[14]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_27 
       (.I0(bram_rd_data[126]),
        .I1(bram_rd_data[110]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[94]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[78]),
        .O(\raw_audio_reg[14]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_28 
       (.I0(bram_rd_data[190]),
        .I1(bram_rd_data[174]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[158]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[142]),
        .O(\raw_audio_reg[14]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[14]_i_29 
       (.I0(bram_rd_data[254]),
        .I1(bram_rd_data[238]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[222]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[206]),
        .O(\raw_audio_reg[14]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_1 
       (.I0(\raw_audio_reg_reg[15]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[15]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[15]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[15]_i_5_n_0 ),
        .O(\raw_audio_reg[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_14 
       (.I0(bram_rd_data[831]),
        .I1(bram_rd_data[815]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[799]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[783]),
        .O(\raw_audio_reg[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_15 
       (.I0(bram_rd_data[895]),
        .I1(bram_rd_data[879]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[863]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[847]),
        .O(\raw_audio_reg[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_16 
       (.I0(bram_rd_data[959]),
        .I1(bram_rd_data[943]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[927]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[911]),
        .O(\raw_audio_reg[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_17 
       (.I0(bram_rd_data[1023]),
        .I1(bram_rd_data[1007]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[991]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[975]),
        .O(\raw_audio_reg[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_18 
       (.I0(bram_rd_data[575]),
        .I1(bram_rd_data[559]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[543]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[527]),
        .O(\raw_audio_reg[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_19 
       (.I0(bram_rd_data[639]),
        .I1(bram_rd_data[623]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[607]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[591]),
        .O(\raw_audio_reg[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_20 
       (.I0(bram_rd_data[703]),
        .I1(bram_rd_data[687]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[671]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[655]),
        .O(\raw_audio_reg[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_21 
       (.I0(bram_rd_data[767]),
        .I1(bram_rd_data[751]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[735]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[719]),
        .O(\raw_audio_reg[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_22 
       (.I0(bram_rd_data[319]),
        .I1(bram_rd_data[303]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[287]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[271]),
        .O(\raw_audio_reg[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_23 
       (.I0(bram_rd_data[383]),
        .I1(bram_rd_data[367]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[351]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[335]),
        .O(\raw_audio_reg[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_24 
       (.I0(bram_rd_data[447]),
        .I1(bram_rd_data[431]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[415]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[399]),
        .O(\raw_audio_reg[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_25 
       (.I0(bram_rd_data[511]),
        .I1(bram_rd_data[495]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[479]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[463]),
        .O(\raw_audio_reg[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_26 
       (.I0(bram_rd_data[63]),
        .I1(bram_rd_data[47]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[31]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[15]),
        .O(\raw_audio_reg[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_27 
       (.I0(bram_rd_data[127]),
        .I1(bram_rd_data[111]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[95]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[79]),
        .O(\raw_audio_reg[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_28 
       (.I0(bram_rd_data[191]),
        .I1(bram_rd_data[175]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[159]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[143]),
        .O(\raw_audio_reg[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[15]_i_29 
       (.I0(bram_rd_data[255]),
        .I1(bram_rd_data[239]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[223]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[207]),
        .O(\raw_audio_reg[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_1 
       (.I0(\raw_audio_reg_reg[1]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[1]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[1]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[1]_i_5_n_0 ),
        .O(\raw_audio_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_14 
       (.I0(bram_rd_data[817]),
        .I1(bram_rd_data[801]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[785]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[769]),
        .O(\raw_audio_reg[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_15 
       (.I0(bram_rd_data[881]),
        .I1(bram_rd_data[865]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[849]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[833]),
        .O(\raw_audio_reg[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_16 
       (.I0(bram_rd_data[945]),
        .I1(bram_rd_data[929]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[913]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[897]),
        .O(\raw_audio_reg[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_17 
       (.I0(bram_rd_data[1009]),
        .I1(bram_rd_data[993]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[977]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[961]),
        .O(\raw_audio_reg[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_18 
       (.I0(bram_rd_data[561]),
        .I1(bram_rd_data[545]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[529]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[513]),
        .O(\raw_audio_reg[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_19 
       (.I0(bram_rd_data[625]),
        .I1(bram_rd_data[609]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[593]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[577]),
        .O(\raw_audio_reg[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_20 
       (.I0(bram_rd_data[689]),
        .I1(bram_rd_data[673]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[657]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[641]),
        .O(\raw_audio_reg[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_21 
       (.I0(bram_rd_data[753]),
        .I1(bram_rd_data[737]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[721]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[705]),
        .O(\raw_audio_reg[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_22 
       (.I0(bram_rd_data[305]),
        .I1(bram_rd_data[289]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[273]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[257]),
        .O(\raw_audio_reg[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_23 
       (.I0(bram_rd_data[369]),
        .I1(bram_rd_data[353]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[337]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[321]),
        .O(\raw_audio_reg[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_24 
       (.I0(bram_rd_data[433]),
        .I1(bram_rd_data[417]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[401]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[385]),
        .O(\raw_audio_reg[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_25 
       (.I0(bram_rd_data[497]),
        .I1(bram_rd_data[481]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[465]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[449]),
        .O(\raw_audio_reg[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_26 
       (.I0(bram_rd_data[49]),
        .I1(bram_rd_data[33]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[17]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[1]),
        .O(\raw_audio_reg[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_27 
       (.I0(bram_rd_data[113]),
        .I1(bram_rd_data[97]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[81]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[65]),
        .O(\raw_audio_reg[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_28 
       (.I0(bram_rd_data[177]),
        .I1(bram_rd_data[161]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[145]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[129]),
        .O(\raw_audio_reg[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[1]_i_29 
       (.I0(bram_rd_data[241]),
        .I1(bram_rd_data[225]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[209]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[193]),
        .O(\raw_audio_reg[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_1 
       (.I0(\raw_audio_reg_reg[2]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[2]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[2]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[2]_i_5_n_0 ),
        .O(\raw_audio_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_14 
       (.I0(bram_rd_data[818]),
        .I1(bram_rd_data[802]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[786]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[770]),
        .O(\raw_audio_reg[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_15 
       (.I0(bram_rd_data[882]),
        .I1(bram_rd_data[866]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[850]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[834]),
        .O(\raw_audio_reg[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_16 
       (.I0(bram_rd_data[946]),
        .I1(bram_rd_data[930]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[914]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[898]),
        .O(\raw_audio_reg[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_17 
       (.I0(bram_rd_data[1010]),
        .I1(bram_rd_data[994]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[978]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[962]),
        .O(\raw_audio_reg[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_18 
       (.I0(bram_rd_data[562]),
        .I1(bram_rd_data[546]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[530]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[514]),
        .O(\raw_audio_reg[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_19 
       (.I0(bram_rd_data[626]),
        .I1(bram_rd_data[610]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[594]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[578]),
        .O(\raw_audio_reg[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_20 
       (.I0(bram_rd_data[690]),
        .I1(bram_rd_data[674]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[658]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[642]),
        .O(\raw_audio_reg[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_21 
       (.I0(bram_rd_data[754]),
        .I1(bram_rd_data[738]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[722]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[706]),
        .O(\raw_audio_reg[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_22 
       (.I0(bram_rd_data[306]),
        .I1(bram_rd_data[290]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[274]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[258]),
        .O(\raw_audio_reg[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_23 
       (.I0(bram_rd_data[370]),
        .I1(bram_rd_data[354]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[338]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[322]),
        .O(\raw_audio_reg[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_24 
       (.I0(bram_rd_data[434]),
        .I1(bram_rd_data[418]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[402]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[386]),
        .O(\raw_audio_reg[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_25 
       (.I0(bram_rd_data[498]),
        .I1(bram_rd_data[482]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[466]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[450]),
        .O(\raw_audio_reg[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_26 
       (.I0(bram_rd_data[50]),
        .I1(bram_rd_data[34]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[18]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[2]),
        .O(\raw_audio_reg[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_27 
       (.I0(bram_rd_data[114]),
        .I1(bram_rd_data[98]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[82]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[66]),
        .O(\raw_audio_reg[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_28 
       (.I0(bram_rd_data[178]),
        .I1(bram_rd_data[162]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[146]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[130]),
        .O(\raw_audio_reg[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[2]_i_29 
       (.I0(bram_rd_data[242]),
        .I1(bram_rd_data[226]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[210]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[194]),
        .O(\raw_audio_reg[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_1 
       (.I0(\raw_audio_reg_reg[3]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[3]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[3]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[3]_i_5_n_0 ),
        .O(\raw_audio_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_14 
       (.I0(bram_rd_data[819]),
        .I1(bram_rd_data[803]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[787]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[771]),
        .O(\raw_audio_reg[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_15 
       (.I0(bram_rd_data[883]),
        .I1(bram_rd_data[867]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[851]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[835]),
        .O(\raw_audio_reg[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_16 
       (.I0(bram_rd_data[947]),
        .I1(bram_rd_data[931]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[915]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[899]),
        .O(\raw_audio_reg[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_17 
       (.I0(bram_rd_data[1011]),
        .I1(bram_rd_data[995]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[979]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[963]),
        .O(\raw_audio_reg[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_18 
       (.I0(bram_rd_data[563]),
        .I1(bram_rd_data[547]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[531]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[515]),
        .O(\raw_audio_reg[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_19 
       (.I0(bram_rd_data[627]),
        .I1(bram_rd_data[611]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[595]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[579]),
        .O(\raw_audio_reg[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_20 
       (.I0(bram_rd_data[691]),
        .I1(bram_rd_data[675]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[659]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[643]),
        .O(\raw_audio_reg[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_21 
       (.I0(bram_rd_data[755]),
        .I1(bram_rd_data[739]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[723]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[707]),
        .O(\raw_audio_reg[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_22 
       (.I0(bram_rd_data[307]),
        .I1(bram_rd_data[291]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[275]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[259]),
        .O(\raw_audio_reg[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_23 
       (.I0(bram_rd_data[371]),
        .I1(bram_rd_data[355]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[339]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[323]),
        .O(\raw_audio_reg[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_24 
       (.I0(bram_rd_data[435]),
        .I1(bram_rd_data[419]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[403]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[387]),
        .O(\raw_audio_reg[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_25 
       (.I0(bram_rd_data[499]),
        .I1(bram_rd_data[483]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[467]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[451]),
        .O(\raw_audio_reg[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_26 
       (.I0(bram_rd_data[51]),
        .I1(bram_rd_data[35]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[19]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[3]),
        .O(\raw_audio_reg[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_27 
       (.I0(bram_rd_data[115]),
        .I1(bram_rd_data[99]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[83]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[67]),
        .O(\raw_audio_reg[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_28 
       (.I0(bram_rd_data[179]),
        .I1(bram_rd_data[163]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[147]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[131]),
        .O(\raw_audio_reg[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[3]_i_29 
       (.I0(bram_rd_data[243]),
        .I1(bram_rd_data[227]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[211]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[195]),
        .O(\raw_audio_reg[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_1 
       (.I0(\raw_audio_reg_reg[4]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[4]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[4]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[4]_i_5_n_0 ),
        .O(\raw_audio_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_14 
       (.I0(bram_rd_data[820]),
        .I1(bram_rd_data[804]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[788]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[772]),
        .O(\raw_audio_reg[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_15 
       (.I0(bram_rd_data[884]),
        .I1(bram_rd_data[868]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[852]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[836]),
        .O(\raw_audio_reg[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_16 
       (.I0(bram_rd_data[948]),
        .I1(bram_rd_data[932]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[916]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[900]),
        .O(\raw_audio_reg[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_17 
       (.I0(bram_rd_data[1012]),
        .I1(bram_rd_data[996]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[980]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[964]),
        .O(\raw_audio_reg[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_18 
       (.I0(bram_rd_data[564]),
        .I1(bram_rd_data[548]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[532]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[516]),
        .O(\raw_audio_reg[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_19 
       (.I0(bram_rd_data[628]),
        .I1(bram_rd_data[612]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[596]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[580]),
        .O(\raw_audio_reg[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_20 
       (.I0(bram_rd_data[692]),
        .I1(bram_rd_data[676]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[660]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[644]),
        .O(\raw_audio_reg[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_21 
       (.I0(bram_rd_data[756]),
        .I1(bram_rd_data[740]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[724]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[708]),
        .O(\raw_audio_reg[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_22 
       (.I0(bram_rd_data[308]),
        .I1(bram_rd_data[292]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[276]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[260]),
        .O(\raw_audio_reg[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_23 
       (.I0(bram_rd_data[372]),
        .I1(bram_rd_data[356]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[340]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[324]),
        .O(\raw_audio_reg[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_24 
       (.I0(bram_rd_data[436]),
        .I1(bram_rd_data[420]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[404]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[388]),
        .O(\raw_audio_reg[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_25 
       (.I0(bram_rd_data[500]),
        .I1(bram_rd_data[484]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[468]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[452]),
        .O(\raw_audio_reg[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_26 
       (.I0(bram_rd_data[52]),
        .I1(bram_rd_data[36]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[20]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[4]),
        .O(\raw_audio_reg[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_27 
       (.I0(bram_rd_data[116]),
        .I1(bram_rd_data[100]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[84]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[68]),
        .O(\raw_audio_reg[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_28 
       (.I0(bram_rd_data[180]),
        .I1(bram_rd_data[164]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[148]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[132]),
        .O(\raw_audio_reg[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[4]_i_29 
       (.I0(bram_rd_data[244]),
        .I1(bram_rd_data[228]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[212]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[196]),
        .O(\raw_audio_reg[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_1 
       (.I0(\raw_audio_reg_reg[5]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[5]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[5]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[5]_i_5_n_0 ),
        .O(\raw_audio_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_14 
       (.I0(bram_rd_data[821]),
        .I1(bram_rd_data[805]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[789]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[773]),
        .O(\raw_audio_reg[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_15 
       (.I0(bram_rd_data[885]),
        .I1(bram_rd_data[869]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[853]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[837]),
        .O(\raw_audio_reg[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_16 
       (.I0(bram_rd_data[949]),
        .I1(bram_rd_data[933]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[917]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[901]),
        .O(\raw_audio_reg[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_17 
       (.I0(bram_rd_data[1013]),
        .I1(bram_rd_data[997]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[981]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[965]),
        .O(\raw_audio_reg[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_18 
       (.I0(bram_rd_data[565]),
        .I1(bram_rd_data[549]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[533]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[517]),
        .O(\raw_audio_reg[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_19 
       (.I0(bram_rd_data[629]),
        .I1(bram_rd_data[613]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[597]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[581]),
        .O(\raw_audio_reg[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_20 
       (.I0(bram_rd_data[693]),
        .I1(bram_rd_data[677]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[661]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[645]),
        .O(\raw_audio_reg[5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_21 
       (.I0(bram_rd_data[757]),
        .I1(bram_rd_data[741]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[725]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[709]),
        .O(\raw_audio_reg[5]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_22 
       (.I0(bram_rd_data[309]),
        .I1(bram_rd_data[293]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[277]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[261]),
        .O(\raw_audio_reg[5]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_23 
       (.I0(bram_rd_data[373]),
        .I1(bram_rd_data[357]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[341]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[325]),
        .O(\raw_audio_reg[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_24 
       (.I0(bram_rd_data[437]),
        .I1(bram_rd_data[421]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[405]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[389]),
        .O(\raw_audio_reg[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_25 
       (.I0(bram_rd_data[501]),
        .I1(bram_rd_data[485]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[469]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[453]),
        .O(\raw_audio_reg[5]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_26 
       (.I0(bram_rd_data[53]),
        .I1(bram_rd_data[37]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[21]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[5]),
        .O(\raw_audio_reg[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_27 
       (.I0(bram_rd_data[117]),
        .I1(bram_rd_data[101]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[85]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[69]),
        .O(\raw_audio_reg[5]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_28 
       (.I0(bram_rd_data[181]),
        .I1(bram_rd_data[165]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[149]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[133]),
        .O(\raw_audio_reg[5]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[5]_i_29 
       (.I0(bram_rd_data[245]),
        .I1(bram_rd_data[229]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[213]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[197]),
        .O(\raw_audio_reg[5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_1 
       (.I0(\raw_audio_reg_reg[6]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[6]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[6]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[6]_i_5_n_0 ),
        .O(\raw_audio_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_14 
       (.I0(bram_rd_data[822]),
        .I1(bram_rd_data[806]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[790]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[774]),
        .O(\raw_audio_reg[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_15 
       (.I0(bram_rd_data[886]),
        .I1(bram_rd_data[870]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[854]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[838]),
        .O(\raw_audio_reg[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_16 
       (.I0(bram_rd_data[950]),
        .I1(bram_rd_data[934]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[918]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[902]),
        .O(\raw_audio_reg[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_17 
       (.I0(bram_rd_data[1014]),
        .I1(bram_rd_data[998]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[982]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[966]),
        .O(\raw_audio_reg[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_18 
       (.I0(bram_rd_data[566]),
        .I1(bram_rd_data[550]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[534]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[518]),
        .O(\raw_audio_reg[6]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_19 
       (.I0(bram_rd_data[630]),
        .I1(bram_rd_data[614]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[598]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[582]),
        .O(\raw_audio_reg[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_20 
       (.I0(bram_rd_data[694]),
        .I1(bram_rd_data[678]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[662]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[646]),
        .O(\raw_audio_reg[6]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_21 
       (.I0(bram_rd_data[758]),
        .I1(bram_rd_data[742]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[726]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[710]),
        .O(\raw_audio_reg[6]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_22 
       (.I0(bram_rd_data[310]),
        .I1(bram_rd_data[294]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[278]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[262]),
        .O(\raw_audio_reg[6]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_23 
       (.I0(bram_rd_data[374]),
        .I1(bram_rd_data[358]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[342]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[326]),
        .O(\raw_audio_reg[6]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_24 
       (.I0(bram_rd_data[438]),
        .I1(bram_rd_data[422]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[406]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[390]),
        .O(\raw_audio_reg[6]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_25 
       (.I0(bram_rd_data[502]),
        .I1(bram_rd_data[486]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[470]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[454]),
        .O(\raw_audio_reg[6]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_26 
       (.I0(bram_rd_data[54]),
        .I1(bram_rd_data[38]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[22]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[6]),
        .O(\raw_audio_reg[6]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_27 
       (.I0(bram_rd_data[118]),
        .I1(bram_rd_data[102]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[86]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[70]),
        .O(\raw_audio_reg[6]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_28 
       (.I0(bram_rd_data[182]),
        .I1(bram_rd_data[166]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[150]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[134]),
        .O(\raw_audio_reg[6]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[6]_i_29 
       (.I0(bram_rd_data[246]),
        .I1(bram_rd_data[230]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[214]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[198]),
        .O(\raw_audio_reg[6]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_1 
       (.I0(\raw_audio_reg_reg[7]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[7]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[7]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[7]_i_5_n_0 ),
        .O(\raw_audio_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_14 
       (.I0(bram_rd_data[823]),
        .I1(bram_rd_data[807]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[791]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[775]),
        .O(\raw_audio_reg[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_15 
       (.I0(bram_rd_data[887]),
        .I1(bram_rd_data[871]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[855]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[839]),
        .O(\raw_audio_reg[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_16 
       (.I0(bram_rd_data[951]),
        .I1(bram_rd_data[935]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[919]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[903]),
        .O(\raw_audio_reg[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_17 
       (.I0(bram_rd_data[1015]),
        .I1(bram_rd_data[999]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[983]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[967]),
        .O(\raw_audio_reg[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_18 
       (.I0(bram_rd_data[567]),
        .I1(bram_rd_data[551]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[535]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[519]),
        .O(\raw_audio_reg[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_19 
       (.I0(bram_rd_data[631]),
        .I1(bram_rd_data[615]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[599]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[583]),
        .O(\raw_audio_reg[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_20 
       (.I0(bram_rd_data[695]),
        .I1(bram_rd_data[679]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[663]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[647]),
        .O(\raw_audio_reg[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_21 
       (.I0(bram_rd_data[759]),
        .I1(bram_rd_data[743]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[727]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[711]),
        .O(\raw_audio_reg[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_22 
       (.I0(bram_rd_data[311]),
        .I1(bram_rd_data[295]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[279]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[263]),
        .O(\raw_audio_reg[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_23 
       (.I0(bram_rd_data[375]),
        .I1(bram_rd_data[359]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[343]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[327]),
        .O(\raw_audio_reg[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_24 
       (.I0(bram_rd_data[439]),
        .I1(bram_rd_data[423]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[407]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[391]),
        .O(\raw_audio_reg[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_25 
       (.I0(bram_rd_data[503]),
        .I1(bram_rd_data[487]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[471]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[455]),
        .O(\raw_audio_reg[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_26 
       (.I0(bram_rd_data[55]),
        .I1(bram_rd_data[39]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[23]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[7]),
        .O(\raw_audio_reg[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_27 
       (.I0(bram_rd_data[119]),
        .I1(bram_rd_data[103]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[87]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[71]),
        .O(\raw_audio_reg[7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_28 
       (.I0(bram_rd_data[183]),
        .I1(bram_rd_data[167]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[151]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[135]),
        .O(\raw_audio_reg[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[7]_i_29 
       (.I0(bram_rd_data[247]),
        .I1(bram_rd_data[231]),
        .I2(\ch_cnt_reg[1]_rep_n_0 ),
        .I3(bram_rd_data[215]),
        .I4(\ch_cnt_reg[0]_rep_n_0 ),
        .I5(bram_rd_data[199]),
        .O(\raw_audio_reg[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_1 
       (.I0(\raw_audio_reg_reg[8]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[8]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[8]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[8]_i_5_n_0 ),
        .O(\raw_audio_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_14 
       (.I0(bram_rd_data[824]),
        .I1(bram_rd_data[808]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[792]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[776]),
        .O(\raw_audio_reg[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_15 
       (.I0(bram_rd_data[888]),
        .I1(bram_rd_data[872]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[856]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[840]),
        .O(\raw_audio_reg[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_16 
       (.I0(bram_rd_data[952]),
        .I1(bram_rd_data[936]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[920]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[904]),
        .O(\raw_audio_reg[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_17 
       (.I0(bram_rd_data[1016]),
        .I1(bram_rd_data[1000]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[984]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[968]),
        .O(\raw_audio_reg[8]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_18 
       (.I0(bram_rd_data[568]),
        .I1(bram_rd_data[552]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[536]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[520]),
        .O(\raw_audio_reg[8]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_19 
       (.I0(bram_rd_data[632]),
        .I1(bram_rd_data[616]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[600]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[584]),
        .O(\raw_audio_reg[8]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_20 
       (.I0(bram_rd_data[696]),
        .I1(bram_rd_data[680]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[664]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[648]),
        .O(\raw_audio_reg[8]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_21 
       (.I0(bram_rd_data[760]),
        .I1(bram_rd_data[744]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[728]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[712]),
        .O(\raw_audio_reg[8]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_22 
       (.I0(bram_rd_data[312]),
        .I1(bram_rd_data[296]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[280]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[264]),
        .O(\raw_audio_reg[8]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_23 
       (.I0(bram_rd_data[376]),
        .I1(bram_rd_data[360]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[344]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[328]),
        .O(\raw_audio_reg[8]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_24 
       (.I0(bram_rd_data[440]),
        .I1(bram_rd_data[424]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[408]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[392]),
        .O(\raw_audio_reg[8]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_25 
       (.I0(bram_rd_data[504]),
        .I1(bram_rd_data[488]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[472]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[456]),
        .O(\raw_audio_reg[8]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_26 
       (.I0(bram_rd_data[56]),
        .I1(bram_rd_data[40]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[24]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[8]),
        .O(\raw_audio_reg[8]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_27 
       (.I0(bram_rd_data[120]),
        .I1(bram_rd_data[104]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[88]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[72]),
        .O(\raw_audio_reg[8]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_28 
       (.I0(bram_rd_data[184]),
        .I1(bram_rd_data[168]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[152]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[136]),
        .O(\raw_audio_reg[8]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[8]_i_29 
       (.I0(bram_rd_data[248]),
        .I1(bram_rd_data[232]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[216]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[200]),
        .O(\raw_audio_reg[8]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_1 
       (.I0(\raw_audio_reg_reg[9]_i_2_n_0 ),
        .I1(\raw_audio_reg_reg[9]_i_3_n_0 ),
        .I2(\ch_cnt_reg_n_0_[5] ),
        .I3(\raw_audio_reg_reg[9]_i_4_n_0 ),
        .I4(\ch_cnt_reg_n_0_[4] ),
        .I5(\raw_audio_reg_reg[9]_i_5_n_0 ),
        .O(\raw_audio_reg[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_14 
       (.I0(bram_rd_data[825]),
        .I1(bram_rd_data[809]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[793]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[777]),
        .O(\raw_audio_reg[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_15 
       (.I0(bram_rd_data[889]),
        .I1(bram_rd_data[873]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[857]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[841]),
        .O(\raw_audio_reg[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_16 
       (.I0(bram_rd_data[953]),
        .I1(bram_rd_data[937]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[921]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[905]),
        .O(\raw_audio_reg[9]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_17 
       (.I0(bram_rd_data[1017]),
        .I1(bram_rd_data[1001]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[985]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[969]),
        .O(\raw_audio_reg[9]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_18 
       (.I0(bram_rd_data[569]),
        .I1(bram_rd_data[553]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[537]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[521]),
        .O(\raw_audio_reg[9]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_19 
       (.I0(bram_rd_data[633]),
        .I1(bram_rd_data[617]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[601]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[585]),
        .O(\raw_audio_reg[9]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_20 
       (.I0(bram_rd_data[697]),
        .I1(bram_rd_data[681]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[665]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[649]),
        .O(\raw_audio_reg[9]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_21 
       (.I0(bram_rd_data[761]),
        .I1(bram_rd_data[745]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[729]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[713]),
        .O(\raw_audio_reg[9]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_22 
       (.I0(bram_rd_data[313]),
        .I1(bram_rd_data[297]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[281]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[265]),
        .O(\raw_audio_reg[9]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_23 
       (.I0(bram_rd_data[377]),
        .I1(bram_rd_data[361]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[345]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[329]),
        .O(\raw_audio_reg[9]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_24 
       (.I0(bram_rd_data[441]),
        .I1(bram_rd_data[425]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[409]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[393]),
        .O(\raw_audio_reg[9]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_25 
       (.I0(bram_rd_data[505]),
        .I1(bram_rd_data[489]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[473]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[457]),
        .O(\raw_audio_reg[9]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_26 
       (.I0(bram_rd_data[57]),
        .I1(bram_rd_data[41]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[25]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[9]),
        .O(\raw_audio_reg[9]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_27 
       (.I0(bram_rd_data[121]),
        .I1(bram_rd_data[105]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[89]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[73]),
        .O(\raw_audio_reg[9]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_28 
       (.I0(bram_rd_data[185]),
        .I1(bram_rd_data[169]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[153]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[137]),
        .O(\raw_audio_reg[9]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \raw_audio_reg[9]_i_29 
       (.I0(bram_rd_data[249]),
        .I1(bram_rd_data[233]),
        .I2(\ch_cnt_reg_n_0_[1] ),
        .I3(bram_rd_data[217]),
        .I4(\ch_cnt_reg_n_0_[0] ),
        .I5(bram_rd_data[201]),
        .O(\raw_audio_reg[9]_i_29_n_0 ));
  FDRE \raw_audio_reg_reg[0] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[0]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[0]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[0]_i_10 
       (.I0(\raw_audio_reg[0]_i_22_n_0 ),
        .I1(\raw_audio_reg[0]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[0]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[0]_i_11 
       (.I0(\raw_audio_reg[0]_i_24_n_0 ),
        .I1(\raw_audio_reg[0]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[0]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[0]_i_12 
       (.I0(\raw_audio_reg[0]_i_26_n_0 ),
        .I1(\raw_audio_reg[0]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[0]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[0]_i_13 
       (.I0(\raw_audio_reg[0]_i_28_n_0 ),
        .I1(\raw_audio_reg[0]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[0]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[0]_i_2 
       (.I0(\raw_audio_reg_reg[0]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[0]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[0]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[0]_i_3 
       (.I0(\raw_audio_reg_reg[0]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[0]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[0]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[0]_i_4 
       (.I0(\raw_audio_reg_reg[0]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[0]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[0]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[0]_i_5 
       (.I0(\raw_audio_reg_reg[0]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[0]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[0]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[0]_i_6 
       (.I0(\raw_audio_reg[0]_i_14_n_0 ),
        .I1(\raw_audio_reg[0]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[0]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[0]_i_7 
       (.I0(\raw_audio_reg[0]_i_16_n_0 ),
        .I1(\raw_audio_reg[0]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[0]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[0]_i_8 
       (.I0(\raw_audio_reg[0]_i_18_n_0 ),
        .I1(\raw_audio_reg[0]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[0]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[0]_i_9 
       (.I0(\raw_audio_reg[0]_i_20_n_0 ),
        .I1(\raw_audio_reg[0]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[0]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[10] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[10]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[10]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[10]_i_10 
       (.I0(\raw_audio_reg[10]_i_22_n_0 ),
        .I1(\raw_audio_reg[10]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[10]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[10]_i_11 
       (.I0(\raw_audio_reg[10]_i_24_n_0 ),
        .I1(\raw_audio_reg[10]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[10]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[10]_i_12 
       (.I0(\raw_audio_reg[10]_i_26_n_0 ),
        .I1(\raw_audio_reg[10]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[10]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[10]_i_13 
       (.I0(\raw_audio_reg[10]_i_28_n_0 ),
        .I1(\raw_audio_reg[10]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[10]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[10]_i_2 
       (.I0(\raw_audio_reg_reg[10]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[10]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[10]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[10]_i_3 
       (.I0(\raw_audio_reg_reg[10]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[10]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[10]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[10]_i_4 
       (.I0(\raw_audio_reg_reg[10]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[10]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[10]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[10]_i_5 
       (.I0(\raw_audio_reg_reg[10]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[10]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[10]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[10]_i_6 
       (.I0(\raw_audio_reg[10]_i_14_n_0 ),
        .I1(\raw_audio_reg[10]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[10]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[10]_i_7 
       (.I0(\raw_audio_reg[10]_i_16_n_0 ),
        .I1(\raw_audio_reg[10]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[10]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[10]_i_8 
       (.I0(\raw_audio_reg[10]_i_18_n_0 ),
        .I1(\raw_audio_reg[10]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[10]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[10]_i_9 
       (.I0(\raw_audio_reg[10]_i_20_n_0 ),
        .I1(\raw_audio_reg[10]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[10]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[11] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[11]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[11]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[11]_i_10 
       (.I0(\raw_audio_reg[11]_i_22_n_0 ),
        .I1(\raw_audio_reg[11]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[11]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[11]_i_11 
       (.I0(\raw_audio_reg[11]_i_24_n_0 ),
        .I1(\raw_audio_reg[11]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[11]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[11]_i_12 
       (.I0(\raw_audio_reg[11]_i_26_n_0 ),
        .I1(\raw_audio_reg[11]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[11]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[11]_i_13 
       (.I0(\raw_audio_reg[11]_i_28_n_0 ),
        .I1(\raw_audio_reg[11]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[11]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[11]_i_2 
       (.I0(\raw_audio_reg_reg[11]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[11]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[11]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[11]_i_3 
       (.I0(\raw_audio_reg_reg[11]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[11]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[11]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[11]_i_4 
       (.I0(\raw_audio_reg_reg[11]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[11]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[11]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[11]_i_5 
       (.I0(\raw_audio_reg_reg[11]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[11]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[11]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[11]_i_6 
       (.I0(\raw_audio_reg[11]_i_14_n_0 ),
        .I1(\raw_audio_reg[11]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[11]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[11]_i_7 
       (.I0(\raw_audio_reg[11]_i_16_n_0 ),
        .I1(\raw_audio_reg[11]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[11]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[11]_i_8 
       (.I0(\raw_audio_reg[11]_i_18_n_0 ),
        .I1(\raw_audio_reg[11]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[11]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[11]_i_9 
       (.I0(\raw_audio_reg[11]_i_20_n_0 ),
        .I1(\raw_audio_reg[11]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[11]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[12] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[12]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[12]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[12]_i_10 
       (.I0(\raw_audio_reg[12]_i_22_n_0 ),
        .I1(\raw_audio_reg[12]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[12]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[12]_i_11 
       (.I0(\raw_audio_reg[12]_i_24_n_0 ),
        .I1(\raw_audio_reg[12]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[12]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[12]_i_12 
       (.I0(\raw_audio_reg[12]_i_26_n_0 ),
        .I1(\raw_audio_reg[12]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[12]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[12]_i_13 
       (.I0(\raw_audio_reg[12]_i_28_n_0 ),
        .I1(\raw_audio_reg[12]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[12]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[12]_i_2 
       (.I0(\raw_audio_reg_reg[12]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[12]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[12]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[12]_i_3 
       (.I0(\raw_audio_reg_reg[12]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[12]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[12]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[12]_i_4 
       (.I0(\raw_audio_reg_reg[12]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[12]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[12]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[12]_i_5 
       (.I0(\raw_audio_reg_reg[12]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[12]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[12]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[12]_i_6 
       (.I0(\raw_audio_reg[12]_i_14_n_0 ),
        .I1(\raw_audio_reg[12]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[12]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[12]_i_7 
       (.I0(\raw_audio_reg[12]_i_16_n_0 ),
        .I1(\raw_audio_reg[12]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[12]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[12]_i_8 
       (.I0(\raw_audio_reg[12]_i_18_n_0 ),
        .I1(\raw_audio_reg[12]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[12]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[12]_i_9 
       (.I0(\raw_audio_reg[12]_i_20_n_0 ),
        .I1(\raw_audio_reg[12]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[12]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[13] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[13]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[13]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[13]_i_10 
       (.I0(\raw_audio_reg[13]_i_22_n_0 ),
        .I1(\raw_audio_reg[13]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[13]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[13]_i_11 
       (.I0(\raw_audio_reg[13]_i_24_n_0 ),
        .I1(\raw_audio_reg[13]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[13]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[13]_i_12 
       (.I0(\raw_audio_reg[13]_i_26_n_0 ),
        .I1(\raw_audio_reg[13]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[13]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[13]_i_13 
       (.I0(\raw_audio_reg[13]_i_28_n_0 ),
        .I1(\raw_audio_reg[13]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[13]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[13]_i_2 
       (.I0(\raw_audio_reg_reg[13]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[13]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[13]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[13]_i_3 
       (.I0(\raw_audio_reg_reg[13]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[13]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[13]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[13]_i_4 
       (.I0(\raw_audio_reg_reg[13]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[13]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[13]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[13]_i_5 
       (.I0(\raw_audio_reg_reg[13]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[13]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[13]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[13]_i_6 
       (.I0(\raw_audio_reg[13]_i_14_n_0 ),
        .I1(\raw_audio_reg[13]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[13]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[13]_i_7 
       (.I0(\raw_audio_reg[13]_i_16_n_0 ),
        .I1(\raw_audio_reg[13]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[13]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[13]_i_8 
       (.I0(\raw_audio_reg[13]_i_18_n_0 ),
        .I1(\raw_audio_reg[13]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[13]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[13]_i_9 
       (.I0(\raw_audio_reg[13]_i_20_n_0 ),
        .I1(\raw_audio_reg[13]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[13]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[14] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[14]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[14]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[14]_i_10 
       (.I0(\raw_audio_reg[14]_i_22_n_0 ),
        .I1(\raw_audio_reg[14]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[14]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[14]_i_11 
       (.I0(\raw_audio_reg[14]_i_24_n_0 ),
        .I1(\raw_audio_reg[14]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[14]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[14]_i_12 
       (.I0(\raw_audio_reg[14]_i_26_n_0 ),
        .I1(\raw_audio_reg[14]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[14]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[14]_i_13 
       (.I0(\raw_audio_reg[14]_i_28_n_0 ),
        .I1(\raw_audio_reg[14]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[14]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[14]_i_2 
       (.I0(\raw_audio_reg_reg[14]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[14]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[14]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[14]_i_3 
       (.I0(\raw_audio_reg_reg[14]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[14]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[14]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[14]_i_4 
       (.I0(\raw_audio_reg_reg[14]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[14]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[14]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[14]_i_5 
       (.I0(\raw_audio_reg_reg[14]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[14]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[14]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[14]_i_6 
       (.I0(\raw_audio_reg[14]_i_14_n_0 ),
        .I1(\raw_audio_reg[14]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[14]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[14]_i_7 
       (.I0(\raw_audio_reg[14]_i_16_n_0 ),
        .I1(\raw_audio_reg[14]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[14]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[14]_i_8 
       (.I0(\raw_audio_reg[14]_i_18_n_0 ),
        .I1(\raw_audio_reg[14]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[14]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[14]_i_9 
       (.I0(\raw_audio_reg[14]_i_20_n_0 ),
        .I1(\raw_audio_reg[14]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[14]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[15] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[15]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[15]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[15]_i_10 
       (.I0(\raw_audio_reg[15]_i_22_n_0 ),
        .I1(\raw_audio_reg[15]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[15]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[15]_i_11 
       (.I0(\raw_audio_reg[15]_i_24_n_0 ),
        .I1(\raw_audio_reg[15]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[15]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[15]_i_12 
       (.I0(\raw_audio_reg[15]_i_26_n_0 ),
        .I1(\raw_audio_reg[15]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[15]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[15]_i_13 
       (.I0(\raw_audio_reg[15]_i_28_n_0 ),
        .I1(\raw_audio_reg[15]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[15]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[15]_i_2 
       (.I0(\raw_audio_reg_reg[15]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[15]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[15]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[15]_i_3 
       (.I0(\raw_audio_reg_reg[15]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[15]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[15]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[15]_i_4 
       (.I0(\raw_audio_reg_reg[15]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[15]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[15]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[15]_i_5 
       (.I0(\raw_audio_reg_reg[15]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[15]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[15]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[15]_i_6 
       (.I0(\raw_audio_reg[15]_i_14_n_0 ),
        .I1(\raw_audio_reg[15]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[15]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[15]_i_7 
       (.I0(\raw_audio_reg[15]_i_16_n_0 ),
        .I1(\raw_audio_reg[15]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[15]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[15]_i_8 
       (.I0(\raw_audio_reg[15]_i_18_n_0 ),
        .I1(\raw_audio_reg[15]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[15]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[15]_i_9 
       (.I0(\raw_audio_reg[15]_i_20_n_0 ),
        .I1(\raw_audio_reg[15]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[15]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[1] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[1]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[1]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[1]_i_10 
       (.I0(\raw_audio_reg[1]_i_22_n_0 ),
        .I1(\raw_audio_reg[1]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[1]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[1]_i_11 
       (.I0(\raw_audio_reg[1]_i_24_n_0 ),
        .I1(\raw_audio_reg[1]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[1]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[1]_i_12 
       (.I0(\raw_audio_reg[1]_i_26_n_0 ),
        .I1(\raw_audio_reg[1]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[1]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[1]_i_13 
       (.I0(\raw_audio_reg[1]_i_28_n_0 ),
        .I1(\raw_audio_reg[1]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[1]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[1]_i_2 
       (.I0(\raw_audio_reg_reg[1]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[1]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[1]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[1]_i_3 
       (.I0(\raw_audio_reg_reg[1]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[1]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[1]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[1]_i_4 
       (.I0(\raw_audio_reg_reg[1]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[1]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[1]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[1]_i_5 
       (.I0(\raw_audio_reg_reg[1]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[1]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[1]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[1]_i_6 
       (.I0(\raw_audio_reg[1]_i_14_n_0 ),
        .I1(\raw_audio_reg[1]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[1]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[1]_i_7 
       (.I0(\raw_audio_reg[1]_i_16_n_0 ),
        .I1(\raw_audio_reg[1]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[1]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[1]_i_8 
       (.I0(\raw_audio_reg[1]_i_18_n_0 ),
        .I1(\raw_audio_reg[1]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[1]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[1]_i_9 
       (.I0(\raw_audio_reg[1]_i_20_n_0 ),
        .I1(\raw_audio_reg[1]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[1]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[2] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[2]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[2]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[2]_i_10 
       (.I0(\raw_audio_reg[2]_i_22_n_0 ),
        .I1(\raw_audio_reg[2]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[2]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[2]_i_11 
       (.I0(\raw_audio_reg[2]_i_24_n_0 ),
        .I1(\raw_audio_reg[2]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[2]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[2]_i_12 
       (.I0(\raw_audio_reg[2]_i_26_n_0 ),
        .I1(\raw_audio_reg[2]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[2]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[2]_i_13 
       (.I0(\raw_audio_reg[2]_i_28_n_0 ),
        .I1(\raw_audio_reg[2]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[2]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[2]_i_2 
       (.I0(\raw_audio_reg_reg[2]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[2]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[2]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[2]_i_3 
       (.I0(\raw_audio_reg_reg[2]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[2]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[2]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[2]_i_4 
       (.I0(\raw_audio_reg_reg[2]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[2]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[2]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[2]_i_5 
       (.I0(\raw_audio_reg_reg[2]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[2]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[2]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[2]_i_6 
       (.I0(\raw_audio_reg[2]_i_14_n_0 ),
        .I1(\raw_audio_reg[2]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[2]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[2]_i_7 
       (.I0(\raw_audio_reg[2]_i_16_n_0 ),
        .I1(\raw_audio_reg[2]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[2]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[2]_i_8 
       (.I0(\raw_audio_reg[2]_i_18_n_0 ),
        .I1(\raw_audio_reg[2]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[2]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[2]_i_9 
       (.I0(\raw_audio_reg[2]_i_20_n_0 ),
        .I1(\raw_audio_reg[2]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[2]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[3] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[3]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[3]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[3]_i_10 
       (.I0(\raw_audio_reg[3]_i_22_n_0 ),
        .I1(\raw_audio_reg[3]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[3]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[3]_i_11 
       (.I0(\raw_audio_reg[3]_i_24_n_0 ),
        .I1(\raw_audio_reg[3]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[3]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[3]_i_12 
       (.I0(\raw_audio_reg[3]_i_26_n_0 ),
        .I1(\raw_audio_reg[3]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[3]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[3]_i_13 
       (.I0(\raw_audio_reg[3]_i_28_n_0 ),
        .I1(\raw_audio_reg[3]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[3]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[3]_i_2 
       (.I0(\raw_audio_reg_reg[3]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[3]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[3]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[3]_i_3 
       (.I0(\raw_audio_reg_reg[3]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[3]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[3]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[3]_i_4 
       (.I0(\raw_audio_reg_reg[3]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[3]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[3]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[3]_i_5 
       (.I0(\raw_audio_reg_reg[3]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[3]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[3]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[3]_i_6 
       (.I0(\raw_audio_reg[3]_i_14_n_0 ),
        .I1(\raw_audio_reg[3]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[3]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[3]_i_7 
       (.I0(\raw_audio_reg[3]_i_16_n_0 ),
        .I1(\raw_audio_reg[3]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[3]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[3]_i_8 
       (.I0(\raw_audio_reg[3]_i_18_n_0 ),
        .I1(\raw_audio_reg[3]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[3]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[3]_i_9 
       (.I0(\raw_audio_reg[3]_i_20_n_0 ),
        .I1(\raw_audio_reg[3]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[3]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[4] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[4]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[4]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[4]_i_10 
       (.I0(\raw_audio_reg[4]_i_22_n_0 ),
        .I1(\raw_audio_reg[4]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[4]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[4]_i_11 
       (.I0(\raw_audio_reg[4]_i_24_n_0 ),
        .I1(\raw_audio_reg[4]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[4]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[4]_i_12 
       (.I0(\raw_audio_reg[4]_i_26_n_0 ),
        .I1(\raw_audio_reg[4]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[4]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[4]_i_13 
       (.I0(\raw_audio_reg[4]_i_28_n_0 ),
        .I1(\raw_audio_reg[4]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[4]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[4]_i_2 
       (.I0(\raw_audio_reg_reg[4]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[4]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[4]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[4]_i_3 
       (.I0(\raw_audio_reg_reg[4]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[4]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[4]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[4]_i_4 
       (.I0(\raw_audio_reg_reg[4]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[4]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[4]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[4]_i_5 
       (.I0(\raw_audio_reg_reg[4]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[4]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[4]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[4]_i_6 
       (.I0(\raw_audio_reg[4]_i_14_n_0 ),
        .I1(\raw_audio_reg[4]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[4]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[4]_i_7 
       (.I0(\raw_audio_reg[4]_i_16_n_0 ),
        .I1(\raw_audio_reg[4]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[4]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[4]_i_8 
       (.I0(\raw_audio_reg[4]_i_18_n_0 ),
        .I1(\raw_audio_reg[4]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[4]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[4]_i_9 
       (.I0(\raw_audio_reg[4]_i_20_n_0 ),
        .I1(\raw_audio_reg[4]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[4]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[5] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[5]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[5]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[5]_i_10 
       (.I0(\raw_audio_reg[5]_i_22_n_0 ),
        .I1(\raw_audio_reg[5]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[5]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[5]_i_11 
       (.I0(\raw_audio_reg[5]_i_24_n_0 ),
        .I1(\raw_audio_reg[5]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[5]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[5]_i_12 
       (.I0(\raw_audio_reg[5]_i_26_n_0 ),
        .I1(\raw_audio_reg[5]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[5]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[5]_i_13 
       (.I0(\raw_audio_reg[5]_i_28_n_0 ),
        .I1(\raw_audio_reg[5]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[5]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[5]_i_2 
       (.I0(\raw_audio_reg_reg[5]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[5]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[5]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[5]_i_3 
       (.I0(\raw_audio_reg_reg[5]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[5]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[5]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[5]_i_4 
       (.I0(\raw_audio_reg_reg[5]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[5]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[5]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[5]_i_5 
       (.I0(\raw_audio_reg_reg[5]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[5]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[5]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[5]_i_6 
       (.I0(\raw_audio_reg[5]_i_14_n_0 ),
        .I1(\raw_audio_reg[5]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[5]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[5]_i_7 
       (.I0(\raw_audio_reg[5]_i_16_n_0 ),
        .I1(\raw_audio_reg[5]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[5]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[5]_i_8 
       (.I0(\raw_audio_reg[5]_i_18_n_0 ),
        .I1(\raw_audio_reg[5]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[5]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[5]_i_9 
       (.I0(\raw_audio_reg[5]_i_20_n_0 ),
        .I1(\raw_audio_reg[5]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[5]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[6] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[6]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[6]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[6]_i_10 
       (.I0(\raw_audio_reg[6]_i_22_n_0 ),
        .I1(\raw_audio_reg[6]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[6]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[6]_i_11 
       (.I0(\raw_audio_reg[6]_i_24_n_0 ),
        .I1(\raw_audio_reg[6]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[6]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[6]_i_12 
       (.I0(\raw_audio_reg[6]_i_26_n_0 ),
        .I1(\raw_audio_reg[6]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[6]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[6]_i_13 
       (.I0(\raw_audio_reg[6]_i_28_n_0 ),
        .I1(\raw_audio_reg[6]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[6]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[6]_i_2 
       (.I0(\raw_audio_reg_reg[6]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[6]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[6]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[6]_i_3 
       (.I0(\raw_audio_reg_reg[6]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[6]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[6]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[6]_i_4 
       (.I0(\raw_audio_reg_reg[6]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[6]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[6]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[6]_i_5 
       (.I0(\raw_audio_reg_reg[6]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[6]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[6]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[6]_i_6 
       (.I0(\raw_audio_reg[6]_i_14_n_0 ),
        .I1(\raw_audio_reg[6]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[6]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[6]_i_7 
       (.I0(\raw_audio_reg[6]_i_16_n_0 ),
        .I1(\raw_audio_reg[6]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[6]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[6]_i_8 
       (.I0(\raw_audio_reg[6]_i_18_n_0 ),
        .I1(\raw_audio_reg[6]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[6]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[6]_i_9 
       (.I0(\raw_audio_reg[6]_i_20_n_0 ),
        .I1(\raw_audio_reg[6]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[6]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[7] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[7]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[7]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[7]_i_10 
       (.I0(\raw_audio_reg[7]_i_22_n_0 ),
        .I1(\raw_audio_reg[7]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[7]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[7]_i_11 
       (.I0(\raw_audio_reg[7]_i_24_n_0 ),
        .I1(\raw_audio_reg[7]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[7]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[7]_i_12 
       (.I0(\raw_audio_reg[7]_i_26_n_0 ),
        .I1(\raw_audio_reg[7]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[7]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[7]_i_13 
       (.I0(\raw_audio_reg[7]_i_28_n_0 ),
        .I1(\raw_audio_reg[7]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[7]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[7]_i_2 
       (.I0(\raw_audio_reg_reg[7]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[7]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[7]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[7]_i_3 
       (.I0(\raw_audio_reg_reg[7]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[7]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[7]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[7]_i_4 
       (.I0(\raw_audio_reg_reg[7]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[7]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[7]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[7]_i_5 
       (.I0(\raw_audio_reg_reg[7]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[7]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[7]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[7]_i_6 
       (.I0(\raw_audio_reg[7]_i_14_n_0 ),
        .I1(\raw_audio_reg[7]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[7]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[7]_i_7 
       (.I0(\raw_audio_reg[7]_i_16_n_0 ),
        .I1(\raw_audio_reg[7]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[7]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[7]_i_8 
       (.I0(\raw_audio_reg[7]_i_18_n_0 ),
        .I1(\raw_audio_reg[7]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[7]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[7]_i_9 
       (.I0(\raw_audio_reg[7]_i_20_n_0 ),
        .I1(\raw_audio_reg[7]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[7]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[8] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[8]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[8]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[8]_i_10 
       (.I0(\raw_audio_reg[8]_i_22_n_0 ),
        .I1(\raw_audio_reg[8]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[8]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[8]_i_11 
       (.I0(\raw_audio_reg[8]_i_24_n_0 ),
        .I1(\raw_audio_reg[8]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[8]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[8]_i_12 
       (.I0(\raw_audio_reg[8]_i_26_n_0 ),
        .I1(\raw_audio_reg[8]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[8]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[8]_i_13 
       (.I0(\raw_audio_reg[8]_i_28_n_0 ),
        .I1(\raw_audio_reg[8]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[8]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[8]_i_2 
       (.I0(\raw_audio_reg_reg[8]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[8]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[8]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[8]_i_3 
       (.I0(\raw_audio_reg_reg[8]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[8]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[8]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[8]_i_4 
       (.I0(\raw_audio_reg_reg[8]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[8]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[8]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[8]_i_5 
       (.I0(\raw_audio_reg_reg[8]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[8]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[8]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[8]_i_6 
       (.I0(\raw_audio_reg[8]_i_14_n_0 ),
        .I1(\raw_audio_reg[8]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[8]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[8]_i_7 
       (.I0(\raw_audio_reg[8]_i_16_n_0 ),
        .I1(\raw_audio_reg[8]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[8]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[8]_i_8 
       (.I0(\raw_audio_reg[8]_i_18_n_0 ),
        .I1(\raw_audio_reg[8]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[8]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[8]_i_9 
       (.I0(\raw_audio_reg[8]_i_20_n_0 ),
        .I1(\raw_audio_reg[8]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[8]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  FDRE \raw_audio_reg_reg[9] 
       (.C(clk),
        .CE(m_axis_fft_tready),
        .D(\raw_audio_reg[9]_i_1_n_0 ),
        .Q(m_axis_fft_tdata[9]),
        .R(1'b0));
  MUXF7 \raw_audio_reg_reg[9]_i_10 
       (.I0(\raw_audio_reg[9]_i_22_n_0 ),
        .I1(\raw_audio_reg[9]_i_23_n_0 ),
        .O(\raw_audio_reg_reg[9]_i_10_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[9]_i_11 
       (.I0(\raw_audio_reg[9]_i_24_n_0 ),
        .I1(\raw_audio_reg[9]_i_25_n_0 ),
        .O(\raw_audio_reg_reg[9]_i_11_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[9]_i_12 
       (.I0(\raw_audio_reg[9]_i_26_n_0 ),
        .I1(\raw_audio_reg[9]_i_27_n_0 ),
        .O(\raw_audio_reg_reg[9]_i_12_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[9]_i_13 
       (.I0(\raw_audio_reg[9]_i_28_n_0 ),
        .I1(\raw_audio_reg[9]_i_29_n_0 ),
        .O(\raw_audio_reg_reg[9]_i_13_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF8 \raw_audio_reg_reg[9]_i_2 
       (.I0(\raw_audio_reg_reg[9]_i_6_n_0 ),
        .I1(\raw_audio_reg_reg[9]_i_7_n_0 ),
        .O(\raw_audio_reg_reg[9]_i_2_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[9]_i_3 
       (.I0(\raw_audio_reg_reg[9]_i_8_n_0 ),
        .I1(\raw_audio_reg_reg[9]_i_9_n_0 ),
        .O(\raw_audio_reg_reg[9]_i_3_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[9]_i_4 
       (.I0(\raw_audio_reg_reg[9]_i_10_n_0 ),
        .I1(\raw_audio_reg_reg[9]_i_11_n_0 ),
        .O(\raw_audio_reg_reg[9]_i_4_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF8 \raw_audio_reg_reg[9]_i_5 
       (.I0(\raw_audio_reg_reg[9]_i_12_n_0 ),
        .I1(\raw_audio_reg_reg[9]_i_13_n_0 ),
        .O(\raw_audio_reg_reg[9]_i_5_n_0 ),
        .S(\ch_cnt_reg_n_0_[3] ));
  MUXF7 \raw_audio_reg_reg[9]_i_6 
       (.I0(\raw_audio_reg[9]_i_14_n_0 ),
        .I1(\raw_audio_reg[9]_i_15_n_0 ),
        .O(\raw_audio_reg_reg[9]_i_6_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[9]_i_7 
       (.I0(\raw_audio_reg[9]_i_16_n_0 ),
        .I1(\raw_audio_reg[9]_i_17_n_0 ),
        .O(\raw_audio_reg_reg[9]_i_7_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[9]_i_8 
       (.I0(\raw_audio_reg[9]_i_18_n_0 ),
        .I1(\raw_audio_reg[9]_i_19_n_0 ),
        .O(\raw_audio_reg_reg[9]_i_8_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  MUXF7 \raw_audio_reg_reg[9]_i_9 
       (.I0(\raw_audio_reg[9]_i_20_n_0 ),
        .I1(\raw_audio_reg[9]_i_21_n_0 ),
        .O(\raw_audio_reg_reg[9]_i_9_n_0 ),
        .S(\ch_cnt_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \t_cnt[0]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(t_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \t_cnt[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(t_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \t_cnt[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(t_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \t_cnt[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\t_cnt[3]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(\t_cnt[3]_i_3_n_0 ),
        .O(t_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \t_cnt[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\t_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_cnt[3]_i_3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\t_cnt[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \t_cnt[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\t_cnt[4]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(\t_cnt[4]_i_3_n_0 ),
        .O(t_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \t_cnt[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\t_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_cnt[4]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\t_cnt[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \t_cnt[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\t_cnt[5]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(\t_cnt[5]_i_3_n_0 ),
        .O(t_cnt[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \t_cnt[5]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\t_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCCC)) 
    \t_cnt[5]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\t_cnt[5]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \t_cnt[6]_i_1 
       (.I0(rst_n),
        .O(\t_cnt[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \t_cnt[6]_i_2 
       (.I0(start_processing),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(m_axis_fft_tready),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\t_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888A8880888)) 
    \t_cnt[6]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\t_cnt[6]_i_4_n_0 ),
        .I2(Q[6]),
        .I3(\t_cnt[6]_i_5_n_0 ),
        .I4(\t_cnt[6]_i_6_n_0 ),
        .I5(\t_cnt[6]_i_7_n_0 ),
        .O(t_cnt[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \t_cnt[6]_i_4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\t_cnt[6]_i_8_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\t_cnt[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \t_cnt[6]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .O(\t_cnt[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h077070700FF0F0F0)) 
    \t_cnt[6]_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\t_cnt[6]_i_9_n_0 ),
        .I5(Q[0]),
        .O(\t_cnt[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \t_cnt[6]_i_7 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\t_cnt[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \t_cnt[6]_i_8 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\t_cnt[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \t_cnt[6]_i_9 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\t_cnt[6]_i_9_n_0 ));
  FDRE \t_cnt_reg[0] 
       (.C(clk),
        .CE(\t_cnt[6]_i_2_n_0 ),
        .D(t_cnt[0]),
        .Q(Q[0]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \t_cnt_reg[1] 
       (.C(clk),
        .CE(\t_cnt[6]_i_2_n_0 ),
        .D(t_cnt[1]),
        .Q(Q[1]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \t_cnt_reg[2] 
       (.C(clk),
        .CE(\t_cnt[6]_i_2_n_0 ),
        .D(t_cnt[2]),
        .Q(Q[2]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \t_cnt_reg[3] 
       (.C(clk),
        .CE(\t_cnt[6]_i_2_n_0 ),
        .D(t_cnt[3]),
        .Q(Q[3]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \t_cnt_reg[4] 
       (.C(clk),
        .CE(\t_cnt[6]_i_2_n_0 ),
        .D(t_cnt[4]),
        .Q(Q[4]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \t_cnt_reg[5] 
       (.C(clk),
        .CE(\t_cnt[6]_i_2_n_0 ),
        .D(t_cnt[5]),
        .Q(Q[5]),
        .R(\t_cnt[6]_i_1_n_0 ));
  FDRE \t_cnt_reg[6] 
       (.C(clk),
        .CE(\t_cnt[6]_i_2_n_0 ),
        .D(t_cnt[6]),
        .Q(Q[6]),
        .R(\t_cnt[6]_i_1_n_0 ));
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
