// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jul 16 20:36:58 2026
// Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Admin/Desktop/ZYNQ_7020/AXI_DMA.srcs/sources_1/bd/System/ip/System_axis_tlast_aggregator_0_1/System_axis_tlast_aggregator_0_1_sim_netlist.v
// Design      : System_axis_tlast_aggregator_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "System_axis_tlast_aggregator_0_1,axis_tlast_aggregator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis_tlast_aggregator,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module System_axis_tlast_aggregator_0_1
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tuser,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 122875816, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [63:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input [7:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 122875816, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [63:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output [7:0]m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 122875816, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire aclk;
  wire aresetn;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [63:0]s_axis_tdata;
  wire s_axis_tlast;
  wire [7:0]s_axis_tuser;
  wire s_axis_tvalid;

  assign m_axis_tdata[63:0] = s_axis_tdata;
  assign m_axis_tuser[7:0] = s_axis_tuser;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  System_axis_tlast_aggregator_0_1_axis_tlast_aggregator inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_tlast_aggregator" *) 
module System_axis_tlast_aggregator_0_1_axis_tlast_aggregator
   (m_axis_tlast,
    aclk,
    s_axis_tlast,
    s_axis_tvalid,
    m_axis_tready,
    aresetn);
  output m_axis_tlast;
  input aclk;
  input s_axis_tlast;
  input s_axis_tvalid;
  input m_axis_tready;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire [5:0]channel_cnt;
  wire \channel_cnt[0]_i_1_n_0 ;
  wire \channel_cnt[5]_i_2_n_0 ;
  wire [5:1]channel_cnt_0;
  wire m_axis_tlast;
  wire m_axis_tlast_INST_0_i_1_n_0;
  wire m_axis_tready;
  wire p_0_in;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \channel_cnt[0]_i_1 
       (.I0(channel_cnt[0]),
        .O(\channel_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \channel_cnt[1]_i_1 
       (.I0(channel_cnt[0]),
        .I1(channel_cnt[1]),
        .O(channel_cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \channel_cnt[2]_i_1 
       (.I0(channel_cnt[2]),
        .I1(channel_cnt[0]),
        .I2(channel_cnt[1]),
        .O(channel_cnt_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \channel_cnt[3]_i_1 
       (.I0(channel_cnt[2]),
        .I1(channel_cnt[3]),
        .I2(channel_cnt[0]),
        .I3(channel_cnt[1]),
        .O(channel_cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \channel_cnt[4]_i_1 
       (.I0(channel_cnt[2]),
        .I1(channel_cnt[3]),
        .I2(channel_cnt[0]),
        .I3(channel_cnt[1]),
        .I4(channel_cnt[4]),
        .O(channel_cnt_0[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \channel_cnt[5]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'h80)) 
    \channel_cnt[5]_i_2 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .I2(s_axis_tlast),
        .O(\channel_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \channel_cnt[5]_i_3 
       (.I0(channel_cnt[2]),
        .I1(channel_cnt[3]),
        .I2(channel_cnt[0]),
        .I3(channel_cnt[1]),
        .I4(channel_cnt[4]),
        .I5(channel_cnt[5]),
        .O(channel_cnt_0[5]));
  FDRE \channel_cnt_reg[0] 
       (.C(aclk),
        .CE(\channel_cnt[5]_i_2_n_0 ),
        .D(\channel_cnt[0]_i_1_n_0 ),
        .Q(channel_cnt[0]),
        .R(p_0_in));
  FDRE \channel_cnt_reg[1] 
       (.C(aclk),
        .CE(\channel_cnt[5]_i_2_n_0 ),
        .D(channel_cnt_0[1]),
        .Q(channel_cnt[1]),
        .R(p_0_in));
  FDRE \channel_cnt_reg[2] 
       (.C(aclk),
        .CE(\channel_cnt[5]_i_2_n_0 ),
        .D(channel_cnt_0[2]),
        .Q(channel_cnt[2]),
        .R(p_0_in));
  FDRE \channel_cnt_reg[3] 
       (.C(aclk),
        .CE(\channel_cnt[5]_i_2_n_0 ),
        .D(channel_cnt_0[3]),
        .Q(channel_cnt[3]),
        .R(p_0_in));
  FDRE \channel_cnt_reg[4] 
       (.C(aclk),
        .CE(\channel_cnt[5]_i_2_n_0 ),
        .D(channel_cnt_0[4]),
        .Q(channel_cnt[4]),
        .R(p_0_in));
  FDRE \channel_cnt_reg[5] 
       (.C(aclk),
        .CE(\channel_cnt[5]_i_2_n_0 ),
        .D(channel_cnt_0[5]),
        .Q(channel_cnt[5]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    m_axis_tlast_INST_0
       (.I0(s_axis_tlast),
        .I1(channel_cnt[4]),
        .I2(channel_cnt[5]),
        .I3(m_axis_tlast_INST_0_i_1_n_0),
        .I4(channel_cnt[3]),
        .I5(channel_cnt[2]),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tlast_INST_0_i_1
       (.I0(channel_cnt[1]),
        .I1(channel_cnt[0]),
        .O(m_axis_tlast_INST_0_i_1_n_0));
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
