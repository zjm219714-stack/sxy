// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 10 10:12:50 2026
// Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Ruanjian/Vivado/zynq_chengxu/ZYNQ_7015/ZYNQ_7020_yuntu/AXI_DMA.srcs/sources_1/bd/System/ip/System_adau7118_i2c_init_0_0/System_adau7118_i2c_init_0_0_sim_netlist.v
// Design      : System_adau7118_i2c_init_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "System_adau7118_i2c_init_0_0,adau7118_i2c_init,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "adau7118_i2c_init,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module System_adau7118_i2c_init_0_0
   (clk,
    rst_n,
    scl,
    sda,
    init_done,
    init_error,
    busy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 196595744, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  output scl;
  inout sda;
  output init_done;
  output init_error;
  output busy;

  wire busy;
  wire clk;
  wire init_done;
  wire init_error;
  wire rst_n;
  wire scl;
  wire sda;

  System_adau7118_i2c_init_0_0_adau7118_i2c_init inst
       (.busy(busy),
        .clk(clk),
        .init_done(init_done),
        .init_error(init_error),
        .rst_n(rst_n),
        .scl(scl),
        .sda(sda));
endmodule

(* ORIG_REF_NAME = "I2C_driver" *) 
module System_adau7118_i2c_init_0_0_I2C_driver
   (rst_n_0,
    scl,
    i2c_done,
    \FSM_sequential_state_reg[3] ,
    sda,
    \data_wr_t_reg[6]_0 ,
    clk,
    \data_wr_t_reg[0]_0 ,
    init_error_reg,
    Q,
    init_error_reg_0,
    init_error,
    rst_n,
    \addr_t_reg[2]_0 ,
    \data_wr_t_reg[7]_0 );
  output rst_n_0;
  output scl;
  output i2c_done;
  output \FSM_sequential_state_reg[3] ;
  inout sda;
  input \data_wr_t_reg[6]_0 ;
  input clk;
  input \data_wr_t_reg[0]_0 ;
  input init_error_reg;
  input [1:0]Q;
  input init_error_reg_0;
  input init_error;
  input rst_n;
  input [1:0]\addr_t_reg[2]_0 ;
  input [2:0]\data_wr_t_reg[7]_0 ;

  wire \FSM_sequential_state_reg[3] ;
  wire [1:0]Q;
  wire addr_t;
  wire [1:0]\addr_t_reg[2]_0 ;
  wire \addr_t_reg_n_0_[1] ;
  wire \addr_t_reg_n_0_[2] ;
  wire clk;
  wire [9:0]clk_cnt;
  wire \clk_cnt[9]_i_2_n_0 ;
  wire [9:0]clk_cnt_1;
  wire [6:0]cnt;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt[5]_i_2_n_0 ;
  wire \cnt[6]_i_2_n_0 ;
  wire \cnt[6]_i_3_n_0 ;
  wire \cnt[6]_i_4_n_0 ;
  wire \cnt[6]_i_5_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire [4:0]cur_state;
  wire \cur_state[7]_i_2_n_0 ;
  wire \cur_state_reg_n_0_[7] ;
  wire [7:0]data_wr_t;
  wire \data_wr_t_reg[0]_0 ;
  wire \data_wr_t_reg[6]_0 ;
  wire [2:0]\data_wr_t_reg[7]_0 ;
  wire done;
  wire done_0;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_i_4_n_0;
  wire dri_clk_i_1_n_0;
  wire dri_clk_i_2_n_0;
  wire dri_clk_reg_n_0;
  wire i2c_ack;
  wire i2c_ack_i_1_n_0;
  wire i2c_ack_i_2_n_0;
  wire i2c_ack_i_3_n_0;
  wire i2c_ack_i_4_n_0;
  wire i2c_ack_i_5_n_0;
  wire i2c_done;
  wire i2c_done_i_1_n_0;
  wire init_error;
  wire init_error_reg;
  wire init_error_reg_0;
  wire [7:0]next_state;
  wire rst_n;
  wire rst_n_0;
  wire scl;
  wire scl_i_1_n_0;
  wire scl_i_3_n_0;
  wire scl_i_4_n_0;
  wire scl_i_5_n_0;
  wire sda;
  wire sda_dir_i_1_n_0;
  wire sda_dir_i_2_n_0;
  wire sda_dir_i_3_n_0;
  wire sda_dir_i_4_n_0;
  wire sda_dir_reg_n_0;
  wire sda_out_i_10_n_0;
  wire sda_out_i_11_n_0;
  wire sda_out_i_12_n_0;
  wire sda_out_i_13_n_0;
  wire sda_out_i_14_n_0;
  wire sda_out_i_15_n_0;
  wire sda_out_i_16_n_0;
  wire sda_out_i_1_n_0;
  wire sda_out_i_2_n_0;
  wire sda_out_i_3_n_0;
  wire sda_out_i_4_n_0;
  wire sda_out_i_5_n_0;
  wire sda_out_i_6_n_0;
  wire sda_out_i_7_n_0;
  wire sda_out_i_8_n_0;
  wire sda_out_i_9_n_0;
  wire sda_out_reg_n_0;

  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \addr_t[2]_i_1 
       (.I0(cur_state[0]),
        .I1(\data_wr_t_reg[0]_0 ),
        .I2(\cur_state_reg_n_0_[7] ),
        .I3(cur_state[1]),
        .I4(cur_state[3]),
        .I5(cur_state[4]),
        .O(addr_t));
  FDCE \addr_t_reg[1] 
       (.C(dri_clk_reg_n_0),
        .CE(addr_t),
        .CLR(rst_n_0),
        .D(\addr_t_reg[2]_0 [0]),
        .Q(\addr_t_reg_n_0_[1] ));
  FDCE \addr_t_reg[2] 
       (.C(dri_clk_reg_n_0),
        .CE(addr_t),
        .CLR(rst_n_0),
        .D(\addr_t_reg[2]_0 [1]),
        .Q(\addr_t_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[0]_i_1 
       (.I0(clk_cnt[0]),
        .O(clk_cnt_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_cnt[1]_i_1 
       (.I0(clk_cnt[0]),
        .I1(clk_cnt[1]),
        .O(clk_cnt_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_cnt[2]_i_1 
       (.I0(clk_cnt[1]),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[2]),
        .O(clk_cnt_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_cnt[3]_i_1 
       (.I0(clk_cnt[2]),
        .I1(clk_cnt[0]),
        .I2(clk_cnt[1]),
        .I3(clk_cnt[3]),
        .O(clk_cnt_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_cnt[4]_i_1 
       (.I0(clk_cnt[3]),
        .I1(clk_cnt[1]),
        .I2(clk_cnt[0]),
        .I3(clk_cnt[2]),
        .I4(clk_cnt[4]),
        .O(clk_cnt_1[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAA55555551)) 
    \clk_cnt[5]_i_1 
       (.I0(\clk_cnt[9]_i_2_n_0 ),
        .I1(clk_cnt[6]),
        .I2(clk_cnt[9]),
        .I3(clk_cnt[8]),
        .I4(clk_cnt[7]),
        .I5(clk_cnt[5]),
        .O(clk_cnt_1[5]));
  LUT6 #(
    .INIT(64'hFFFF00005554AAAA)) 
    \clk_cnt[6]_i_1 
       (.I0(clk_cnt[5]),
        .I1(clk_cnt[7]),
        .I2(clk_cnt[8]),
        .I3(clk_cnt[9]),
        .I4(clk_cnt[6]),
        .I5(\clk_cnt[9]_i_2_n_0 ),
        .O(clk_cnt_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \clk_cnt[7]_i_1 
       (.I0(clk_cnt[5]),
        .I1(\clk_cnt[9]_i_2_n_0 ),
        .I2(clk_cnt[6]),
        .I3(clk_cnt[7]),
        .O(clk_cnt_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \clk_cnt[8]_i_1 
       (.I0(clk_cnt[7]),
        .I1(clk_cnt[6]),
        .I2(\clk_cnt[9]_i_2_n_0 ),
        .I3(clk_cnt[5]),
        .I4(clk_cnt[8]),
        .O(clk_cnt_1[8]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \clk_cnt[9]_i_1 
       (.I0(clk_cnt[8]),
        .I1(clk_cnt[5]),
        .I2(\clk_cnt[9]_i_2_n_0 ),
        .I3(clk_cnt[6]),
        .I4(clk_cnt[7]),
        .I5(clk_cnt[9]),
        .O(clk_cnt_1[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \clk_cnt[9]_i_2 
       (.I0(clk_cnt[3]),
        .I1(clk_cnt[1]),
        .I2(clk_cnt[0]),
        .I3(clk_cnt[2]),
        .I4(clk_cnt[4]),
        .O(\clk_cnt[9]_i_2_n_0 ));
  FDCE \clk_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_cnt_1[0]),
        .Q(clk_cnt[0]));
  FDCE \clk_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_cnt_1[1]),
        .Q(clk_cnt[1]));
  FDCE \clk_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_cnt_1[2]),
        .Q(clk_cnt[2]));
  FDCE \clk_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_cnt_1[3]),
        .Q(clk_cnt[3]));
  FDCE \clk_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_cnt_1[4]),
        .Q(clk_cnt[4]));
  FDCE \clk_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_cnt_1[5]),
        .Q(clk_cnt[5]));
  FDCE \clk_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_cnt_1[6]),
        .Q(clk_cnt[6]));
  FDCE \clk_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_cnt_1[7]),
        .Q(clk_cnt[7]));
  FDCE \clk_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_cnt_1[8]),
        .Q(clk_cnt[8]));
  FDCE \clk_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_cnt_1[9]),
        .Q(clk_cnt[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00F800FF)) 
    \cnt[0]_i_1 
       (.I0(\cur_state_reg_n_0_[7] ),
        .I1(\cnt[0]_i_2_n_0 ),
        .I2(scl_i_3_n_0),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cur_state[7]_i_2_n_0 ),
        .O(cnt[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \cnt[0]_i_2 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[6] ),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[4] ),
        .O(\cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt[1]_i_1 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .O(cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \cnt[2]_i_1 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \cnt[3]_i_1 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \cnt[4]_i_1 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(cnt[4]));
  LUT6 #(
    .INIT(64'h8888888828888888)) 
    \cnt[5]_i_1 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt[5]_i_2_n_0 ),
        .O(cnt[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[5]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(\cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \cnt[6]_i_1 
       (.I0(\cnt[6]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[6] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[5] ),
        .I5(\cnt[6]_i_3_n_0 ),
        .O(cnt[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAF8FFFF)) 
    \cnt[6]_i_2 
       (.I0(scl_i_3_n_0),
        .I1(\cnt[5]_i_2_n_0 ),
        .I2(\cnt[6]_i_4_n_0 ),
        .I3(done_i_3_n_0),
        .I4(\cur_state[7]_i_2_n_0 ),
        .I5(\cnt[6]_i_5_n_0 ),
        .O(\cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cnt[6]_i_3 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[2] ),
        .O(\cnt[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt[6]_i_4 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[6] ),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cur_state_reg_n_0_[7] ),
        .O(\cnt[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAFAFFFFC0F0)) 
    \cnt[6]_i_5 
       (.I0(i2c_ack_i_3_n_0),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cur_state_reg_n_0_[7] ),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(cur_state[1]),
        .I5(\cnt_reg_n_0_[2] ),
        .O(\cnt[6]_i_5_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt[0]),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE \cnt_reg[1] 
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE \cnt_reg[2] 
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE \cnt_reg[3] 
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE \cnt_reg[4] 
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE \cnt_reg[5] 
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  FDCE \cnt_reg[6] 
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ));
  LUT5 #(
    .INIT(32'hFF5D5D5D)) 
    \cur_state[0]_i_1 
       (.I0(\cur_state[7]_i_2_n_0 ),
        .I1(cur_state[0]),
        .I2(\data_wr_t_reg[0]_0 ),
        .I3(done),
        .I4(\cur_state_reg_n_0_[7] ),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'hF2002200)) 
    \cur_state[1]_i_1 
       (.I0(cur_state[1]),
        .I1(done),
        .I2(\data_wr_t_reg[0]_0 ),
        .I3(\cur_state[7]_i_2_n_0 ),
        .I4(cur_state[0]),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \cur_state[3]_i_1 
       (.I0(cur_state[1]),
        .I1(cur_state[3]),
        .I2(\cur_state[7]_i_2_n_0 ),
        .I3(done),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \cur_state[4]_i_1 
       (.I0(cur_state[3]),
        .I1(cur_state[4]),
        .I2(\cur_state[7]_i_2_n_0 ),
        .I3(done),
        .O(next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \cur_state[7]_i_1 
       (.I0(cur_state[4]),
        .I1(\cur_state_reg_n_0_[7] ),
        .I2(\cur_state[7]_i_2_n_0 ),
        .I3(done),
        .O(next_state[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \cur_state[7]_i_2 
       (.I0(cur_state[4]),
        .I1(\cur_state_reg_n_0_[7] ),
        .I2(cur_state[0]),
        .I3(cur_state[1]),
        .I4(cur_state[3]),
        .O(\cur_state[7]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "sladdr:00000010,addr16:00000100,addr8:00001000,data_wr:00010000,addr_rd:00100000,data_rd:01000000,stop:10000000,idle:00000001" *) 
  FDPE \cur_state_reg[0] 
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .D(next_state[0]),
        .PRE(rst_n_0),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "sladdr:00000010,addr16:00000100,addr8:00001000,data_wr:00010000,addr_rd:00100000,data_rd:01000000,stop:10000000,idle:00000001" *) 
  FDCE \cur_state_reg[1] 
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(next_state[1]),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "sladdr:00000010,addr16:00000100,addr8:00001000,data_wr:00010000,addr_rd:00100000,data_rd:01000000,stop:10000000,idle:00000001" *) 
  FDCE \cur_state_reg[3] 
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(next_state[3]),
        .Q(cur_state[3]));
  (* FSM_ENCODED_STATES = "sladdr:00000010,addr16:00000100,addr8:00001000,data_wr:00010000,addr_rd:00100000,data_rd:01000000,stop:10000000,idle:00000001" *) 
  FDCE \cur_state_reg[4] 
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(next_state[4]),
        .Q(cur_state[4]));
  (* FSM_ENCODED_STATES = "sladdr:00000010,addr16:00000100,addr8:00001000,data_wr:00010000,addr_rd:00100000,data_rd:01000000,stop:10000000,idle:00000001" *) 
  FDCE \cur_state_reg[7] 
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(next_state[7]),
        .Q(\cur_state_reg_n_0_[7] ));
  FDCE \data_wr_t_reg[0] 
       (.C(dri_clk_reg_n_0),
        .CE(addr_t),
        .CLR(rst_n_0),
        .D(\data_wr_t_reg[7]_0 [0]),
        .Q(data_wr_t[0]));
  FDCE \data_wr_t_reg[5] 
       (.C(dri_clk_reg_n_0),
        .CE(addr_t),
        .CLR(rst_n_0),
        .D(\data_wr_t_reg[7]_0 [1]),
        .Q(data_wr_t[5]));
  FDCE \data_wr_t_reg[6] 
       (.C(dri_clk_reg_n_0),
        .CE(addr_t),
        .CLR(rst_n_0),
        .D(\data_wr_t_reg[6]_0 ),
        .Q(data_wr_t[6]));
  FDCE \data_wr_t_reg[7] 
       (.C(dri_clk_reg_n_0),
        .CE(addr_t),
        .CLR(rst_n_0),
        .D(\data_wr_t_reg[7]_0 [2]),
        .Q(data_wr_t[7]));
  LUT6 #(
    .INIT(64'hA0003000A0000000)) 
    done_i_1
       (.I0(done_i_2_n_0),
        .I1(done_i_3_n_0),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cur_state[7]_i_2_n_0 ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(done_i_4_n_0),
        .O(done_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    done_i_2
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cur_state_reg_n_0_[7] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[6] ),
        .I5(\cnt_reg_n_0_[5] ),
        .O(done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    done_i_3
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt_reg_n_0_[5] ),
        .O(done_i_3_n_0));
  LUT4 #(
    .INIT(16'hBBB8)) 
    done_i_4
       (.I0(cur_state[1]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(cur_state[3]),
        .I3(cur_state[4]),
        .O(done_i_4_n_0));
  FDCE done_reg
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(done_0),
        .Q(done));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    dri_clk_i_1
       (.I0(dri_clk_i_2_n_0),
        .I1(clk_cnt[7]),
        .I2(clk_cnt[8]),
        .I3(clk_cnt[9]),
        .I4(clk_cnt[5]),
        .I5(dri_clk_reg_n_0),
        .O(dri_clk_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    dri_clk_i_2
       (.I0(clk_cnt[4]),
        .I1(clk_cnt[2]),
        .I2(clk_cnt[0]),
        .I3(clk_cnt[1]),
        .I4(clk_cnt[3]),
        .I5(clk_cnt[6]),
        .O(dri_clk_i_2_n_0));
  FDCE dri_clk_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(dri_clk_i_1_n_0),
        .Q(dri_clk_reg_n_0));
  LUT6 #(
    .INIT(64'h22223FFF22220000)) 
    i2c_ack_i_1
       (.I0(sda),
        .I1(cur_state[0]),
        .I2(\data_wr_t_reg[0]_0 ),
        .I3(\cur_state[7]_i_2_n_0 ),
        .I4(i2c_ack_i_2_n_0),
        .I5(i2c_ack),
        .O(i2c_ack_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000B8000000)) 
    i2c_ack_i_2
       (.I0(cur_state[1]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(i2c_ack_i_3_n_0),
        .I3(i2c_ack_i_4_n_0),
        .I4(i2c_ack_i_5_n_0),
        .I5(done_i_3_n_0),
        .O(i2c_ack_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    i2c_ack_i_3
       (.I0(cur_state[3]),
        .I1(cur_state[4]),
        .O(i2c_ack_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i2c_ack_i_4
       (.I0(sda),
        .I1(\cnt_reg_n_0_[1] ),
        .O(i2c_ack_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    i2c_ack_i_5
       (.I0(\cur_state[7]_i_2_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .O(i2c_ack_i_5_n_0));
  FDCE i2c_ack_reg
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(i2c_ack_i_1_n_0),
        .Q(i2c_ack));
  LUT6 #(
    .INIT(64'hFFFFF3F300000010)) 
    i2c_done_i_1
       (.I0(\cnt[0]_i_2_n_0 ),
        .I1(cur_state[0]),
        .I2(\cur_state_reg_n_0_[7] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(scl_i_3_n_0),
        .I5(i2c_done),
        .O(i2c_done_i_1_n_0));
  FDCE i2c_done_reg
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(i2c_done_i_1_n_0),
        .Q(i2c_done));
  LUT6 #(
    .INIT(64'hFFFFDDDD00009000)) 
    init_error_i_1
       (.I0(init_error_reg),
        .I1(Q[1]),
        .I2(i2c_ack),
        .I3(init_error_reg_0),
        .I4(Q[0]),
        .I5(init_error),
        .O(\FSM_sequential_state_reg[3] ));
  LUT6 #(
    .INIT(64'hEFEEFFFFEFEE0000)) 
    scl_i_1
       (.I0(\cur_state_reg_n_0_[7] ),
        .I1(cur_state[0]),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(scl_i_3_n_0),
        .I4(scl_i_4_n_0),
        .I5(scl),
        .O(scl_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    scl_i_2
       (.I0(rst_n),
        .O(rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    scl_i_3
       (.I0(cur_state[4]),
        .I1(cur_state[3]),
        .I2(cur_state[1]),
        .O(scl_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFE00000)) 
    scl_i_4
       (.I0(scl_i_5_n_0),
        .I1(sda_out_i_5_n_0),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(cur_state[0]),
        .I4(\cur_state[7]_i_2_n_0 ),
        .O(scl_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFE0002)) 
    scl_i_5
       (.I0(\cur_state_reg_n_0_[7] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(cur_state[1]),
        .I5(sda_out_i_13_n_0),
        .O(scl_i_5_n_0));
  FDPE scl_reg
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .D(scl_i_1_n_0),
        .PRE(rst_n_0),
        .Q(scl));
  LUT2 #(
    .INIT(4'h8)) 
    sda_INST_0
       (.I0(sda_out_reg_n_0),
        .I1(sda_dir_reg_n_0),
        .O(sda));
  LUT6 #(
    .INIT(64'h1F1F1FFF1F1F1F00)) 
    sda_dir_i_1
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(cur_state[1]),
        .I2(scl_i_3_n_0),
        .I3(sda_dir_i_2_n_0),
        .I4(sda_dir_i_3_n_0),
        .I5(sda_dir_reg_n_0),
        .O(sda_dir_i_1_n_0));
  LUT6 #(
    .INIT(64'h3000222200000000)) 
    sda_dir_i_2
       (.I0(i2c_ack_i_3_n_0),
        .I1(sda_out_i_13_n_0),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(cur_state[1]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(sda_out_i_6_n_0),
        .O(sda_dir_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF000400000000)) 
    sda_dir_i_3
       (.I0(sda_dir_i_4_n_0),
        .I1(\cur_state_reg_n_0_[7] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(sda_out_i_13_n_0),
        .I4(cur_state[0]),
        .I5(\cur_state[7]_i_2_n_0 ),
        .O(sda_dir_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sda_dir_i_4
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(sda_dir_i_4_n_0));
  FDPE sda_dir_reg
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .D(sda_dir_i_1_n_0),
        .PRE(rst_n_0),
        .Q(sda_dir_reg_n_0));
  LUT6 #(
    .INIT(64'hEEEFEFEFEEE0E0E0)) 
    sda_out_i_1
       (.I0(sda_out_i_2_n_0),
        .I1(sda_out_i_3_n_0),
        .I2(sda_out_i_4_n_0),
        .I3(sda_out_i_5_n_0),
        .I4(sda_out_i_6_n_0),
        .I5(sda_out_reg_n_0),
        .O(sda_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h80C0800000000000)) 
    sda_out_i_10
       (.I0(data_wr_t[6]),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\addr_t_reg_n_0_[2] ),
        .I5(cur_state[3]),
        .O(sda_out_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00001E00)) 
    sda_out_i_11
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cur_state[7]_i_2_n_0 ),
        .I4(\cnt_reg_n_0_[1] ),
        .O(sda_out_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000008008)) 
    sda_out_i_12
       (.I0(\cur_state[7]_i_2_n_0 ),
        .I1(\cur_state_reg_n_0_[7] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[5] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(sda_out_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sda_out_i_13
       (.I0(\cnt_reg_n_0_[6] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .O(sda_out_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000000000000054)) 
    sda_out_i_14
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(cur_state[3]),
        .I2(cur_state[4]),
        .I3(\cnt_reg_n_0_[4] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt_reg_n_0_[6] ),
        .O(sda_out_i_14_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sda_out_i_15
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[4] ),
        .O(sda_out_i_15_n_0));
  LUT6 #(
    .INIT(64'h4040400040004000)) 
    sda_out_i_16
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(cur_state[1]),
        .I4(\addr_t_reg_n_0_[1] ),
        .I5(cur_state[3]),
        .O(sda_out_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    sda_out_i_2
       (.I0(sda_out_i_7_n_0),
        .I1(\cur_state_reg_n_0_[7] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(sda_out_i_8_n_0),
        .I4(sda_out_i_9_n_0),
        .I5(cur_state[0]),
        .O(sda_out_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFAAAAAA)) 
    sda_out_i_3
       (.I0(sda_out_i_10_n_0),
        .I1(data_wr_t[0]),
        .I2(\cnt[6]_i_3_n_0 ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(cur_state[3]),
        .I5(cur_state[4]),
        .O(sda_out_i_3_n_0));
  LUT6 #(
    .INIT(64'hF000F000FFFFF888)) 
    sda_out_i_4
       (.I0(sda_out_i_11_n_0),
        .I1(cur_state[1]),
        .I2(\cur_state[7]_i_2_n_0 ),
        .I3(cur_state[0]),
        .I4(sda_out_i_12_n_0),
        .I5(sda_out_i_13_n_0),
        .O(sda_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFFEA)) 
    sda_out_i_5
       (.I0(sda_out_i_14_n_0),
        .I1(cur_state[1]),
        .I2(sda_out_i_15_n_0),
        .I3(i2c_ack_i_3_n_0),
        .I4(\cnt_reg_n_0_[5] ),
        .I5(\cnt_reg_n_0_[6] ),
        .O(sda_out_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    sda_out_i_6
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cur_state[7]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[1] ),
        .O(sda_out_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF6000000)) 
    sda_out_i_7
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(cur_state[1]),
        .I5(sda_out_i_16_n_0),
        .O(sda_out_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h08808880)) 
    sda_out_i_8
       (.I0(data_wr_t[5]),
        .I1(cur_state[4]),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[2] ),
        .O(sda_out_i_8_n_0));
  LUT6 #(
    .INIT(64'h1010100000001000)) 
    sda_out_i_9
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(cur_state[4]),
        .I3(data_wr_t[7]),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(data_wr_t[6]),
        .O(sda_out_i_9_n_0));
  FDPE sda_out_reg
       (.C(dri_clk_reg_n_0),
        .CE(1'b1),
        .D(sda_out_i_1_n_0),
        .PRE(rst_n_0),
        .Q(sda_out_reg_n_0));
endmodule

(* ORIG_REF_NAME = "adau7118_i2c_init" *) 
module System_adau7118_i2c_init_0_0_adau7118_i2c_init
   (busy,
    scl,
    init_done,
    init_error,
    sda,
    clk,
    rst_n);
  output busy;
  output scl;
  output init_done;
  output init_error;
  inout sda;
  input clk;
  input rst_n;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_11_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire busy;
  wire clk;
  wire [31:0]delay_cnt;
  wire [31:1]delay_cnt0;
  wire delay_cnt0_carry__0_n_0;
  wire delay_cnt0_carry__0_n_1;
  wire delay_cnt0_carry__0_n_2;
  wire delay_cnt0_carry__0_n_3;
  wire delay_cnt0_carry__1_n_0;
  wire delay_cnt0_carry__1_n_1;
  wire delay_cnt0_carry__1_n_2;
  wire delay_cnt0_carry__1_n_3;
  wire delay_cnt0_carry__2_n_0;
  wire delay_cnt0_carry__2_n_1;
  wire delay_cnt0_carry__2_n_2;
  wire delay_cnt0_carry__2_n_3;
  wire delay_cnt0_carry__3_n_0;
  wire delay_cnt0_carry__3_n_1;
  wire delay_cnt0_carry__3_n_2;
  wire delay_cnt0_carry__3_n_3;
  wire delay_cnt0_carry__4_n_0;
  wire delay_cnt0_carry__4_n_1;
  wire delay_cnt0_carry__4_n_2;
  wire delay_cnt0_carry__4_n_3;
  wire delay_cnt0_carry__5_n_0;
  wire delay_cnt0_carry__5_n_1;
  wire delay_cnt0_carry__5_n_2;
  wire delay_cnt0_carry__5_n_3;
  wire delay_cnt0_carry__6_n_2;
  wire delay_cnt0_carry__6_n_3;
  wire delay_cnt0_carry_n_0;
  wire delay_cnt0_carry_n_1;
  wire delay_cnt0_carry_n_2;
  wire delay_cnt0_carry_n_3;
  wire \delay_cnt[31]_i_1_n_0 ;
  wire \delay_cnt_reg_n_0_[0] ;
  wire \delay_cnt_reg_n_0_[10] ;
  wire \delay_cnt_reg_n_0_[11] ;
  wire \delay_cnt_reg_n_0_[12] ;
  wire \delay_cnt_reg_n_0_[13] ;
  wire \delay_cnt_reg_n_0_[14] ;
  wire \delay_cnt_reg_n_0_[15] ;
  wire \delay_cnt_reg_n_0_[16] ;
  wire \delay_cnt_reg_n_0_[17] ;
  wire \delay_cnt_reg_n_0_[18] ;
  wire \delay_cnt_reg_n_0_[19] ;
  wire \delay_cnt_reg_n_0_[1] ;
  wire \delay_cnt_reg_n_0_[20] ;
  wire \delay_cnt_reg_n_0_[21] ;
  wire \delay_cnt_reg_n_0_[22] ;
  wire \delay_cnt_reg_n_0_[23] ;
  wire \delay_cnt_reg_n_0_[24] ;
  wire \delay_cnt_reg_n_0_[25] ;
  wire \delay_cnt_reg_n_0_[26] ;
  wire \delay_cnt_reg_n_0_[27] ;
  wire \delay_cnt_reg_n_0_[28] ;
  wire \delay_cnt_reg_n_0_[29] ;
  wire \delay_cnt_reg_n_0_[2] ;
  wire \delay_cnt_reg_n_0_[30] ;
  wire \delay_cnt_reg_n_0_[31] ;
  wire \delay_cnt_reg_n_0_[3] ;
  wire \delay_cnt_reg_n_0_[4] ;
  wire \delay_cnt_reg_n_0_[5] ;
  wire \delay_cnt_reg_n_0_[6] ;
  wire \delay_cnt_reg_n_0_[7] ;
  wire \delay_cnt_reg_n_0_[8] ;
  wire \delay_cnt_reg_n_0_[9] ;
  wire [1:1]i2c_addr;
  wire \i2c_addr_reg_n_0_[1] ;
  wire \i2c_addr_reg_n_0_[2] ;
  wire [6:5]i2c_data_w;
  wire \i2c_data_w[7]_i_1_n_0 ;
  wire \i2c_data_w_reg_n_0_[0] ;
  wire \i2c_data_w_reg_n_0_[5] ;
  wire \i2c_data_w_reg_n_0_[6] ;
  wire \i2c_data_w_reg_n_0_[7] ;
  wire i2c_done;
  wire i2c_done_meta;
  wire i2c_done_sync;
  wire i2c_done_sync_d;
  wire i2c_exec;
  wire i2c_exec_reg_n_0;
  wire i2c_rh_wl;
  wire init_done;
  wire init_done_i_1_n_0;
  wire init_done_i_2_n_0;
  wire init_error;
  wire init_error_i_2_n_0;
  wire rst_n;
  wire scl;
  wire sda;
  wire [3:0]state;
  wire u_i2c_driver_n_0;
  wire u_i2c_driver_n_3;
  wire [3:2]NLW_delay_cnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_delay_cnt0_carry__6_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0C0E0C3E0F0E0C)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(state[0]),
        .I2(state[3]),
        .I3(init_done_i_2_n_0),
        .I4(i2c_done_sync),
        .I5(i2c_done_sync_d),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(\delay_cnt_reg_n_0_[26] ),
        .I1(\delay_cnt_reg_n_0_[28] ),
        .I2(\delay_cnt_reg_n_0_[22] ),
        .I3(\delay_cnt_reg_n_0_[30] ),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[3]_i_11 
       (.I0(\delay_cnt_reg_n_0_[24] ),
        .I1(\delay_cnt_reg_n_0_[27] ),
        .I2(\delay_cnt_reg_n_0_[23] ),
        .I3(\delay_cnt_reg_n_0_[31] ),
        .O(\FSM_sequential_state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55454444)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(\delay_cnt_reg_n_0_[17] ),
        .I2(\FSM_sequential_state[3]_i_5_n_0 ),
        .I3(\delay_cnt_reg_n_0_[15] ),
        .I4(\delay_cnt_reg_n_0_[16] ),
        .I5(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\delay_cnt_reg_n_0_[20] ),
        .I1(\delay_cnt_reg_n_0_[18] ),
        .I2(\delay_cnt_reg_n_0_[19] ),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h11115515FFFFFFFF)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\FSM_sequential_state[3]_i_7_n_0 ),
        .I1(\delay_cnt_reg_n_0_[11] ),
        .I2(\FSM_sequential_state[3]_i_8_n_0 ),
        .I3(\FSM_sequential_state[3]_i_9_n_0 ),
        .I4(\delay_cnt_reg_n_0_[10] ),
        .I5(\delay_cnt_reg_n_0_[14] ),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(\delay_cnt_reg_n_0_[25] ),
        .I1(\delay_cnt_reg_n_0_[21] ),
        .I2(\delay_cnt_reg_n_0_[29] ),
        .I3(\FSM_sequential_state[3]_i_10_n_0 ),
        .I4(\FSM_sequential_state[3]_i_11_n_0 ),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(\delay_cnt_reg_n_0_[13] ),
        .I1(\delay_cnt_reg_n_0_[12] ),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(\delay_cnt_reg_n_0_[4] ),
        .I1(\delay_cnt_reg_n_0_[9] ),
        .I2(\delay_cnt_reg_n_0_[5] ),
        .I3(\delay_cnt_reg_n_0_[8] ),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(\delay_cnt_reg_n_0_[1] ),
        .I1(\delay_cnt_reg_n_0_[3] ),
        .I2(\delay_cnt_reg_n_0_[6] ),
        .I3(\delay_cnt_reg_n_0_[2] ),
        .I4(\delay_cnt_reg_n_0_[0] ),
        .I5(\delay_cnt_reg_n_0_[7] ),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "S_WR_05:0011,S_WAIT_05:0100,S_WAIT_04_DIS:0010,S_WR_04_DIS:0001,S_DELAY:0000,S_DONE:1001,S_WR_04_EN:0111,S_WAIT_07:0110,S_WAIT_04_EN:1000,S_WR_07:0101" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "S_WR_05:0011,S_WAIT_05:0100,S_WAIT_04_DIS:0010,S_WR_04_DIS:0001,S_DELAY:0000,S_DONE:1001,S_WR_04_EN:0111,S_WAIT_07:0110,S_WAIT_04_EN:1000,S_WR_07:0101" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "S_WR_05:0011,S_WAIT_05:0100,S_WAIT_04_DIS:0010,S_WR_04_DIS:0001,S_DELAY:0000,S_DONE:1001,S_WR_04_EN:0111,S_WAIT_07:0110,S_WAIT_04_EN:1000,S_WR_07:0101" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  (* FSM_ENCODED_STATES = "S_WR_05:0011,S_WAIT_05:0100,S_WAIT_04_DIS:0010,S_WR_04_DIS:0001,S_DELAY:0000,S_DONE:1001,S_WR_04_EN:0111,S_WAIT_07:0110,S_WAIT_04_EN:1000,S_WR_07:0101" *) 
  FDCE \FSM_sequential_state_reg[3] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(\FSM_sequential_state[3]_i_2_n_0 ),
        .Q(state[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    busy_INST_0
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[2]),
        .O(busy));
  CARRY4 delay_cnt0_carry
       (.CI(1'b0),
        .CO({delay_cnt0_carry_n_0,delay_cnt0_carry_n_1,delay_cnt0_carry_n_2,delay_cnt0_carry_n_3}),
        .CYINIT(\delay_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(delay_cnt0[4:1]),
        .S({\delay_cnt_reg_n_0_[4] ,\delay_cnt_reg_n_0_[3] ,\delay_cnt_reg_n_0_[2] ,\delay_cnt_reg_n_0_[1] }));
  CARRY4 delay_cnt0_carry__0
       (.CI(delay_cnt0_carry_n_0),
        .CO({delay_cnt0_carry__0_n_0,delay_cnt0_carry__0_n_1,delay_cnt0_carry__0_n_2,delay_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(delay_cnt0[8:5]),
        .S({\delay_cnt_reg_n_0_[8] ,\delay_cnt_reg_n_0_[7] ,\delay_cnt_reg_n_0_[6] ,\delay_cnt_reg_n_0_[5] }));
  CARRY4 delay_cnt0_carry__1
       (.CI(delay_cnt0_carry__0_n_0),
        .CO({delay_cnt0_carry__1_n_0,delay_cnt0_carry__1_n_1,delay_cnt0_carry__1_n_2,delay_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(delay_cnt0[12:9]),
        .S({\delay_cnt_reg_n_0_[12] ,\delay_cnt_reg_n_0_[11] ,\delay_cnt_reg_n_0_[10] ,\delay_cnt_reg_n_0_[9] }));
  CARRY4 delay_cnt0_carry__2
       (.CI(delay_cnt0_carry__1_n_0),
        .CO({delay_cnt0_carry__2_n_0,delay_cnt0_carry__2_n_1,delay_cnt0_carry__2_n_2,delay_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(delay_cnt0[16:13]),
        .S({\delay_cnt_reg_n_0_[16] ,\delay_cnt_reg_n_0_[15] ,\delay_cnt_reg_n_0_[14] ,\delay_cnt_reg_n_0_[13] }));
  CARRY4 delay_cnt0_carry__3
       (.CI(delay_cnt0_carry__2_n_0),
        .CO({delay_cnt0_carry__3_n_0,delay_cnt0_carry__3_n_1,delay_cnt0_carry__3_n_2,delay_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(delay_cnt0[20:17]),
        .S({\delay_cnt_reg_n_0_[20] ,\delay_cnt_reg_n_0_[19] ,\delay_cnt_reg_n_0_[18] ,\delay_cnt_reg_n_0_[17] }));
  CARRY4 delay_cnt0_carry__4
       (.CI(delay_cnt0_carry__3_n_0),
        .CO({delay_cnt0_carry__4_n_0,delay_cnt0_carry__4_n_1,delay_cnt0_carry__4_n_2,delay_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(delay_cnt0[24:21]),
        .S({\delay_cnt_reg_n_0_[24] ,\delay_cnt_reg_n_0_[23] ,\delay_cnt_reg_n_0_[22] ,\delay_cnt_reg_n_0_[21] }));
  CARRY4 delay_cnt0_carry__5
       (.CI(delay_cnt0_carry__4_n_0),
        .CO({delay_cnt0_carry__5_n_0,delay_cnt0_carry__5_n_1,delay_cnt0_carry__5_n_2,delay_cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(delay_cnt0[28:25]),
        .S({\delay_cnt_reg_n_0_[28] ,\delay_cnt_reg_n_0_[27] ,\delay_cnt_reg_n_0_[26] ,\delay_cnt_reg_n_0_[25] }));
  CARRY4 delay_cnt0_carry__6
       (.CI(delay_cnt0_carry__5_n_0),
        .CO({NLW_delay_cnt0_carry__6_CO_UNCONNECTED[3:2],delay_cnt0_carry__6_n_2,delay_cnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_delay_cnt0_carry__6_O_UNCONNECTED[3],delay_cnt0[31:29]}),
        .S({1'b0,\delay_cnt_reg_n_0_[31] ,\delay_cnt_reg_n_0_[30] ,\delay_cnt_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \delay_cnt[0]_i_1 
       (.I0(\delay_cnt_reg_n_0_[0] ),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[10]_i_1 
       (.I0(delay_cnt0[10]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[11]_i_1 
       (.I0(delay_cnt0[11]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[12]_i_1 
       (.I0(delay_cnt0[12]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[13]_i_1 
       (.I0(delay_cnt0[13]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[14]_i_1 
       (.I0(delay_cnt0[14]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[15]_i_1 
       (.I0(delay_cnt0[15]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[16]_i_1 
       (.I0(delay_cnt0[16]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[17]_i_1 
       (.I0(delay_cnt0[17]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[18]_i_1 
       (.I0(delay_cnt0[18]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[19]_i_1 
       (.I0(delay_cnt0[19]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[19]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[1]_i_1 
       (.I0(delay_cnt0[1]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[20]_i_1 
       (.I0(delay_cnt0[20]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[21]_i_1 
       (.I0(delay_cnt0[21]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[21]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[22]_i_1 
       (.I0(delay_cnt0[22]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[23]_i_1 
       (.I0(delay_cnt0[23]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[24]_i_1 
       (.I0(delay_cnt0[24]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[25]_i_1 
       (.I0(delay_cnt0[25]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[25]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[26]_i_1 
       (.I0(delay_cnt0[26]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[27]_i_1 
       (.I0(delay_cnt0[27]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[27]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[28]_i_1 
       (.I0(delay_cnt0[28]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[29]_i_1 
       (.I0(delay_cnt0[29]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[29]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[2]_i_1 
       (.I0(delay_cnt0[2]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[30]_i_1 
       (.I0(delay_cnt0[30]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[30]));
  LUT4 #(
    .INIT(16'h0001)) 
    \delay_cnt[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(\delay_cnt[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[31]_i_2 
       (.I0(delay_cnt0[31]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[31]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[3]_i_1 
       (.I0(delay_cnt0[3]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[4]_i_1 
       (.I0(delay_cnt0[4]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[5]_i_1 
       (.I0(delay_cnt0[5]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[6]_i_1 
       (.I0(delay_cnt0[6]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[7]_i_1 
       (.I0(delay_cnt0[7]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[8]_i_1 
       (.I0(delay_cnt0[8]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt[9]_i_1 
       (.I0(delay_cnt0[9]),
        .I1(\FSM_sequential_state[3]_i_3_n_0 ),
        .O(delay_cnt[9]));
  FDCE \delay_cnt_reg[0] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[0]),
        .Q(\delay_cnt_reg_n_0_[0] ));
  FDCE \delay_cnt_reg[10] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[10]),
        .Q(\delay_cnt_reg_n_0_[10] ));
  FDCE \delay_cnt_reg[11] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[11]),
        .Q(\delay_cnt_reg_n_0_[11] ));
  FDCE \delay_cnt_reg[12] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[12]),
        .Q(\delay_cnt_reg_n_0_[12] ));
  FDCE \delay_cnt_reg[13] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[13]),
        .Q(\delay_cnt_reg_n_0_[13] ));
  FDCE \delay_cnt_reg[14] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[14]),
        .Q(\delay_cnt_reg_n_0_[14] ));
  FDCE \delay_cnt_reg[15] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[15]),
        .Q(\delay_cnt_reg_n_0_[15] ));
  FDCE \delay_cnt_reg[16] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[16]),
        .Q(\delay_cnt_reg_n_0_[16] ));
  FDCE \delay_cnt_reg[17] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[17]),
        .Q(\delay_cnt_reg_n_0_[17] ));
  FDCE \delay_cnt_reg[18] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[18]),
        .Q(\delay_cnt_reg_n_0_[18] ));
  FDCE \delay_cnt_reg[19] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[19]),
        .Q(\delay_cnt_reg_n_0_[19] ));
  FDCE \delay_cnt_reg[1] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[1]),
        .Q(\delay_cnt_reg_n_0_[1] ));
  FDCE \delay_cnt_reg[20] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[20]),
        .Q(\delay_cnt_reg_n_0_[20] ));
  FDCE \delay_cnt_reg[21] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[21]),
        .Q(\delay_cnt_reg_n_0_[21] ));
  FDCE \delay_cnt_reg[22] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[22]),
        .Q(\delay_cnt_reg_n_0_[22] ));
  FDCE \delay_cnt_reg[23] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[23]),
        .Q(\delay_cnt_reg_n_0_[23] ));
  FDCE \delay_cnt_reg[24] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[24]),
        .Q(\delay_cnt_reg_n_0_[24] ));
  FDCE \delay_cnt_reg[25] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[25]),
        .Q(\delay_cnt_reg_n_0_[25] ));
  FDCE \delay_cnt_reg[26] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[26]),
        .Q(\delay_cnt_reg_n_0_[26] ));
  FDCE \delay_cnt_reg[27] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[27]),
        .Q(\delay_cnt_reg_n_0_[27] ));
  FDCE \delay_cnt_reg[28] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[28]),
        .Q(\delay_cnt_reg_n_0_[28] ));
  FDCE \delay_cnt_reg[29] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[29]),
        .Q(\delay_cnt_reg_n_0_[29] ));
  FDCE \delay_cnt_reg[2] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[2]),
        .Q(\delay_cnt_reg_n_0_[2] ));
  FDCE \delay_cnt_reg[30] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[30]),
        .Q(\delay_cnt_reg_n_0_[30] ));
  FDCE \delay_cnt_reg[31] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[31]),
        .Q(\delay_cnt_reg_n_0_[31] ));
  FDCE \delay_cnt_reg[3] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[3]),
        .Q(\delay_cnt_reg_n_0_[3] ));
  FDCE \delay_cnt_reg[4] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[4]),
        .Q(\delay_cnt_reg_n_0_[4] ));
  FDCE \delay_cnt_reg[5] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[5]),
        .Q(\delay_cnt_reg_n_0_[5] ));
  FDCE \delay_cnt_reg[6] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[6]),
        .Q(\delay_cnt_reg_n_0_[6] ));
  FDCE \delay_cnt_reg[7] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[7]),
        .Q(\delay_cnt_reg_n_0_[7] ));
  FDCE \delay_cnt_reg[8] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[8]),
        .Q(\delay_cnt_reg_n_0_[8] ));
  FDCE \delay_cnt_reg[9] 
       (.C(clk),
        .CE(\delay_cnt[31]_i_1_n_0 ),
        .CLR(u_i2c_driver_n_0),
        .D(delay_cnt[9]),
        .Q(\delay_cnt_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_addr[1]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .O(i2c_addr));
  LUT2 #(
    .INIT(4'h2)) 
    \i2c_addr[2]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .O(i2c_rh_wl));
  FDCE \i2c_addr_reg[1] 
       (.C(clk),
        .CE(i2c_rh_wl),
        .CLR(u_i2c_driver_n_0),
        .D(i2c_addr),
        .Q(\i2c_addr_reg_n_0_[1] ));
  FDCE \i2c_addr_reg[2] 
       (.C(clk),
        .CE(i2c_rh_wl),
        .CLR(u_i2c_driver_n_0),
        .D(1'b1),
        .Q(\i2c_addr_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i2c_data_w[5]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .O(i2c_data_w[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \i2c_data_w[6]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .O(i2c_data_w[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \i2c_data_w[7]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\i2c_data_w[7]_i_1_n_0 ));
  FDCE \i2c_data_w_reg[0] 
       (.C(clk),
        .CE(i2c_rh_wl),
        .CLR(u_i2c_driver_n_0),
        .D(state[2]),
        .Q(\i2c_data_w_reg_n_0_[0] ));
  FDCE \i2c_data_w_reg[5] 
       (.C(clk),
        .CE(i2c_rh_wl),
        .CLR(u_i2c_driver_n_0),
        .D(i2c_data_w[5]),
        .Q(\i2c_data_w_reg_n_0_[5] ));
  FDCE \i2c_data_w_reg[6] 
       (.C(clk),
        .CE(i2c_rh_wl),
        .CLR(u_i2c_driver_n_0),
        .D(i2c_data_w[6]),
        .Q(\i2c_data_w_reg_n_0_[6] ));
  FDCE \i2c_data_w_reg[7] 
       (.C(clk),
        .CE(i2c_rh_wl),
        .CLR(u_i2c_driver_n_0),
        .D(\i2c_data_w[7]_i_1_n_0 ),
        .Q(\i2c_data_w_reg_n_0_[7] ));
  FDCE i2c_done_meta_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_i2c_driver_n_0),
        .D(i2c_done),
        .Q(i2c_done_meta));
  FDCE i2c_done_sync_d_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_i2c_driver_n_0),
        .D(i2c_done_sync),
        .Q(i2c_done_sync_d));
  FDCE i2c_done_sync_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_i2c_driver_n_0),
        .D(i2c_done_meta),
        .Q(i2c_done_sync));
  LUT6 #(
    .INIT(64'h0F0F0F0F1E1E001E)) 
    i2c_exec_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(i2c_done_sync),
        .I4(i2c_done_sync_d),
        .I5(state[0]),
        .O(i2c_exec));
  FDCE i2c_exec_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_i2c_driver_n_0),
        .D(i2c_exec),
        .Q(i2c_exec_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFAAFFBA000000)) 
    init_done_i_1
       (.I0(state[0]),
        .I1(i2c_done_sync_d),
        .I2(i2c_done_sync),
        .I3(init_done_i_2_n_0),
        .I4(state[3]),
        .I5(init_done),
        .O(init_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    init_done_i_2
       (.I0(state[1]),
        .I1(state[2]),
        .O(init_done_i_2_n_0));
  FDCE init_done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_i2c_driver_n_0),
        .D(init_done_i_1_n_0),
        .Q(init_done));
  LUT2 #(
    .INIT(4'h2)) 
    init_error_i_2
       (.I0(i2c_done_sync),
        .I1(i2c_done_sync_d),
        .O(init_error_i_2_n_0));
  FDCE init_error_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(u_i2c_driver_n_0),
        .D(u_i2c_driver_n_3),
        .Q(init_error));
  System_adau7118_i2c_init_0_0_I2C_driver u_i2c_driver
       (.\FSM_sequential_state_reg[3] (u_i2c_driver_n_3),
        .Q({state[3],state[0]}),
        .\addr_t_reg[2]_0 ({\i2c_addr_reg_n_0_[2] ,\i2c_addr_reg_n_0_[1] }),
        .clk(clk),
        .\data_wr_t_reg[0]_0 (i2c_exec_reg_n_0),
        .\data_wr_t_reg[6]_0 (\i2c_data_w_reg_n_0_[6] ),
        .\data_wr_t_reg[7]_0 ({\i2c_data_w_reg_n_0_[7] ,\i2c_data_w_reg_n_0_[5] ,\i2c_data_w_reg_n_0_[0] }),
        .i2c_done(i2c_done),
        .init_error(init_error),
        .init_error_reg(init_done_i_2_n_0),
        .init_error_reg_0(init_error_i_2_n_0),
        .rst_n(rst_n),
        .rst_n_0(u_i2c_driver_n_0),
        .scl(scl),
        .sda(sda));
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
