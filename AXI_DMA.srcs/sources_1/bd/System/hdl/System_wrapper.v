//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Aug 10 11:16:16 2026
//Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
//Command     : generate_target System_wrapper.bd
//Design      : System_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module System_wrapper
   (BCLK1,
    BCLK2,
    BCLK3,
    BCLK4,
    BCLK5,
    BCLK6,
    BCLK7,
    BCLK8,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    FSYNC1,
    FSYNC2,
    FSYNC3,
    FSYNC4,
    FSYNC5,
    FSYNC6,
    FSYNC7,
    FSYNC8,
    LED_192K,
    LED_75K,
    SCL,
    SDATA1,
    SDATA2,
    SDATA3,
    SDATA4,
    SDATA5,
    SDATA6,
    SDATA7,
    SDATA8,
    sda);
  output BCLK1;
  output BCLK2;
  output BCLK3;
  output BCLK4;
  output BCLK5;
  output BCLK6;
  output BCLK7;
  output BCLK8;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output FSYNC1;
  output FSYNC2;
  output FSYNC3;
  output FSYNC4;
  output FSYNC5;
  output FSYNC6;
  output FSYNC7;
  output FSYNC8;
  output LED_192K;
  output LED_75K;
  output SCL;
  input SDATA1;
  input SDATA2;
  input SDATA3;
  input SDATA4;
  input SDATA5;
  input SDATA6;
  input SDATA7;
  input SDATA8;
  inout sda;

  wire BCLK1;
  wire BCLK2;
  wire BCLK3;
  wire BCLK4;
  wire BCLK5;
  wire BCLK6;
  wire BCLK7;
  wire BCLK8;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire FSYNC1;
  wire FSYNC2;
  wire FSYNC3;
  wire FSYNC4;
  wire FSYNC5;
  wire FSYNC6;
  wire FSYNC7;
  wire FSYNC8;
  wire LED_192K;
  wire LED_75K;
  wire SCL;
  wire SDATA1;
  wire SDATA2;
  wire SDATA3;
  wire SDATA4;
  wire SDATA5;
  wire SDATA6;
  wire SDATA7;
  wire SDATA8;
  wire sda;

  System System_i
       (.BCLK1(BCLK1),
        .BCLK2(BCLK2),
        .BCLK3(BCLK3),
        .BCLK4(BCLK4),
        .BCLK5(BCLK5),
        .BCLK6(BCLK6),
        .BCLK7(BCLK7),
        .BCLK8(BCLK8),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .FSYNC1(FSYNC1),
        .FSYNC2(FSYNC2),
        .FSYNC3(FSYNC3),
        .FSYNC4(FSYNC4),
        .FSYNC5(FSYNC5),
        .FSYNC6(FSYNC6),
        .FSYNC7(FSYNC7),
        .FSYNC8(FSYNC8),
        .LED_192K(LED_192K),
        .LED_75K(LED_75K),
        .SCL(SCL),
        .SDATA1(SDATA1),
        .SDATA2(SDATA2),
        .SDATA3(SDATA3),
        .SDATA4(SDATA4),
        .SDATA5(SDATA5),
        .SDATA6(SDATA6),
        .SDATA7(SDATA7),
        .SDATA8(SDATA8),
        .sda(sda));
endmodule
