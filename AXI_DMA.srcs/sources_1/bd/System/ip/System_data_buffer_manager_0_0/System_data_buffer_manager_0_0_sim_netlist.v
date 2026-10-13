// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jul 16 20:36:58 2026
// Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Admin/Desktop/ZYNQ_7020/AXI_DMA.srcs/sources_1/bd/System/ip/System_data_buffer_manager_0_0/System_data_buffer_manager_0_0_sim_netlist.v
// Design      : System_data_buffer_manager_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "System_data_buffer_manager_0_0,data_buffer_manager,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "data_buffer_manager,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module System_data_buffer_manager_0_0
   (clk,
    rst_n,
    frame_valid,
    frame_data,
    start_processing,
    processing_done,
    bram_wr_addr,
    bram_wr_data,
    bram_we);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 122875816, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input frame_valid;
  input [1023:0]frame_data;
  output start_processing;
  input processing_done;
  output [6:0]bram_wr_addr;
  output [1023:0]bram_wr_data;
  output bram_we;

  wire [6:0]bram_wr_addr;
  wire clk;
  wire [1023:0]frame_data;
  wire frame_valid;
  wire rst_n;
  wire start_processing;

  assign bram_we = frame_valid;
  assign bram_wr_data[1023:0] = frame_data;
  System_data_buffer_manager_0_0_data_buffer_manager inst
       (.bram_wr_addr(bram_wr_addr),
        .clk(clk),
        .frame_valid(frame_valid),
        .rst_n(rst_n),
        .start_processing(start_processing));
endmodule

(* ORIG_REF_NAME = "data_buffer_manager" *) 
module System_data_buffer_manager_0_0_data_buffer_manager
   (bram_wr_addr,
    start_processing,
    frame_valid,
    clk,
    rst_n);
  output [6:0]bram_wr_addr;
  output start_processing;
  input frame_valid;
  input clk;
  input rst_n;

  wire [6:0]bram_wr_addr;
  wire clk;
  wire frame_valid;
  wire p_0_in;
  wire rst_n;
  wire start_processing;
  wire start_processing_i_1_n_0;
  wire start_processing_i_2_n_0;
  wire [6:0]wr_ptr;

  LUT4 #(
    .INIT(16'h4000)) 
    start_processing_i_1
       (.I0(start_processing_i_2_n_0),
        .I1(bram_wr_addr[6]),
        .I2(frame_valid),
        .I3(rst_n),
        .O(start_processing_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    start_processing_i_2
       (.I0(bram_wr_addr[4]),
        .I1(bram_wr_addr[2]),
        .I2(bram_wr_addr[0]),
        .I3(bram_wr_addr[1]),
        .I4(bram_wr_addr[3]),
        .I5(bram_wr_addr[5]),
        .O(start_processing_i_2_n_0));
  FDRE start_processing_reg
       (.C(clk),
        .CE(1'b1),
        .D(start_processing_i_1_n_0),
        .Q(start_processing),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1 
       (.I0(bram_wr_addr[0]),
        .O(wr_ptr[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(bram_wr_addr[0]),
        .I1(bram_wr_addr[1]),
        .O(wr_ptr[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[2]_i_1 
       (.I0(bram_wr_addr[1]),
        .I1(bram_wr_addr[0]),
        .I2(bram_wr_addr[2]),
        .O(wr_ptr[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_ptr[3]_i_1 
       (.I0(bram_wr_addr[2]),
        .I1(bram_wr_addr[0]),
        .I2(bram_wr_addr[1]),
        .I3(bram_wr_addr[3]),
        .O(wr_ptr[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_ptr[4]_i_1 
       (.I0(bram_wr_addr[3]),
        .I1(bram_wr_addr[1]),
        .I2(bram_wr_addr[0]),
        .I3(bram_wr_addr[2]),
        .I4(bram_wr_addr[4]),
        .O(wr_ptr[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \wr_ptr[5]_i_1 
       (.I0(bram_wr_addr[4]),
        .I1(bram_wr_addr[2]),
        .I2(bram_wr_addr[0]),
        .I3(bram_wr_addr[1]),
        .I4(bram_wr_addr[3]),
        .I5(bram_wr_addr[5]),
        .O(wr_ptr[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[6]_i_1 
       (.I0(rst_n),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h9)) 
    \wr_ptr[6]_i_2 
       (.I0(start_processing_i_2_n_0),
        .I1(bram_wr_addr[6]),
        .O(wr_ptr[6]));
  FDRE \wr_ptr_reg[0] 
       (.C(clk),
        .CE(frame_valid),
        .D(wr_ptr[0]),
        .Q(bram_wr_addr[0]),
        .R(p_0_in));
  FDRE \wr_ptr_reg[1] 
       (.C(clk),
        .CE(frame_valid),
        .D(wr_ptr[1]),
        .Q(bram_wr_addr[1]),
        .R(p_0_in));
  FDRE \wr_ptr_reg[2] 
       (.C(clk),
        .CE(frame_valid),
        .D(wr_ptr[2]),
        .Q(bram_wr_addr[2]),
        .R(p_0_in));
  FDRE \wr_ptr_reg[3] 
       (.C(clk),
        .CE(frame_valid),
        .D(wr_ptr[3]),
        .Q(bram_wr_addr[3]),
        .R(p_0_in));
  FDRE \wr_ptr_reg[4] 
       (.C(clk),
        .CE(frame_valid),
        .D(wr_ptr[4]),
        .Q(bram_wr_addr[4]),
        .R(p_0_in));
  FDRE \wr_ptr_reg[5] 
       (.C(clk),
        .CE(frame_valid),
        .D(wr_ptr[5]),
        .Q(bram_wr_addr[5]),
        .R(p_0_in));
  FDRE \wr_ptr_reg[6] 
       (.C(clk),
        .CE(frame_valid),
        .D(wr_ptr[6]),
        .Q(bram_wr_addr[6]),
        .R(p_0_in));
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
