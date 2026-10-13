-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 10 10:24:02 2026
-- Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Ruanjian/Vivado/zynq_chengxu/ZYNQ_7015/ZYNQ_7020_yuntu/AXI_DMA.srcs/sources_1/bd/System/ip/System_ADAU7118_0_0/System_ADAU7118_0_0_sim_netlist.vhdl
-- Design      : System_ADAU7118_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_ADAU7118_0_0_ADAU7118 is
  port (
    BIT_cnt : out STD_LOGIC_VECTOR ( 13 downto 0 );
    FSYNC1 : out STD_LOGIC;
    \BIT_cnt_reg[6]_rep_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ADAU7118_1_CH0_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH1_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH2_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH3_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH4_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH5_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH6_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH7_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    BCLK_reg_0 : out STD_LOGIC;
    m_axis_tvalid_reg_0 : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    pl_work : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    SDATA1 : in STD_LOGIC;
    SDATA2 : in STD_LOGIC;
    SDATA3 : in STD_LOGIC;
    SDATA4 : in STD_LOGIC;
    SDATA5 : in STD_LOGIC;
    SDATA6 : in STD_LOGIC;
    SDATA7 : in STD_LOGIC;
    SDATA8 : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of System_ADAU7118_0_0_ADAU7118 : entity is "ADAU7118";
end System_ADAU7118_0_0_ADAU7118;

architecture STRUCTURE of System_ADAU7118_0_0_ADAU7118 is
  signal \ADAU7118_1_CH0_o[23]_i_1_n_0\ : STD_LOGIC;
  signal \ADAU7118_1_CH0_o[23]_i_2_n_0\ : STD_LOGIC;
  signal BCLK_i_1_n_0 : STD_LOGIC;
  signal \^bclk_reg_0\ : STD_LOGIC;
  signal \^bit_cnt\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \BIT_cnt[11]_i_2_n_0\ : STD_LOGIC;
  signal \BIT_cnt[11]_i_3_n_0\ : STD_LOGIC;
  signal \BIT_cnt[11]_i_4_n_0\ : STD_LOGIC;
  signal \BIT_cnt[11]_i_5_n_0\ : STD_LOGIC;
  signal \BIT_cnt[15]_i_3_n_0\ : STD_LOGIC;
  signal \BIT_cnt[15]_i_4_n_0\ : STD_LOGIC;
  signal \BIT_cnt[15]_i_5_n_0\ : STD_LOGIC;
  signal \BIT_cnt[15]_i_6_n_0\ : STD_LOGIC;
  signal \BIT_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \BIT_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \BIT_cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \BIT_cnt[3]_i_5_n_0\ : STD_LOGIC;
  signal \BIT_cnt[3]_i_6_n_0\ : STD_LOGIC;
  signal \BIT_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \BIT_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \BIT_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \BIT_cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal \BIT_cnt_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \BIT_cnt_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \BIT_cnt_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \BIT_cnt_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \BIT_cnt_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \BIT_cnt_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \BIT_cnt_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \BIT_cnt_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \BIT_cnt_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \BIT_cnt_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \BIT_cnt_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \BIT_cnt_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \BIT_cnt_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \BIT_cnt_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \BIT_cnt_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \BIT_cnt_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \BIT_cnt_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \BIT_cnt_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \BIT_cnt_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \BIT_cnt_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \BIT_cnt_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \BIT_cnt_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \BIT_cnt_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \BIT_cnt_reg[5]_rep_n_0\ : STD_LOGIC;
  signal \^bit_cnt_reg[6]_rep_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \BIT_cnt_reg[6]_rep__0_n_0\ : STD_LOGIC;
  signal \BIT_cnt_reg[6]_rep__1_n_0\ : STD_LOGIC;
  signal \BIT_cnt_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \BIT_cnt_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \BIT_cnt_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \BIT_cnt_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \BIT_cnt_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \BIT_cnt_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \BIT_cnt_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \BIT_cnt_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \BIT_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \BIT_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \^fsync1\ : STD_LOGIC;
  signal bclk_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bclk_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \bclk_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bclk_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bclk_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \bclk_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \bclk_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \bclk_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \bclk_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \bclk_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal bclk_div_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \bclk_div_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__5_n_0\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__5_n_1\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__5_n_2\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__5_n_3\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__6_n_2\ : STD_LOGIC;
  signal \bclk_div_cnt0_carry__6_n_3\ : STD_LOGIC;
  signal bclk_div_cnt0_carry_n_0 : STD_LOGIC;
  signal bclk_div_cnt0_carry_n_1 : STD_LOGIC;
  signal bclk_div_cnt0_carry_n_2 : STD_LOGIC;
  signal bclk_div_cnt0_carry_n_3 : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \bclk_div_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal bclk_fall_tick : STD_LOGIC;
  signal bclk_rise_tick : STD_LOGIC;
  signal burst_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \burst_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \burst_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \burst_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \burst_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal burst_start : STD_LOGIC;
  signal burst_start_d1 : STD_LOGIC;
  signal burst_start_d2 : STD_LOGIC;
  signal burst_start_reg_n_0 : STD_LOGIC;
  signal \ch_reg[1][0][23]_i_1_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][10]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][10]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][11]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][11]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][12]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][12]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][13]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][13]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][14]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][14]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][15]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][15]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][16]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][16]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][17]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][17]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][18]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][18]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][19]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][19]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][1]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][1]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][20]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][20]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][21]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][21]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][22]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][22]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][23]_i_10_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][23]_i_1_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][23]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][23]_i_4_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][23]_i_5_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][23]_i_6_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][23]_i_7_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][23]_i_8_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][23]_i_9_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][2]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][2]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][3]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][3]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][4]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][4]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][5]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][5]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][6]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][6]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][7]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][7]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][8]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][8]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][9]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][1][9]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][2][23]_i_1_n_0\ : STD_LOGIC;
  signal \ch_reg[1][2][23]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][2][23]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][3][23]_i_1_n_0\ : STD_LOGIC;
  signal \ch_reg[1][4][23]_i_1_n_0\ : STD_LOGIC;
  signal \ch_reg[1][4][23]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][4][23]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[1][5][23]_i_1_n_0\ : STD_LOGIC;
  signal \ch_reg[1][5][23]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[1][6][23]_i_1_n_0\ : STD_LOGIC;
  signal \ch_reg[1][7][23]_i_1_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][10]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][10]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][11]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][11]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][12]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][12]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][13]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][13]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][14]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][14]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][15]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][15]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][16]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][16]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][17]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][17]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][18]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][18]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][19]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][19]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][1]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][1]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][20]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][20]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][21]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][21]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][22]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][22]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][23]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][23]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][2]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][2]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][3]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][3]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][4]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][4]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][5]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][5]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][6]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][6]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][7]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][7]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][8]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][8]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][9]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[2][1][9]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][10]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][10]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][11]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][11]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][12]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][12]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][13]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][13]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][14]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][14]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][15]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][15]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][16]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][16]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][17]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][17]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][18]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][18]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][19]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][19]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][1]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][1]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][20]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][20]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][21]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][21]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][22]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][22]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][23]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][23]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][2]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][2]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][3]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][3]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][4]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][4]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][5]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][5]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][6]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][6]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][7]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][7]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][8]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][8]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][9]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[3][1][9]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][10]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][10]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][11]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][11]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][12]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][12]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][13]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][13]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][14]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][14]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][15]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][15]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][16]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][16]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][17]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][17]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][18]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][18]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][19]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][19]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][1]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][1]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][20]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][20]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][21]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][21]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][22]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][22]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][23]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][23]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][2]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][2]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][3]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][3]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][4]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][4]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][5]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][5]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][6]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][6]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][7]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][7]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][8]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][8]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][9]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[4][1][9]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][10]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][10]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][11]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][11]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][12]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][12]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][13]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][13]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][14]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][14]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][15]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][15]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][16]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][16]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][17]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][17]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][18]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][18]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][19]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][19]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][1]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][1]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][20]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][20]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][21]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][21]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][22]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][22]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][23]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][23]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][2]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][2]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][3]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][3]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][4]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][4]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][5]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][5]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][6]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][6]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][7]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][7]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][8]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][8]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][9]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[5][1][9]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][10]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][10]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][11]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][11]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][12]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][12]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][13]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][13]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][14]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][14]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][15]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][15]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][16]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][16]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][17]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][17]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][18]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][18]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][19]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][19]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][1]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][1]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][20]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][20]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][21]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][21]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][22]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][22]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][23]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][23]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][2]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][2]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][3]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][3]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][4]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][4]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][5]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][5]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][6]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][6]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][7]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][7]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][8]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][8]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][9]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[6][1][9]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][10]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][10]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][11]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][11]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][12]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][12]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][13]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][13]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][14]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][14]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][15]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][15]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][16]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][16]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][17]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][17]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][18]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][18]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][19]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][19]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][1]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][1]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][20]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][20]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][21]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][21]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][22]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][22]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][23]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][23]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][2]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][2]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][3]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][3]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][4]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][4]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][5]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][5]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][6]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][6]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][7]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][7]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][8]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][8]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][9]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[7][1][9]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][10]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][10]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][11]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][11]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][12]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][12]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][13]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][13]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][14]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][14]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][15]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][15]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][16]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][16]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][17]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][17]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][18]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][18]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][19]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][19]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][1]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][1]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][20]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][20]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][21]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][21]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][22]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][22]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][23]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][23]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][2]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][2]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][3]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][3]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][4]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][4]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][5]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][5]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][6]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][6]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][7]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][7]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][8]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][8]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][9]_i_2_n_0\ : STD_LOGIC;
  signal \ch_reg[8][1][9]_i_3_n_0\ : STD_LOGIC;
  signal \ch_reg_reg[1][0]_7\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[1][1]_0\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[1][2]_1\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[1][3]_2\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[1][4]_3\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[1][5]_4\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[1][6]_5\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[1][7]_6\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[2][0]_15\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[2][1]_8\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[2][2]_9\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[2][3]_10\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[2][4]_11\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[2][5]_12\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[2][6]_13\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[2][7]_14\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[3][0]_23\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[3][1]_16\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[3][2]_17\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[3][3]_18\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[3][4]_19\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[3][5]_20\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[3][6]_21\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[3][7]_22\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[4][0]_31\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[4][1]_24\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[4][2]_25\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[4][3]_26\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[4][4]_27\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[4][5]_28\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[4][6]_29\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[4][7]_30\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[5][0]_39\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[5][1]_32\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[5][2]_33\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[5][3]_34\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[5][4]_35\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[5][5]_36\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[5][6]_37\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[5][7]_38\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[6][0]_47\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[6][1]_40\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[6][2]_41\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[6][3]_42\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[6][4]_43\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[6][5]_44\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[6][6]_45\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[6][7]_46\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[7][0]_55\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[7][1]_48\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[7][2]_49\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[7][3]_50\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[7][4]_51\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[7][5]_52\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[7][6]_53\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[7][7]_54\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[8][0]_63\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[8][1]_56\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[8][2]_57\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[8][3]_58\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[8][4]_59\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[8][5]_60\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[8][6]_61\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ch_reg_reg[8][7]_62\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal fsync_48K : STD_LOGIC;
  signal fsync_48K_i_10_n_0 : STD_LOGIC;
  signal fsync_48K_i_11_n_0 : STD_LOGIC;
  signal fsync_48K_i_12_n_0 : STD_LOGIC;
  signal fsync_48K_i_3_n_0 : STD_LOGIC;
  signal fsync_48K_i_4_n_0 : STD_LOGIC;
  signal fsync_48K_i_5_n_0 : STD_LOGIC;
  signal fsync_48K_i_6_n_0 : STD_LOGIC;
  signal fsync_48K_i_7_n_0 : STD_LOGIC;
  signal fsync_48K_i_8_n_0 : STD_LOGIC;
  signal fsync_48K_i_9_n_0 : STD_LOGIC;
  signal fsync_wait_cnt : STD_LOGIC;
  signal \fsync_wait_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \fsync_wait_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal led_cnt : STD_LOGIC;
  signal \led_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \led_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \led_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \led_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \led_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \led_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \led_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \led_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \led_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \led_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \led_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \led_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \led_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \led_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \led_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \led_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal led_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \led_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \led_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \led_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \led_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \led_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \led_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \led_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \led_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \led_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \led_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \led_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \led_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \led_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \led_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \led_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \led_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \led_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \led_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \led_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \led_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \led_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \led_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \led_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \led_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \led_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \led_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \led_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \led_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \led_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \led_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[100]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[100]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[100]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[101]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[101]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[101]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[102]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[102]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[102]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[103]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[103]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[103]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[104]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[104]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[104]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[105]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[105]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[105]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[106]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[106]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[106]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[107]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[107]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[107]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[108]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[108]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[108]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[109]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[109]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[109]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[110]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[110]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[110]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[111]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[111]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[111]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[112]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[112]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[112]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[113]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[113]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[113]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[114]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[114]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[114]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[115]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[115]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[115]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[116]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[116]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[116]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[117]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[117]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[117]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[118]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[118]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[118]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[119]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[119]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[119]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[120]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[120]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[120]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[121]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[121]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[121]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[122]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[122]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[122]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[123]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[123]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[123]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[124]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[124]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[124]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[125]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[125]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[125]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[126]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[126]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[126]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[127]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[127]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[127]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[127]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[32]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[32]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[32]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[33]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[33]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[33]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[34]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[34]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[34]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[35]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[35]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[35]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[36]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[36]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[36]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[37]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[37]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[37]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[38]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[38]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[38]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[39]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[39]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[39]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[40]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[40]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[40]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[41]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[41]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[41]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[42]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[42]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[42]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[43]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[43]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[43]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[44]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[44]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[44]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[45]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[45]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[45]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[46]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[46]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[46]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[47]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[47]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[47]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[48]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[48]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[48]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[49]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[49]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[49]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[50]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[50]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[50]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[51]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[51]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[51]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[52]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[52]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[52]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[53]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[53]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[53]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[54]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[54]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[54]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[55]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[55]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[55]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[56]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[56]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[56]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[57]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[57]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[57]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[58]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[58]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[58]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[59]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[59]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[59]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[60]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[60]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[60]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[61]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[61]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[61]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[62]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[62]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[62]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[63]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[63]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[63]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[64]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[64]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[64]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[65]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[65]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[65]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[66]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[66]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[66]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[67]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[67]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[67]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[68]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[68]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[68]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[69]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[69]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[69]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[70]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[70]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[70]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[71]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[71]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[71]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[72]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[72]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[72]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[73]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[73]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[73]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[74]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[74]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[74]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[75]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[75]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[75]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[76]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[76]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[76]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[77]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[77]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[77]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[78]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[78]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[78]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[79]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[79]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[79]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[80]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[80]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[80]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[81]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[81]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[81]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[82]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[82]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[82]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[83]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[83]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[83]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[84]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[84]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[84]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[85]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[85]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[85]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[86]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[86]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[86]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[87]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[87]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[87]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[88]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[88]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[88]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[89]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[89]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[89]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[90]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[90]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[90]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[91]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[91]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[91]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[92]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[92]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[92]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[93]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[93]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[93]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[94]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[94]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[94]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[95]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[95]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[95]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[96]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[96]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[96]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[97]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[97]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[97]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[98]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[98]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[98]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[99]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[99]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[99]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_2_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in_64 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal p_18_in : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal p_27_in : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal p_36_in : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal p_45_in : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal p_54_in : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal p_63_in : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal p_9_in : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal pcm_valid : STD_LOGIC;
  signal pcm_valid0 : STD_LOGIC;
  signal pcm_valid_i_1_n_0 : STD_LOGIC;
  signal pcm_valid_i_2_n_0 : STD_LOGIC;
  signal pcm_valid_i_4_n_0 : STD_LOGIC;
  signal pcm_valid_i_5_n_0 : STD_LOGIC;
  signal \^pl_work\ : STD_LOGIC;
  signal pl_work_i_1_n_0 : STD_LOGIC;
  signal pl_work_i_2_n_0 : STD_LOGIC;
  signal pl_work_i_3_n_0 : STD_LOGIC;
  signal pl_work_i_4_n_0 : STD_LOGIC;
  signal pl_work_i_5_n_0 : STD_LOGIC;
  signal \NLW_BIT_cnt_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_bclk_div_cnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bclk_div_cnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_led_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_led_cnt_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \BIT_cnt_reg[5]\ : label is "BIT_cnt_reg[5]";
  attribute ORIG_CELL_NAME of \BIT_cnt_reg[5]_rep\ : label is "BIT_cnt_reg[5]";
  attribute ORIG_CELL_NAME of \BIT_cnt_reg[5]_rep__0\ : label is "BIT_cnt_reg[5]";
  attribute ORIG_CELL_NAME of \BIT_cnt_reg[6]\ : label is "BIT_cnt_reg[6]";
  attribute ORIG_CELL_NAME of \BIT_cnt_reg[6]_rep\ : label is "BIT_cnt_reg[6]";
  attribute ORIG_CELL_NAME of \BIT_cnt_reg[6]_rep__0\ : label is "BIT_cnt_reg[6]";
  attribute ORIG_CELL_NAME of \BIT_cnt_reg[6]_rep__1\ : label is "BIT_cnt_reg[6]";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bclk_cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bclk_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bclk_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bclk_cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bclk_cnt[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \burst_cnt[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ch_reg[1][1][23]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ch_reg[1][1][23]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ch_reg[1][2][23]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ch_reg[1][2][23]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ch_reg[1][4][23]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ch_reg[1][5][23]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of fsync_48K_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \fsync_wait_cnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fsync_wait_cnt[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fsync_wait_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fsync_wait_cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fsync_wait_cnt[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_axis_tlast_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of pcm_valid_i_3 : label is "soft_lutpair3";
begin
  BCLK_reg_0 <= \^bclk_reg_0\;
  BIT_cnt(13 downto 0) <= \^bit_cnt\(13 downto 0);
  \BIT_cnt_reg[6]_rep_0\(1 downto 0) <= \^bit_cnt_reg[6]_rep_0\(1 downto 0);
  FSYNC1 <= \^fsync1\;
  m_axis_tlast <= \^m_axis_tlast\;
  m_axis_tvalid_reg_0 <= \^m_axis_tvalid_reg_0\;
  pl_work <= \^pl_work\;
\ADAU7118_1_CH0_o[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \^bclk_reg_0\,
      I1 => fsync_48K_i_7_n_0,
      I2 => fsync_48K_i_6_n_0,
      I3 => fsync_48K_i_5_n_0,
      I4 => fsync_48K_i_4_n_0,
      I5 => burst_start,
      O => \ADAU7118_1_CH0_o[23]_i_1_n_0\
    );
\ADAU7118_1_CH0_o[23]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_rst_n,
      O => \ADAU7118_1_CH0_o[23]_i_2_n_0\
    );
\ADAU7118_1_CH0_o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(0),
      Q => ADAU7118_1_CH0_o(0)
    );
\ADAU7118_1_CH0_o_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(10),
      Q => ADAU7118_1_CH0_o(10)
    );
\ADAU7118_1_CH0_o_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(11),
      Q => ADAU7118_1_CH0_o(11)
    );
\ADAU7118_1_CH0_o_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(12),
      Q => ADAU7118_1_CH0_o(12)
    );
\ADAU7118_1_CH0_o_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(13),
      Q => ADAU7118_1_CH0_o(13)
    );
\ADAU7118_1_CH0_o_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(14),
      Q => ADAU7118_1_CH0_o(14)
    );
\ADAU7118_1_CH0_o_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(15),
      Q => ADAU7118_1_CH0_o(15)
    );
\ADAU7118_1_CH0_o_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(16),
      Q => ADAU7118_1_CH0_o(16)
    );
\ADAU7118_1_CH0_o_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(17),
      Q => ADAU7118_1_CH0_o(17)
    );
\ADAU7118_1_CH0_o_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(18),
      Q => ADAU7118_1_CH0_o(18)
    );
\ADAU7118_1_CH0_o_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(19),
      Q => ADAU7118_1_CH0_o(19)
    );
\ADAU7118_1_CH0_o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(1),
      Q => ADAU7118_1_CH0_o(1)
    );
\ADAU7118_1_CH0_o_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(20),
      Q => ADAU7118_1_CH0_o(20)
    );
\ADAU7118_1_CH0_o_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(21),
      Q => ADAU7118_1_CH0_o(21)
    );
\ADAU7118_1_CH0_o_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(22),
      Q => ADAU7118_1_CH0_o(22)
    );
\ADAU7118_1_CH0_o_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(23),
      Q => ADAU7118_1_CH0_o(23)
    );
\ADAU7118_1_CH0_o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(2),
      Q => ADAU7118_1_CH0_o(2)
    );
\ADAU7118_1_CH0_o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(3),
      Q => ADAU7118_1_CH0_o(3)
    );
\ADAU7118_1_CH0_o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(4),
      Q => ADAU7118_1_CH0_o(4)
    );
\ADAU7118_1_CH0_o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(5),
      Q => ADAU7118_1_CH0_o(5)
    );
\ADAU7118_1_CH0_o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(6),
      Q => ADAU7118_1_CH0_o(6)
    );
\ADAU7118_1_CH0_o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(7),
      Q => ADAU7118_1_CH0_o(7)
    );
\ADAU7118_1_CH0_o_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(8),
      Q => ADAU7118_1_CH0_o(8)
    );
\ADAU7118_1_CH0_o_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][0]_7\(9),
      Q => ADAU7118_1_CH0_o(9)
    );
\ADAU7118_1_CH1_o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(0),
      Q => ADAU7118_1_CH1_o(0)
    );
\ADAU7118_1_CH1_o_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(10),
      Q => ADAU7118_1_CH1_o(10)
    );
\ADAU7118_1_CH1_o_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(11),
      Q => ADAU7118_1_CH1_o(11)
    );
\ADAU7118_1_CH1_o_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(12),
      Q => ADAU7118_1_CH1_o(12)
    );
\ADAU7118_1_CH1_o_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(13),
      Q => ADAU7118_1_CH1_o(13)
    );
\ADAU7118_1_CH1_o_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(14),
      Q => ADAU7118_1_CH1_o(14)
    );
\ADAU7118_1_CH1_o_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(15),
      Q => ADAU7118_1_CH1_o(15)
    );
\ADAU7118_1_CH1_o_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(16),
      Q => ADAU7118_1_CH1_o(16)
    );
\ADAU7118_1_CH1_o_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(17),
      Q => ADAU7118_1_CH1_o(17)
    );
\ADAU7118_1_CH1_o_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(18),
      Q => ADAU7118_1_CH1_o(18)
    );
\ADAU7118_1_CH1_o_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(19),
      Q => ADAU7118_1_CH1_o(19)
    );
\ADAU7118_1_CH1_o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(1),
      Q => ADAU7118_1_CH1_o(1)
    );
\ADAU7118_1_CH1_o_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(20),
      Q => ADAU7118_1_CH1_o(20)
    );
\ADAU7118_1_CH1_o_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(21),
      Q => ADAU7118_1_CH1_o(21)
    );
\ADAU7118_1_CH1_o_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(22),
      Q => ADAU7118_1_CH1_o(22)
    );
\ADAU7118_1_CH1_o_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(23),
      Q => ADAU7118_1_CH1_o(23)
    );
\ADAU7118_1_CH1_o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(2),
      Q => ADAU7118_1_CH1_o(2)
    );
\ADAU7118_1_CH1_o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(3),
      Q => ADAU7118_1_CH1_o(3)
    );
\ADAU7118_1_CH1_o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(4),
      Q => ADAU7118_1_CH1_o(4)
    );
\ADAU7118_1_CH1_o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(5),
      Q => ADAU7118_1_CH1_o(5)
    );
\ADAU7118_1_CH1_o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(6),
      Q => ADAU7118_1_CH1_o(6)
    );
\ADAU7118_1_CH1_o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(7),
      Q => ADAU7118_1_CH1_o(7)
    );
\ADAU7118_1_CH1_o_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(8),
      Q => ADAU7118_1_CH1_o(8)
    );
\ADAU7118_1_CH1_o_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][1]_0\(9),
      Q => ADAU7118_1_CH1_o(9)
    );
\ADAU7118_1_CH2_o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(0),
      Q => ADAU7118_1_CH2_o(0)
    );
\ADAU7118_1_CH2_o_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(10),
      Q => ADAU7118_1_CH2_o(10)
    );
\ADAU7118_1_CH2_o_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(11),
      Q => ADAU7118_1_CH2_o(11)
    );
\ADAU7118_1_CH2_o_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(12),
      Q => ADAU7118_1_CH2_o(12)
    );
\ADAU7118_1_CH2_o_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(13),
      Q => ADAU7118_1_CH2_o(13)
    );
\ADAU7118_1_CH2_o_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(14),
      Q => ADAU7118_1_CH2_o(14)
    );
\ADAU7118_1_CH2_o_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(15),
      Q => ADAU7118_1_CH2_o(15)
    );
\ADAU7118_1_CH2_o_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(16),
      Q => ADAU7118_1_CH2_o(16)
    );
\ADAU7118_1_CH2_o_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(17),
      Q => ADAU7118_1_CH2_o(17)
    );
\ADAU7118_1_CH2_o_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(18),
      Q => ADAU7118_1_CH2_o(18)
    );
\ADAU7118_1_CH2_o_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(19),
      Q => ADAU7118_1_CH2_o(19)
    );
\ADAU7118_1_CH2_o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(1),
      Q => ADAU7118_1_CH2_o(1)
    );
\ADAU7118_1_CH2_o_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(20),
      Q => ADAU7118_1_CH2_o(20)
    );
\ADAU7118_1_CH2_o_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(21),
      Q => ADAU7118_1_CH2_o(21)
    );
\ADAU7118_1_CH2_o_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(22),
      Q => ADAU7118_1_CH2_o(22)
    );
\ADAU7118_1_CH2_o_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(23),
      Q => ADAU7118_1_CH2_o(23)
    );
\ADAU7118_1_CH2_o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(2),
      Q => ADAU7118_1_CH2_o(2)
    );
\ADAU7118_1_CH2_o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(3),
      Q => ADAU7118_1_CH2_o(3)
    );
\ADAU7118_1_CH2_o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(4),
      Q => ADAU7118_1_CH2_o(4)
    );
\ADAU7118_1_CH2_o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(5),
      Q => ADAU7118_1_CH2_o(5)
    );
\ADAU7118_1_CH2_o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(6),
      Q => ADAU7118_1_CH2_o(6)
    );
\ADAU7118_1_CH2_o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(7),
      Q => ADAU7118_1_CH2_o(7)
    );
\ADAU7118_1_CH2_o_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(8),
      Q => ADAU7118_1_CH2_o(8)
    );
\ADAU7118_1_CH2_o_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][2]_1\(9),
      Q => ADAU7118_1_CH2_o(9)
    );
\ADAU7118_1_CH3_o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(0),
      Q => ADAU7118_1_CH3_o(0)
    );
\ADAU7118_1_CH3_o_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(10),
      Q => ADAU7118_1_CH3_o(10)
    );
\ADAU7118_1_CH3_o_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(11),
      Q => ADAU7118_1_CH3_o(11)
    );
\ADAU7118_1_CH3_o_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(12),
      Q => ADAU7118_1_CH3_o(12)
    );
\ADAU7118_1_CH3_o_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(13),
      Q => ADAU7118_1_CH3_o(13)
    );
\ADAU7118_1_CH3_o_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(14),
      Q => ADAU7118_1_CH3_o(14)
    );
\ADAU7118_1_CH3_o_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(15),
      Q => ADAU7118_1_CH3_o(15)
    );
\ADAU7118_1_CH3_o_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(16),
      Q => ADAU7118_1_CH3_o(16)
    );
\ADAU7118_1_CH3_o_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(17),
      Q => ADAU7118_1_CH3_o(17)
    );
\ADAU7118_1_CH3_o_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(18),
      Q => ADAU7118_1_CH3_o(18)
    );
\ADAU7118_1_CH3_o_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(19),
      Q => ADAU7118_1_CH3_o(19)
    );
\ADAU7118_1_CH3_o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(1),
      Q => ADAU7118_1_CH3_o(1)
    );
\ADAU7118_1_CH3_o_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(20),
      Q => ADAU7118_1_CH3_o(20)
    );
\ADAU7118_1_CH3_o_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(21),
      Q => ADAU7118_1_CH3_o(21)
    );
\ADAU7118_1_CH3_o_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(22),
      Q => ADAU7118_1_CH3_o(22)
    );
\ADAU7118_1_CH3_o_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(23),
      Q => ADAU7118_1_CH3_o(23)
    );
\ADAU7118_1_CH3_o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(2),
      Q => ADAU7118_1_CH3_o(2)
    );
\ADAU7118_1_CH3_o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(3),
      Q => ADAU7118_1_CH3_o(3)
    );
\ADAU7118_1_CH3_o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(4),
      Q => ADAU7118_1_CH3_o(4)
    );
\ADAU7118_1_CH3_o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(5),
      Q => ADAU7118_1_CH3_o(5)
    );
\ADAU7118_1_CH3_o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(6),
      Q => ADAU7118_1_CH3_o(6)
    );
\ADAU7118_1_CH3_o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(7),
      Q => ADAU7118_1_CH3_o(7)
    );
\ADAU7118_1_CH3_o_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(8),
      Q => ADAU7118_1_CH3_o(8)
    );
\ADAU7118_1_CH3_o_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][3]_2\(9),
      Q => ADAU7118_1_CH3_o(9)
    );
\ADAU7118_1_CH4_o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(0),
      Q => ADAU7118_1_CH4_o(0)
    );
\ADAU7118_1_CH4_o_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(10),
      Q => ADAU7118_1_CH4_o(10)
    );
\ADAU7118_1_CH4_o_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(11),
      Q => ADAU7118_1_CH4_o(11)
    );
\ADAU7118_1_CH4_o_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(12),
      Q => ADAU7118_1_CH4_o(12)
    );
\ADAU7118_1_CH4_o_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(13),
      Q => ADAU7118_1_CH4_o(13)
    );
\ADAU7118_1_CH4_o_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(14),
      Q => ADAU7118_1_CH4_o(14)
    );
\ADAU7118_1_CH4_o_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(15),
      Q => ADAU7118_1_CH4_o(15)
    );
\ADAU7118_1_CH4_o_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(16),
      Q => ADAU7118_1_CH4_o(16)
    );
\ADAU7118_1_CH4_o_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(17),
      Q => ADAU7118_1_CH4_o(17)
    );
\ADAU7118_1_CH4_o_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(18),
      Q => ADAU7118_1_CH4_o(18)
    );
\ADAU7118_1_CH4_o_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(19),
      Q => ADAU7118_1_CH4_o(19)
    );
\ADAU7118_1_CH4_o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(1),
      Q => ADAU7118_1_CH4_o(1)
    );
\ADAU7118_1_CH4_o_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(20),
      Q => ADAU7118_1_CH4_o(20)
    );
\ADAU7118_1_CH4_o_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(21),
      Q => ADAU7118_1_CH4_o(21)
    );
\ADAU7118_1_CH4_o_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(22),
      Q => ADAU7118_1_CH4_o(22)
    );
\ADAU7118_1_CH4_o_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(23),
      Q => ADAU7118_1_CH4_o(23)
    );
\ADAU7118_1_CH4_o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(2),
      Q => ADAU7118_1_CH4_o(2)
    );
\ADAU7118_1_CH4_o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(3),
      Q => ADAU7118_1_CH4_o(3)
    );
\ADAU7118_1_CH4_o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(4),
      Q => ADAU7118_1_CH4_o(4)
    );
\ADAU7118_1_CH4_o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(5),
      Q => ADAU7118_1_CH4_o(5)
    );
\ADAU7118_1_CH4_o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(6),
      Q => ADAU7118_1_CH4_o(6)
    );
\ADAU7118_1_CH4_o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(7),
      Q => ADAU7118_1_CH4_o(7)
    );
\ADAU7118_1_CH4_o_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(8),
      Q => ADAU7118_1_CH4_o(8)
    );
\ADAU7118_1_CH4_o_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][4]_3\(9),
      Q => ADAU7118_1_CH4_o(9)
    );
\ADAU7118_1_CH5_o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(0),
      Q => ADAU7118_1_CH5_o(0)
    );
\ADAU7118_1_CH5_o_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(10),
      Q => ADAU7118_1_CH5_o(10)
    );
\ADAU7118_1_CH5_o_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(11),
      Q => ADAU7118_1_CH5_o(11)
    );
\ADAU7118_1_CH5_o_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(12),
      Q => ADAU7118_1_CH5_o(12)
    );
\ADAU7118_1_CH5_o_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(13),
      Q => ADAU7118_1_CH5_o(13)
    );
\ADAU7118_1_CH5_o_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(14),
      Q => ADAU7118_1_CH5_o(14)
    );
\ADAU7118_1_CH5_o_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(15),
      Q => ADAU7118_1_CH5_o(15)
    );
\ADAU7118_1_CH5_o_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(16),
      Q => ADAU7118_1_CH5_o(16)
    );
\ADAU7118_1_CH5_o_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(17),
      Q => ADAU7118_1_CH5_o(17)
    );
\ADAU7118_1_CH5_o_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(18),
      Q => ADAU7118_1_CH5_o(18)
    );
\ADAU7118_1_CH5_o_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(19),
      Q => ADAU7118_1_CH5_o(19)
    );
\ADAU7118_1_CH5_o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(1),
      Q => ADAU7118_1_CH5_o(1)
    );
\ADAU7118_1_CH5_o_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(20),
      Q => ADAU7118_1_CH5_o(20)
    );
\ADAU7118_1_CH5_o_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(21),
      Q => ADAU7118_1_CH5_o(21)
    );
\ADAU7118_1_CH5_o_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(22),
      Q => ADAU7118_1_CH5_o(22)
    );
\ADAU7118_1_CH5_o_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(23),
      Q => ADAU7118_1_CH5_o(23)
    );
\ADAU7118_1_CH5_o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(2),
      Q => ADAU7118_1_CH5_o(2)
    );
\ADAU7118_1_CH5_o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(3),
      Q => ADAU7118_1_CH5_o(3)
    );
\ADAU7118_1_CH5_o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(4),
      Q => ADAU7118_1_CH5_o(4)
    );
\ADAU7118_1_CH5_o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(5),
      Q => ADAU7118_1_CH5_o(5)
    );
\ADAU7118_1_CH5_o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(6),
      Q => ADAU7118_1_CH5_o(6)
    );
\ADAU7118_1_CH5_o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(7),
      Q => ADAU7118_1_CH5_o(7)
    );
\ADAU7118_1_CH5_o_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(8),
      Q => ADAU7118_1_CH5_o(8)
    );
\ADAU7118_1_CH5_o_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][5]_4\(9),
      Q => ADAU7118_1_CH5_o(9)
    );
\ADAU7118_1_CH6_o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(0),
      Q => ADAU7118_1_CH6_o(0)
    );
\ADAU7118_1_CH6_o_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(10),
      Q => ADAU7118_1_CH6_o(10)
    );
\ADAU7118_1_CH6_o_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(11),
      Q => ADAU7118_1_CH6_o(11)
    );
\ADAU7118_1_CH6_o_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(12),
      Q => ADAU7118_1_CH6_o(12)
    );
\ADAU7118_1_CH6_o_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(13),
      Q => ADAU7118_1_CH6_o(13)
    );
\ADAU7118_1_CH6_o_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(14),
      Q => ADAU7118_1_CH6_o(14)
    );
\ADAU7118_1_CH6_o_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(15),
      Q => ADAU7118_1_CH6_o(15)
    );
\ADAU7118_1_CH6_o_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(16),
      Q => ADAU7118_1_CH6_o(16)
    );
\ADAU7118_1_CH6_o_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(17),
      Q => ADAU7118_1_CH6_o(17)
    );
\ADAU7118_1_CH6_o_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(18),
      Q => ADAU7118_1_CH6_o(18)
    );
\ADAU7118_1_CH6_o_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(19),
      Q => ADAU7118_1_CH6_o(19)
    );
\ADAU7118_1_CH6_o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(1),
      Q => ADAU7118_1_CH6_o(1)
    );
\ADAU7118_1_CH6_o_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(20),
      Q => ADAU7118_1_CH6_o(20)
    );
\ADAU7118_1_CH6_o_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(21),
      Q => ADAU7118_1_CH6_o(21)
    );
\ADAU7118_1_CH6_o_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(22),
      Q => ADAU7118_1_CH6_o(22)
    );
\ADAU7118_1_CH6_o_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(23),
      Q => ADAU7118_1_CH6_o(23)
    );
\ADAU7118_1_CH6_o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(2),
      Q => ADAU7118_1_CH6_o(2)
    );
\ADAU7118_1_CH6_o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(3),
      Q => ADAU7118_1_CH6_o(3)
    );
\ADAU7118_1_CH6_o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(4),
      Q => ADAU7118_1_CH6_o(4)
    );
\ADAU7118_1_CH6_o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(5),
      Q => ADAU7118_1_CH6_o(5)
    );
\ADAU7118_1_CH6_o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(6),
      Q => ADAU7118_1_CH6_o(6)
    );
\ADAU7118_1_CH6_o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(7),
      Q => ADAU7118_1_CH6_o(7)
    );
\ADAU7118_1_CH6_o_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(8),
      Q => ADAU7118_1_CH6_o(8)
    );
\ADAU7118_1_CH6_o_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][6]_5\(9),
      Q => ADAU7118_1_CH6_o(9)
    );
\ADAU7118_1_CH7_o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(0),
      Q => ADAU7118_1_CH7_o(0)
    );
\ADAU7118_1_CH7_o_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(10),
      Q => ADAU7118_1_CH7_o(10)
    );
\ADAU7118_1_CH7_o_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(11),
      Q => ADAU7118_1_CH7_o(11)
    );
\ADAU7118_1_CH7_o_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(12),
      Q => ADAU7118_1_CH7_o(12)
    );
\ADAU7118_1_CH7_o_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(13),
      Q => ADAU7118_1_CH7_o(13)
    );
\ADAU7118_1_CH7_o_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(14),
      Q => ADAU7118_1_CH7_o(14)
    );
\ADAU7118_1_CH7_o_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(15),
      Q => ADAU7118_1_CH7_o(15)
    );
\ADAU7118_1_CH7_o_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(16),
      Q => ADAU7118_1_CH7_o(16)
    );
\ADAU7118_1_CH7_o_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(17),
      Q => ADAU7118_1_CH7_o(17)
    );
\ADAU7118_1_CH7_o_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(18),
      Q => ADAU7118_1_CH7_o(18)
    );
\ADAU7118_1_CH7_o_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(19),
      Q => ADAU7118_1_CH7_o(19)
    );
\ADAU7118_1_CH7_o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(1),
      Q => ADAU7118_1_CH7_o(1)
    );
\ADAU7118_1_CH7_o_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(20),
      Q => ADAU7118_1_CH7_o(20)
    );
\ADAU7118_1_CH7_o_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(21),
      Q => ADAU7118_1_CH7_o(21)
    );
\ADAU7118_1_CH7_o_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(22),
      Q => ADAU7118_1_CH7_o(22)
    );
\ADAU7118_1_CH7_o_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(23),
      Q => ADAU7118_1_CH7_o(23)
    );
\ADAU7118_1_CH7_o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(2),
      Q => ADAU7118_1_CH7_o(2)
    );
\ADAU7118_1_CH7_o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(3),
      Q => ADAU7118_1_CH7_o(3)
    );
\ADAU7118_1_CH7_o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(4),
      Q => ADAU7118_1_CH7_o(4)
    );
\ADAU7118_1_CH7_o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(5),
      Q => ADAU7118_1_CH7_o(5)
    );
\ADAU7118_1_CH7_o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(6),
      Q => ADAU7118_1_CH7_o(6)
    );
\ADAU7118_1_CH7_o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(7),
      Q => ADAU7118_1_CH7_o(7)
    );
\ADAU7118_1_CH7_o_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(8),
      Q => ADAU7118_1_CH7_o(8)
    );
\ADAU7118_1_CH7_o_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \ADAU7118_1_CH0_o[23]_i_1_n_0\,
      CLR => \ADAU7118_1_CH0_o[23]_i_2_n_0\,
      D => \ch_reg_reg[1][7]_6\(9),
      Q => ADAU7118_1_CH7_o(9)
    );
BCLK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0010"
    )
        port map (
      I0 => fsync_48K_i_4_n_0,
      I1 => fsync_48K_i_5_n_0,
      I2 => fsync_48K_i_6_n_0,
      I3 => fsync_48K_i_7_n_0,
      I4 => \^bclk_reg_0\,
      O => BCLK_i_1_n_0
    );
BCLK_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => BCLK_i_1_n_0,
      Q => \^bclk_reg_0\
    );
\BIT_cnt[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(9),
      I1 => \^fsync1\,
      O => \BIT_cnt[11]_i_2_n_0\
    );
\BIT_cnt[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(8),
      I1 => \^fsync1\,
      O => \BIT_cnt[11]_i_3_n_0\
    );
\BIT_cnt[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(7),
      I1 => \^fsync1\,
      O => \BIT_cnt[11]_i_4_n_0\
    );
\BIT_cnt[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(6),
      I1 => \^fsync1\,
      O => \BIT_cnt[11]_i_5_n_0\
    );
\BIT_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => fsync_48K_i_4_n_0,
      I1 => fsync_48K_i_5_n_0,
      I2 => fsync_48K_i_6_n_0,
      I3 => fsync_48K_i_7_n_0,
      I4 => \^bclk_reg_0\,
      O => bclk_rise_tick
    );
\BIT_cnt[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(13),
      I1 => \^fsync1\,
      O => \BIT_cnt[15]_i_3_n_0\
    );
\BIT_cnt[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(12),
      I1 => \^fsync1\,
      O => \BIT_cnt[15]_i_4_n_0\
    );
\BIT_cnt[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(11),
      I1 => \^fsync1\,
      O => \BIT_cnt[15]_i_5_n_0\
    );
\BIT_cnt[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(10),
      I1 => \^fsync1\,
      O => \BIT_cnt[15]_i_6_n_0\
    );
\BIT_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(0),
      I1 => \^fsync1\,
      O => \BIT_cnt[3]_i_2_n_0\
    );
\BIT_cnt[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(3),
      I1 => \^fsync1\,
      O => \BIT_cnt[3]_i_3_n_0\
    );
\BIT_cnt[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(2),
      I1 => \^fsync1\,
      O => \BIT_cnt[3]_i_4_n_0\
    );
\BIT_cnt[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(1),
      I1 => \^fsync1\,
      O => \BIT_cnt[3]_i_5_n_0\
    );
\BIT_cnt[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bit_cnt\(0),
      I1 => \^fsync1\,
      O => \BIT_cnt[3]_i_6_n_0\
    );
\BIT_cnt[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(5),
      I1 => \^fsync1\,
      O => \BIT_cnt[7]_i_2_n_0\
    );
\BIT_cnt[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I1 => \^fsync1\,
      O => \BIT_cnt[7]_i_3_n_0\
    );
\BIT_cnt[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt_reg[6]_rep_0\(0),
      I1 => \^fsync1\,
      O => \BIT_cnt[7]_i_4_n_0\
    );
\BIT_cnt[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt\(4),
      I1 => \^fsync1\,
      O => \BIT_cnt[7]_i_5_n_0\
    );
\BIT_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[3]_i_1_n_7\,
      Q => \^bit_cnt\(0)
    );
\BIT_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[11]_i_1_n_5\,
      Q => \^bit_cnt\(8)
    );
\BIT_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[11]_i_1_n_4\,
      Q => \^bit_cnt\(9)
    );
\BIT_cnt_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BIT_cnt_reg[7]_i_1_n_0\,
      CO(3) => \BIT_cnt_reg[11]_i_1_n_0\,
      CO(2) => \BIT_cnt_reg[11]_i_1_n_1\,
      CO(1) => \BIT_cnt_reg[11]_i_1_n_2\,
      CO(0) => \BIT_cnt_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BIT_cnt_reg[11]_i_1_n_4\,
      O(2) => \BIT_cnt_reg[11]_i_1_n_5\,
      O(1) => \BIT_cnt_reg[11]_i_1_n_6\,
      O(0) => \BIT_cnt_reg[11]_i_1_n_7\,
      S(3) => \BIT_cnt[11]_i_2_n_0\,
      S(2) => \BIT_cnt[11]_i_3_n_0\,
      S(1) => \BIT_cnt[11]_i_4_n_0\,
      S(0) => \BIT_cnt[11]_i_5_n_0\
    );
\BIT_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[15]_i_2_n_7\,
      Q => \^bit_cnt\(10)
    );
\BIT_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[15]_i_2_n_6\,
      Q => \^bit_cnt\(11)
    );
\BIT_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[15]_i_2_n_5\,
      Q => \^bit_cnt\(12)
    );
\BIT_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[15]_i_2_n_4\,
      Q => \^bit_cnt\(13)
    );
\BIT_cnt_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \BIT_cnt_reg[11]_i_1_n_0\,
      CO(3) => \NLW_BIT_cnt_reg[15]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \BIT_cnt_reg[15]_i_2_n_1\,
      CO(1) => \BIT_cnt_reg[15]_i_2_n_2\,
      CO(0) => \BIT_cnt_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BIT_cnt_reg[15]_i_2_n_4\,
      O(2) => \BIT_cnt_reg[15]_i_2_n_5\,
      O(1) => \BIT_cnt_reg[15]_i_2_n_6\,
      O(0) => \BIT_cnt_reg[15]_i_2_n_7\,
      S(3) => \BIT_cnt[15]_i_3_n_0\,
      S(2) => \BIT_cnt[15]_i_4_n_0\,
      S(1) => \BIT_cnt[15]_i_5_n_0\,
      S(0) => \BIT_cnt[15]_i_6_n_0\
    );
\BIT_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[3]_i_1_n_6\,
      Q => \^bit_cnt\(1)
    );
\BIT_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[3]_i_1_n_5\,
      Q => \^bit_cnt\(2)
    );
\BIT_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[3]_i_1_n_4\,
      Q => \^bit_cnt\(3)
    );
\BIT_cnt_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \BIT_cnt_reg[3]_i_1_n_0\,
      CO(2) => \BIT_cnt_reg[3]_i_1_n_1\,
      CO(1) => \BIT_cnt_reg[3]_i_1_n_2\,
      CO(0) => \BIT_cnt_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \BIT_cnt[3]_i_2_n_0\,
      O(3) => \BIT_cnt_reg[3]_i_1_n_4\,
      O(2) => \BIT_cnt_reg[3]_i_1_n_5\,
      O(1) => \BIT_cnt_reg[3]_i_1_n_6\,
      O(0) => \BIT_cnt_reg[3]_i_1_n_7\,
      S(3) => \BIT_cnt[3]_i_3_n_0\,
      S(2) => \BIT_cnt[3]_i_4_n_0\,
      S(1) => \BIT_cnt[3]_i_5_n_0\,
      S(0) => \BIT_cnt[3]_i_6_n_0\
    );
\BIT_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[7]_i_1_n_7\,
      Q => \^bit_cnt\(4)
    );
\BIT_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[7]_i_1_n_6\,
      Q => \BIT_cnt_reg_n_0_[5]\
    );
\BIT_cnt_reg[5]_rep\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[7]_i_1_n_6\,
      Q => \BIT_cnt_reg[5]_rep_n_0\
    );
\BIT_cnt_reg[5]_rep__0\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[7]_i_1_n_6\,
      Q => \^bit_cnt_reg[6]_rep_0\(0)
    );
\BIT_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[7]_i_1_n_5\,
      Q => \BIT_cnt_reg_n_0_[6]\
    );
\BIT_cnt_reg[6]_rep\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[7]_i_1_n_5\,
      Q => \^bit_cnt_reg[6]_rep_0\(1)
    );
\BIT_cnt_reg[6]_rep__0\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[7]_i_1_n_5\,
      Q => \BIT_cnt_reg[6]_rep__0_n_0\
    );
\BIT_cnt_reg[6]_rep__1\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[7]_i_1_n_5\,
      Q => \BIT_cnt_reg[6]_rep__1_n_0\
    );
\BIT_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[7]_i_1_n_4\,
      Q => \^bit_cnt\(5)
    );
\BIT_cnt_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BIT_cnt_reg[3]_i_1_n_0\,
      CO(3) => \BIT_cnt_reg[7]_i_1_n_0\,
      CO(2) => \BIT_cnt_reg[7]_i_1_n_1\,
      CO(1) => \BIT_cnt_reg[7]_i_1_n_2\,
      CO(0) => \BIT_cnt_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \BIT_cnt_reg[7]_i_1_n_4\,
      O(2) => \BIT_cnt_reg[7]_i_1_n_5\,
      O(1) => \BIT_cnt_reg[7]_i_1_n_6\,
      O(0) => \BIT_cnt_reg[7]_i_1_n_7\,
      S(3) => \BIT_cnt[7]_i_2_n_0\,
      S(2) => \BIT_cnt[7]_i_3_n_0\,
      S(1) => \BIT_cnt[7]_i_4_n_0\,
      S(0) => \BIT_cnt[7]_i_5_n_0\
    );
\BIT_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[11]_i_1_n_7\,
      Q => \^bit_cnt\(6)
    );
\BIT_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \BIT_cnt_reg[11]_i_1_n_6\,
      Q => \^bit_cnt\(7)
    );
\bclk_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bclk_cnt_reg_n_0_[0]\,
      O => bclk_cnt(0)
    );
\bclk_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bclk_cnt_reg_n_0_[0]\,
      I1 => \bclk_cnt_reg_n_0_[1]\,
      O => bclk_cnt(1)
    );
\bclk_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \bclk_cnt_reg_n_0_[2]\,
      I1 => \bclk_cnt_reg_n_0_[0]\,
      I2 => \bclk_cnt_reg_n_0_[1]\,
      O => bclk_cnt(2)
    );
\bclk_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \bclk_cnt_reg_n_0_[3]\,
      I1 => \bclk_cnt_reg_n_0_[1]\,
      I2 => \bclk_cnt_reg_n_0_[0]\,
      I3 => \bclk_cnt_reg_n_0_[2]\,
      O => bclk_cnt(3)
    );
\bclk_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \bclk_cnt_reg_n_0_[4]\,
      I1 => \bclk_cnt_reg_n_0_[3]\,
      I2 => \bclk_cnt_reg_n_0_[1]\,
      I3 => \bclk_cnt_reg_n_0_[0]\,
      I4 => \bclk_cnt_reg_n_0_[2]\,
      O => \bclk_cnt[4]_i_1_n_0\
    );
\bclk_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \bclk_cnt_reg_n_0_[5]\,
      I1 => \bclk_cnt_reg_n_0_[3]\,
      I2 => \bclk_cnt_reg_n_0_[1]\,
      I3 => \bclk_cnt_reg_n_0_[0]\,
      I4 => \bclk_cnt_reg_n_0_[2]\,
      I5 => \bclk_cnt_reg_n_0_[4]\,
      O => bclk_cnt(5)
    );
\bclk_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => fsync_48K_i_8_n_0,
      I1 => \bclk_cnt_reg_n_0_[6]\,
      O => bclk_cnt(6)
    );
\bclk_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \bclk_cnt_reg_n_0_[7]\,
      I1 => fsync_48K_i_8_n_0,
      I2 => \bclk_cnt_reg_n_0_[6]\,
      O => bclk_cnt(7)
    );
\bclk_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_fall_tick,
      CLR => fsync_48K_i_3_n_0,
      D => bclk_cnt(0),
      Q => \bclk_cnt_reg_n_0_[0]\
    );
\bclk_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_fall_tick,
      CLR => fsync_48K_i_3_n_0,
      D => bclk_cnt(1),
      Q => \bclk_cnt_reg_n_0_[1]\
    );
\bclk_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_fall_tick,
      CLR => fsync_48K_i_3_n_0,
      D => bclk_cnt(2),
      Q => \bclk_cnt_reg_n_0_[2]\
    );
\bclk_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_fall_tick,
      CLR => fsync_48K_i_3_n_0,
      D => bclk_cnt(3),
      Q => \bclk_cnt_reg_n_0_[3]\
    );
\bclk_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_fall_tick,
      CLR => fsync_48K_i_3_n_0,
      D => \bclk_cnt[4]_i_1_n_0\,
      Q => \bclk_cnt_reg_n_0_[4]\
    );
\bclk_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_fall_tick,
      CLR => fsync_48K_i_3_n_0,
      D => bclk_cnt(5),
      Q => \bclk_cnt_reg_n_0_[5]\
    );
\bclk_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_fall_tick,
      CLR => fsync_48K_i_3_n_0,
      D => bclk_cnt(6),
      Q => \bclk_cnt_reg_n_0_[6]\
    );
\bclk_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_fall_tick,
      CLR => fsync_48K_i_3_n_0,
      D => bclk_cnt(7),
      Q => \bclk_cnt_reg_n_0_[7]\
    );
bclk_div_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bclk_div_cnt0_carry_n_0,
      CO(2) => bclk_div_cnt0_carry_n_1,
      CO(1) => bclk_div_cnt0_carry_n_2,
      CO(0) => bclk_div_cnt0_carry_n_3,
      CYINIT => \bclk_div_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \bclk_div_cnt_reg_n_0_[4]\,
      S(2) => \bclk_div_cnt_reg_n_0_[3]\,
      S(1) => \bclk_div_cnt_reg_n_0_[2]\,
      S(0) => \bclk_div_cnt_reg_n_0_[1]\
    );
\bclk_div_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => bclk_div_cnt0_carry_n_0,
      CO(3) => \bclk_div_cnt0_carry__0_n_0\,
      CO(2) => \bclk_div_cnt0_carry__0_n_1\,
      CO(1) => \bclk_div_cnt0_carry__0_n_2\,
      CO(0) => \bclk_div_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \bclk_div_cnt_reg_n_0_[8]\,
      S(2) => \bclk_div_cnt_reg_n_0_[7]\,
      S(1) => \bclk_div_cnt_reg_n_0_[6]\,
      S(0) => \bclk_div_cnt_reg_n_0_[5]\
    );
\bclk_div_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bclk_div_cnt0_carry__0_n_0\,
      CO(3) => \bclk_div_cnt0_carry__1_n_0\,
      CO(2) => \bclk_div_cnt0_carry__1_n_1\,
      CO(1) => \bclk_div_cnt0_carry__1_n_2\,
      CO(0) => \bclk_div_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \bclk_div_cnt_reg_n_0_[12]\,
      S(2) => \bclk_div_cnt_reg_n_0_[11]\,
      S(1) => \bclk_div_cnt_reg_n_0_[10]\,
      S(0) => \bclk_div_cnt_reg_n_0_[9]\
    );
\bclk_div_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bclk_div_cnt0_carry__1_n_0\,
      CO(3) => \bclk_div_cnt0_carry__2_n_0\,
      CO(2) => \bclk_div_cnt0_carry__2_n_1\,
      CO(1) => \bclk_div_cnt0_carry__2_n_2\,
      CO(0) => \bclk_div_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \bclk_div_cnt_reg_n_0_[16]\,
      S(2) => \bclk_div_cnt_reg_n_0_[15]\,
      S(1) => \bclk_div_cnt_reg_n_0_[14]\,
      S(0) => \bclk_div_cnt_reg_n_0_[13]\
    );
\bclk_div_cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bclk_div_cnt0_carry__2_n_0\,
      CO(3) => \bclk_div_cnt0_carry__3_n_0\,
      CO(2) => \bclk_div_cnt0_carry__3_n_1\,
      CO(1) => \bclk_div_cnt0_carry__3_n_2\,
      CO(0) => \bclk_div_cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \bclk_div_cnt_reg_n_0_[20]\,
      S(2) => \bclk_div_cnt_reg_n_0_[19]\,
      S(1) => \bclk_div_cnt_reg_n_0_[18]\,
      S(0) => \bclk_div_cnt_reg_n_0_[17]\
    );
\bclk_div_cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \bclk_div_cnt0_carry__3_n_0\,
      CO(3) => \bclk_div_cnt0_carry__4_n_0\,
      CO(2) => \bclk_div_cnt0_carry__4_n_1\,
      CO(1) => \bclk_div_cnt0_carry__4_n_2\,
      CO(0) => \bclk_div_cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \bclk_div_cnt_reg_n_0_[24]\,
      S(2) => \bclk_div_cnt_reg_n_0_[23]\,
      S(1) => \bclk_div_cnt_reg_n_0_[22]\,
      S(0) => \bclk_div_cnt_reg_n_0_[21]\
    );
\bclk_div_cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \bclk_div_cnt0_carry__4_n_0\,
      CO(3) => \bclk_div_cnt0_carry__5_n_0\,
      CO(2) => \bclk_div_cnt0_carry__5_n_1\,
      CO(1) => \bclk_div_cnt0_carry__5_n_2\,
      CO(0) => \bclk_div_cnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \bclk_div_cnt_reg_n_0_[28]\,
      S(2) => \bclk_div_cnt_reg_n_0_[27]\,
      S(1) => \bclk_div_cnt_reg_n_0_[26]\,
      S(0) => \bclk_div_cnt_reg_n_0_[25]\
    );
\bclk_div_cnt0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \bclk_div_cnt0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_bclk_div_cnt0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bclk_div_cnt0_carry__6_n_2\,
      CO(0) => \bclk_div_cnt0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bclk_div_cnt0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \bclk_div_cnt_reg_n_0_[31]\,
      S(1) => \bclk_div_cnt_reg_n_0_[30]\,
      S(0) => \bclk_div_cnt_reg_n_0_[29]\
    );
\bclk_div_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555455"
    )
        port map (
      I0 => \bclk_div_cnt_reg_n_0_[0]\,
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(0)
    );
\bclk_div_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(10),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(10)
    );
\bclk_div_cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(11),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(11)
    );
\bclk_div_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(12),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(12)
    );
\bclk_div_cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(13),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(13)
    );
\bclk_div_cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(14),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(14)
    );
\bclk_div_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(15),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(15)
    );
\bclk_div_cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(16),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(16)
    );
\bclk_div_cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(17),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(17)
    );
\bclk_div_cnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(18),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(18)
    );
\bclk_div_cnt[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(19),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(19)
    );
\bclk_div_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(1),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(1)
    );
\bclk_div_cnt[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(20),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(20)
    );
\bclk_div_cnt[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(21),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(21)
    );
\bclk_div_cnt[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(22),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(22)
    );
\bclk_div_cnt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(23),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(23)
    );
\bclk_div_cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(24),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(24)
    );
\bclk_div_cnt[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(25),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(25)
    );
\bclk_div_cnt[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(26),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(26)
    );
\bclk_div_cnt[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(27),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(27)
    );
\bclk_div_cnt[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(28),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(28)
    );
\bclk_div_cnt[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(29),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(29)
    );
\bclk_div_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(2),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(2)
    );
\bclk_div_cnt[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(30),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(30)
    );
\bclk_div_cnt[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(31),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(31)
    );
\bclk_div_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(3),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(3)
    );
\bclk_div_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(4),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(4)
    );
\bclk_div_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(5),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(5)
    );
\bclk_div_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(6),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(6)
    );
\bclk_div_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(7),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(7)
    );
\bclk_div_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(8),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(8)
    );
\bclk_div_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => data0(9),
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_div_cnt(9)
    );
\bclk_div_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(0),
      Q => \bclk_div_cnt_reg_n_0_[0]\
    );
\bclk_div_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(10),
      Q => \bclk_div_cnt_reg_n_0_[10]\
    );
\bclk_div_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(11),
      Q => \bclk_div_cnt_reg_n_0_[11]\
    );
\bclk_div_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(12),
      Q => \bclk_div_cnt_reg_n_0_[12]\
    );
\bclk_div_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(13),
      Q => \bclk_div_cnt_reg_n_0_[13]\
    );
\bclk_div_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(14),
      Q => \bclk_div_cnt_reg_n_0_[14]\
    );
\bclk_div_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(15),
      Q => \bclk_div_cnt_reg_n_0_[15]\
    );
\bclk_div_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(16),
      Q => \bclk_div_cnt_reg_n_0_[16]\
    );
\bclk_div_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(17),
      Q => \bclk_div_cnt_reg_n_0_[17]\
    );
\bclk_div_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(18),
      Q => \bclk_div_cnt_reg_n_0_[18]\
    );
\bclk_div_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(19),
      Q => \bclk_div_cnt_reg_n_0_[19]\
    );
\bclk_div_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(1),
      Q => \bclk_div_cnt_reg_n_0_[1]\
    );
\bclk_div_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(20),
      Q => \bclk_div_cnt_reg_n_0_[20]\
    );
\bclk_div_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(21),
      Q => \bclk_div_cnt_reg_n_0_[21]\
    );
\bclk_div_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(22),
      Q => \bclk_div_cnt_reg_n_0_[22]\
    );
\bclk_div_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(23),
      Q => \bclk_div_cnt_reg_n_0_[23]\
    );
\bclk_div_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(24),
      Q => \bclk_div_cnt_reg_n_0_[24]\
    );
\bclk_div_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(25),
      Q => \bclk_div_cnt_reg_n_0_[25]\
    );
\bclk_div_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(26),
      Q => \bclk_div_cnt_reg_n_0_[26]\
    );
\bclk_div_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(27),
      Q => \bclk_div_cnt_reg_n_0_[27]\
    );
\bclk_div_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(28),
      Q => \bclk_div_cnt_reg_n_0_[28]\
    );
\bclk_div_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(29),
      Q => \bclk_div_cnt_reg_n_0_[29]\
    );
\bclk_div_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(2),
      Q => \bclk_div_cnt_reg_n_0_[2]\
    );
\bclk_div_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(30),
      Q => \bclk_div_cnt_reg_n_0_[30]\
    );
\bclk_div_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(31),
      Q => \bclk_div_cnt_reg_n_0_[31]\
    );
\bclk_div_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(3),
      Q => \bclk_div_cnt_reg_n_0_[3]\
    );
\bclk_div_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(4),
      Q => \bclk_div_cnt_reg_n_0_[4]\
    );
\bclk_div_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(5),
      Q => \bclk_div_cnt_reg_n_0_[5]\
    );
\bclk_div_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(6),
      Q => \bclk_div_cnt_reg_n_0_[6]\
    );
\bclk_div_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(7),
      Q => \bclk_div_cnt_reg_n_0_[7]\
    );
\bclk_div_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(8),
      Q => \bclk_div_cnt_reg_n_0_[8]\
    );
\bclk_div_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => bclk_div_cnt(9),
      Q => \bclk_div_cnt_reg_n_0_[9]\
    );
\burst_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF0F0F0FB0B0B0B0"
    )
        port map (
      I0 => burst_start_d2,
      I1 => burst_start_d1,
      I2 => burst_cnt(0),
      I3 => burst_cnt(1),
      I4 => burst_cnt(2),
      I5 => \burst_cnt[2]_i_2_n_0\,
      O => \burst_cnt[0]_i_1_n_0\
    );
\burst_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFF00FF0BB00BB00"
    )
        port map (
      I0 => burst_start_d2,
      I1 => burst_start_d1,
      I2 => burst_cnt(0),
      I3 => burst_cnt(1),
      I4 => burst_cnt(2),
      I5 => \burst_cnt[2]_i_2_n_0\,
      O => \burst_cnt[1]_i_1_n_0\
    );
\burst_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFF000BBBB0000"
    )
        port map (
      I0 => burst_start_d2,
      I1 => burst_start_d1,
      I2 => burst_cnt(0),
      I3 => burst_cnt(1),
      I4 => burst_cnt(2),
      I5 => \burst_cnt[2]_i_2_n_0\,
      O => \burst_cnt[2]_i_1_n_0\
    );
\burst_cnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_reg_0\,
      O => \burst_cnt[2]_i_2_n_0\
    );
\burst_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => pl_work_i_2_n_0,
      D => \burst_cnt[0]_i_1_n_0\,
      Q => burst_cnt(0)
    );
\burst_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => pl_work_i_2_n_0,
      D => \burst_cnt[1]_i_1_n_0\,
      Q => burst_cnt(1)
    );
\burst_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => pl_work_i_2_n_0,
      D => \burst_cnt[2]_i_1_n_0\,
      Q => burst_cnt(2)
    );
burst_start_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => pl_work_i_2_n_0,
      D => burst_start_reg_n_0,
      Q => burst_start_d1
    );
burst_start_d2_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => pl_work_i_2_n_0,
      D => burst_start_d1,
      Q => burst_start_d2
    );
burst_start_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pcm_valid,
      I1 => \^fsync1\,
      O => burst_start
    );
burst_start_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_rise_tick,
      CLR => pl_work_i_2_n_0,
      D => burst_start,
      Q => burst_start_reg_n_0
    );
\ch_reg[1][0][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \ch_reg[1][2][23]_i_2_n_0\,
      I1 => \ch_reg[1][1][23]_i_3_n_0\,
      I2 => \ch_reg[1][1][23]_i_4_n_0\,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      I5 => \^bclk_reg_0\,
      O => \ch_reg[1][0][23]_i_1_n_0\
    );
\ch_reg[1][1][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(9),
      I1 => \ch_reg_reg[1][2]_1\(9),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(9),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(9),
      O => \ch_reg[1][1][10]_i_2_n_0\
    );
\ch_reg[1][1][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(9),
      I1 => \ch_reg_reg[1][6]_5\(9),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(9),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(9),
      O => \ch_reg[1][1][10]_i_3_n_0\
    );
\ch_reg[1][1][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(10),
      I1 => \ch_reg_reg[1][2]_1\(10),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(10),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(10),
      O => \ch_reg[1][1][11]_i_2_n_0\
    );
\ch_reg[1][1][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(10),
      I1 => \ch_reg_reg[1][6]_5\(10),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(10),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(10),
      O => \ch_reg[1][1][11]_i_3_n_0\
    );
\ch_reg[1][1][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(11),
      I1 => \ch_reg_reg[1][2]_1\(11),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(11),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(11),
      O => \ch_reg[1][1][12]_i_2_n_0\
    );
\ch_reg[1][1][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(11),
      I1 => \ch_reg_reg[1][6]_5\(11),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(11),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(11),
      O => \ch_reg[1][1][12]_i_3_n_0\
    );
\ch_reg[1][1][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(12),
      I1 => \ch_reg_reg[1][2]_1\(12),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(12),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(12),
      O => \ch_reg[1][1][13]_i_2_n_0\
    );
\ch_reg[1][1][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(12),
      I1 => \ch_reg_reg[1][6]_5\(12),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(12),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(12),
      O => \ch_reg[1][1][13]_i_3_n_0\
    );
\ch_reg[1][1][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(13),
      I1 => \ch_reg_reg[1][2]_1\(13),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(13),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(13),
      O => \ch_reg[1][1][14]_i_2_n_0\
    );
\ch_reg[1][1][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(13),
      I1 => \ch_reg_reg[1][6]_5\(13),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(13),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(13),
      O => \ch_reg[1][1][14]_i_3_n_0\
    );
\ch_reg[1][1][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(14),
      I1 => \ch_reg_reg[1][2]_1\(14),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(14),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(14),
      O => \ch_reg[1][1][15]_i_2_n_0\
    );
\ch_reg[1][1][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(14),
      I1 => \ch_reg_reg[1][6]_5\(14),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(14),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(14),
      O => \ch_reg[1][1][15]_i_3_n_0\
    );
\ch_reg[1][1][16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(15),
      I1 => \ch_reg_reg[1][2]_1\(15),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(15),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(15),
      O => \ch_reg[1][1][16]_i_2_n_0\
    );
\ch_reg[1][1][16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(15),
      I1 => \ch_reg_reg[1][6]_5\(15),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(15),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(15),
      O => \ch_reg[1][1][16]_i_3_n_0\
    );
\ch_reg[1][1][17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(16),
      I1 => \ch_reg_reg[1][2]_1\(16),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(16),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(16),
      O => \ch_reg[1][1][17]_i_2_n_0\
    );
\ch_reg[1][1][17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(16),
      I1 => \ch_reg_reg[1][6]_5\(16),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(16),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(16),
      O => \ch_reg[1][1][17]_i_3_n_0\
    );
\ch_reg[1][1][18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(17),
      I1 => \ch_reg_reg[1][2]_1\(17),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(17),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(17),
      O => \ch_reg[1][1][18]_i_2_n_0\
    );
\ch_reg[1][1][18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(17),
      I1 => \ch_reg_reg[1][6]_5\(17),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(17),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(17),
      O => \ch_reg[1][1][18]_i_3_n_0\
    );
\ch_reg[1][1][19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(18),
      I1 => \ch_reg_reg[1][2]_1\(18),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(18),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(18),
      O => \ch_reg[1][1][19]_i_2_n_0\
    );
\ch_reg[1][1][19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(18),
      I1 => \ch_reg_reg[1][6]_5\(18),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(18),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(18),
      O => \ch_reg[1][1][19]_i_3_n_0\
    );
\ch_reg[1][1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(0),
      I1 => \ch_reg_reg[1][2]_1\(0),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(0),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(0),
      O => \ch_reg[1][1][1]_i_2_n_0\
    );
\ch_reg[1][1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(0),
      I1 => \ch_reg_reg[1][6]_5\(0),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(0),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(0),
      O => \ch_reg[1][1][1]_i_3_n_0\
    );
\ch_reg[1][1][20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(19),
      I1 => \ch_reg_reg[1][2]_1\(19),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(19),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(19),
      O => \ch_reg[1][1][20]_i_2_n_0\
    );
\ch_reg[1][1][20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(19),
      I1 => \ch_reg_reg[1][6]_5\(19),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(19),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(19),
      O => \ch_reg[1][1][20]_i_3_n_0\
    );
\ch_reg[1][1][21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(20),
      I1 => \ch_reg_reg[1][2]_1\(20),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(20),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(20),
      O => \ch_reg[1][1][21]_i_2_n_0\
    );
\ch_reg[1][1][21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(20),
      I1 => \ch_reg_reg[1][6]_5\(20),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(20),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(20),
      O => \ch_reg[1][1][21]_i_3_n_0\
    );
\ch_reg[1][1][22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(21),
      I1 => \ch_reg_reg[1][2]_1\(21),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(21),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(21),
      O => \ch_reg[1][1][22]_i_2_n_0\
    );
\ch_reg[1][1][22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(21),
      I1 => \ch_reg_reg[1][6]_5\(21),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(21),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(21),
      O => \ch_reg[1][1][22]_i_3_n_0\
    );
\ch_reg[1][1][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \ch_reg[1][1][23]_i_3_n_0\,
      I1 => \ch_reg[1][1][23]_i_4_n_0\,
      I2 => fsync_48K_i_6_n_0,
      I3 => fsync_48K_i_7_n_0,
      I4 => \^bclk_reg_0\,
      I5 => \ch_reg[1][1][23]_i_5_n_0\,
      O => \ch_reg[1][1][23]_i_1_n_0\
    );
\ch_reg[1][1][23]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAEAEAEAAB"
    )
        port map (
      I0 => \^bit_cnt\(5),
      I1 => \^bit_cnt\(3),
      I2 => \^bit_cnt\(4),
      I3 => \^bit_cnt\(0),
      I4 => \^bit_cnt\(2),
      I5 => \^bit_cnt\(1),
      O => \ch_reg[1][1][23]_i_10_n_0\
    );
\ch_reg[1][1][23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^fsync1\,
      I1 => sys_rst_n,
      I2 => \^bit_cnt_reg[6]_rep_0\(1),
      O => \ch_reg[1][1][23]_i_3_n_0\
    );
\ch_reg[1][1][23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => fsync_48K_i_9_n_0,
      I1 => \ch_reg[1][1][23]_i_8_n_0\,
      I2 => fsync_48K_i_10_n_0,
      I3 => \ch_reg[1][1][23]_i_9_n_0\,
      O => \ch_reg[1][1][23]_i_4_n_0\
    );
\ch_reg[1][1][23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bit_cnt_reg[6]_rep_0\(0),
      I1 => \ch_reg[1][1][23]_i_10_n_0\,
      O => \ch_reg[1][1][23]_i_5_n_0\
    );
\ch_reg[1][1][23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(22),
      I1 => \ch_reg_reg[1][2]_1\(22),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(22),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(22),
      O => \ch_reg[1][1][23]_i_6_n_0\
    );
\ch_reg[1][1][23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(22),
      I1 => \ch_reg_reg[1][6]_5\(22),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(22),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(22),
      O => \ch_reg[1][1][23]_i_7_n_0\
    );
\ch_reg[1][1][23]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bclk_div_cnt_reg_n_0_[23]\,
      I1 => \bclk_div_cnt_reg_n_0_[6]\,
      I2 => \bclk_div_cnt_reg_n_0_[10]\,
      I3 => \bclk_div_cnt_reg_n_0_[12]\,
      O => \ch_reg[1][1][23]_i_8_n_0\
    );
\ch_reg[1][1][23]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bclk_div_cnt_reg_n_0_[11]\,
      I1 => \bclk_div_cnt_reg_n_0_[13]\,
      I2 => \bclk_div_cnt_reg_n_0_[24]\,
      I3 => \bclk_div_cnt_reg_n_0_[1]\,
      O => \ch_reg[1][1][23]_i_9_n_0\
    );
\ch_reg[1][1][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(1),
      I1 => \ch_reg_reg[1][2]_1\(1),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(1),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(1),
      O => \ch_reg[1][1][2]_i_2_n_0\
    );
\ch_reg[1][1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(1),
      I1 => \ch_reg_reg[1][6]_5\(1),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(1),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(1),
      O => \ch_reg[1][1][2]_i_3_n_0\
    );
\ch_reg[1][1][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(2),
      I1 => \ch_reg_reg[1][2]_1\(2),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(2),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(2),
      O => \ch_reg[1][1][3]_i_2_n_0\
    );
\ch_reg[1][1][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(2),
      I1 => \ch_reg_reg[1][6]_5\(2),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(2),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(2),
      O => \ch_reg[1][1][3]_i_3_n_0\
    );
\ch_reg[1][1][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(3),
      I1 => \ch_reg_reg[1][2]_1\(3),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(3),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(3),
      O => \ch_reg[1][1][4]_i_2_n_0\
    );
\ch_reg[1][1][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(3),
      I1 => \ch_reg_reg[1][6]_5\(3),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(3),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(3),
      O => \ch_reg[1][1][4]_i_3_n_0\
    );
\ch_reg[1][1][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(4),
      I1 => \ch_reg_reg[1][2]_1\(4),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(4),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(4),
      O => \ch_reg[1][1][5]_i_2_n_0\
    );
\ch_reg[1][1][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(4),
      I1 => \ch_reg_reg[1][6]_5\(4),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(4),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(4),
      O => \ch_reg[1][1][5]_i_3_n_0\
    );
\ch_reg[1][1][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(5),
      I1 => \ch_reg_reg[1][2]_1\(5),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(5),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(5),
      O => \ch_reg[1][1][6]_i_2_n_0\
    );
\ch_reg[1][1][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(5),
      I1 => \ch_reg_reg[1][6]_5\(5),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(5),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(5),
      O => \ch_reg[1][1][6]_i_3_n_0\
    );
\ch_reg[1][1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(6),
      I1 => \ch_reg_reg[1][2]_1\(6),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(6),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(6),
      O => \ch_reg[1][1][7]_i_2_n_0\
    );
\ch_reg[1][1][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(6),
      I1 => \ch_reg_reg[1][6]_5\(6),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(6),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(6),
      O => \ch_reg[1][1][7]_i_3_n_0\
    );
\ch_reg[1][1][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(7),
      I1 => \ch_reg_reg[1][2]_1\(7),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(7),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(7),
      O => \ch_reg[1][1][8]_i_2_n_0\
    );
\ch_reg[1][1][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(7),
      I1 => \ch_reg_reg[1][6]_5\(7),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(7),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(7),
      O => \ch_reg[1][1][8]_i_3_n_0\
    );
\ch_reg[1][1][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(8),
      I1 => \ch_reg_reg[1][2]_1\(8),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][1]_0\(8),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][0]_7\(8),
      O => \ch_reg[1][1][9]_i_2_n_0\
    );
\ch_reg[1][1][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(8),
      I1 => \ch_reg_reg[1][6]_5\(8),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[1][5]_4\(8),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[1][4]_3\(8),
      O => \ch_reg[1][1][9]_i_3_n_0\
    );
\ch_reg[1][2][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \ch_reg[1][2][23]_i_2_n_0\,
      I1 => \ch_reg[1][2][23]_i_3_n_0\,
      I2 => \ch_reg[1][1][23]_i_4_n_0\,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      I5 => \^bclk_reg_0\,
      O => \ch_reg[1][2][23]_i_1_n_0\
    );
\ch_reg[1][2][23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bit_cnt_reg[6]_rep_0\(0),
      I1 => \ch_reg[1][1][23]_i_10_n_0\,
      O => \ch_reg[1][2][23]_i_2_n_0\
    );
\ch_reg[1][2][23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => sys_rst_n,
      I1 => \^fsync1\,
      I2 => \^bit_cnt_reg[6]_rep_0\(1),
      O => \ch_reg[1][2][23]_i_3_n_0\
    );
\ch_reg[1][3][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \ch_reg[1][1][23]_i_5_n_0\,
      I1 => \ch_reg[1][2][23]_i_3_n_0\,
      I2 => \ch_reg[1][1][23]_i_4_n_0\,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      I5 => \^bclk_reg_0\,
      O => \ch_reg[1][3][23]_i_1_n_0\
    );
\ch_reg[1][4][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \ch_reg[1][1][23]_i_3_n_0\,
      I1 => \ch_reg[1][1][23]_i_4_n_0\,
      I2 => fsync_48K_i_6_n_0,
      I3 => fsync_48K_i_7_n_0,
      I4 => \^bclk_reg_0\,
      I5 => \ch_reg[1][4][23]_i_2_n_0\,
      O => \ch_reg[1][4][23]_i_1_n_0\
    );
\ch_reg[1][4][23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^bit_cnt_reg[6]_rep_0\(0),
      I1 => \ch_reg[1][4][23]_i_3_n_0\,
      O => \ch_reg[1][4][23]_i_2_n_0\
    );
\ch_reg[1][4][23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888881FFFFFFFF"
    )
        port map (
      I0 => \^bit_cnt\(3),
      I1 => \^bit_cnt\(4),
      I2 => \^bit_cnt\(0),
      I3 => \^bit_cnt\(2),
      I4 => \^bit_cnt\(1),
      I5 => \^bit_cnt\(5),
      O => \ch_reg[1][4][23]_i_3_n_0\
    );
\ch_reg[1][5][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \ch_reg[1][1][23]_i_3_n_0\,
      I1 => \ch_reg[1][1][23]_i_4_n_0\,
      I2 => fsync_48K_i_6_n_0,
      I3 => fsync_48K_i_7_n_0,
      I4 => \^bclk_reg_0\,
      I5 => \ch_reg[1][5][23]_i_2_n_0\,
      O => \ch_reg[1][5][23]_i_1_n_0\
    );
\ch_reg[1][5][23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ch_reg[1][4][23]_i_3_n_0\,
      I1 => \^bit_cnt_reg[6]_rep_0\(0),
      O => \ch_reg[1][5][23]_i_2_n_0\
    );
\ch_reg[1][6][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \ch_reg[1][2][23]_i_3_n_0\,
      I1 => \ch_reg[1][1][23]_i_4_n_0\,
      I2 => fsync_48K_i_6_n_0,
      I3 => fsync_48K_i_7_n_0,
      I4 => \^bclk_reg_0\,
      I5 => \ch_reg[1][4][23]_i_2_n_0\,
      O => \ch_reg[1][6][23]_i_1_n_0\
    );
\ch_reg[1][7][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \ch_reg[1][2][23]_i_3_n_0\,
      I1 => \ch_reg[1][1][23]_i_4_n_0\,
      I2 => fsync_48K_i_6_n_0,
      I3 => fsync_48K_i_7_n_0,
      I4 => \^bclk_reg_0\,
      I5 => \ch_reg[1][5][23]_i_2_n_0\,
      O => \ch_reg[1][7][23]_i_1_n_0\
    );
\ch_reg[2][1][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(9),
      I1 => \ch_reg_reg[2][2]_9\(9),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(9),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(9),
      O => \ch_reg[2][1][10]_i_2_n_0\
    );
\ch_reg[2][1][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(9),
      I1 => \ch_reg_reg[2][6]_13\(9),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(9),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(9),
      O => \ch_reg[2][1][10]_i_3_n_0\
    );
\ch_reg[2][1][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(10),
      I1 => \ch_reg_reg[2][2]_9\(10),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(10),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(10),
      O => \ch_reg[2][1][11]_i_2_n_0\
    );
\ch_reg[2][1][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(10),
      I1 => \ch_reg_reg[2][6]_13\(10),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(10),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(10),
      O => \ch_reg[2][1][11]_i_3_n_0\
    );
\ch_reg[2][1][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(11),
      I1 => \ch_reg_reg[2][2]_9\(11),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(11),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(11),
      O => \ch_reg[2][1][12]_i_2_n_0\
    );
\ch_reg[2][1][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(11),
      I1 => \ch_reg_reg[2][6]_13\(11),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(11),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(11),
      O => \ch_reg[2][1][12]_i_3_n_0\
    );
\ch_reg[2][1][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(12),
      I1 => \ch_reg_reg[2][2]_9\(12),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(12),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(12),
      O => \ch_reg[2][1][13]_i_2_n_0\
    );
\ch_reg[2][1][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(12),
      I1 => \ch_reg_reg[2][6]_13\(12),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(12),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(12),
      O => \ch_reg[2][1][13]_i_3_n_0\
    );
\ch_reg[2][1][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(13),
      I1 => \ch_reg_reg[2][2]_9\(13),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(13),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(13),
      O => \ch_reg[2][1][14]_i_2_n_0\
    );
\ch_reg[2][1][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(13),
      I1 => \ch_reg_reg[2][6]_13\(13),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(13),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(13),
      O => \ch_reg[2][1][14]_i_3_n_0\
    );
\ch_reg[2][1][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(14),
      I1 => \ch_reg_reg[2][2]_9\(14),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(14),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(14),
      O => \ch_reg[2][1][15]_i_2_n_0\
    );
\ch_reg[2][1][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(14),
      I1 => \ch_reg_reg[2][6]_13\(14),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(14),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(14),
      O => \ch_reg[2][1][15]_i_3_n_0\
    );
\ch_reg[2][1][16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(15),
      I1 => \ch_reg_reg[2][2]_9\(15),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(15),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(15),
      O => \ch_reg[2][1][16]_i_2_n_0\
    );
\ch_reg[2][1][16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(15),
      I1 => \ch_reg_reg[2][6]_13\(15),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(15),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(15),
      O => \ch_reg[2][1][16]_i_3_n_0\
    );
\ch_reg[2][1][17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(16),
      I1 => \ch_reg_reg[2][2]_9\(16),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(16),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(16),
      O => \ch_reg[2][1][17]_i_2_n_0\
    );
\ch_reg[2][1][17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(16),
      I1 => \ch_reg_reg[2][6]_13\(16),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(16),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(16),
      O => \ch_reg[2][1][17]_i_3_n_0\
    );
\ch_reg[2][1][18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(17),
      I1 => \ch_reg_reg[2][2]_9\(17),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(17),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(17),
      O => \ch_reg[2][1][18]_i_2_n_0\
    );
\ch_reg[2][1][18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(17),
      I1 => \ch_reg_reg[2][6]_13\(17),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(17),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(17),
      O => \ch_reg[2][1][18]_i_3_n_0\
    );
\ch_reg[2][1][19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(18),
      I1 => \ch_reg_reg[2][2]_9\(18),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(18),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(18),
      O => \ch_reg[2][1][19]_i_2_n_0\
    );
\ch_reg[2][1][19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(18),
      I1 => \ch_reg_reg[2][6]_13\(18),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(18),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(18),
      O => \ch_reg[2][1][19]_i_3_n_0\
    );
\ch_reg[2][1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(0),
      I1 => \ch_reg_reg[2][2]_9\(0),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(0),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(0),
      O => \ch_reg[2][1][1]_i_2_n_0\
    );
\ch_reg[2][1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(0),
      I1 => \ch_reg_reg[2][6]_13\(0),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(0),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(0),
      O => \ch_reg[2][1][1]_i_3_n_0\
    );
\ch_reg[2][1][20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(19),
      I1 => \ch_reg_reg[2][2]_9\(19),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(19),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(19),
      O => \ch_reg[2][1][20]_i_2_n_0\
    );
\ch_reg[2][1][20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(19),
      I1 => \ch_reg_reg[2][6]_13\(19),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(19),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(19),
      O => \ch_reg[2][1][20]_i_3_n_0\
    );
\ch_reg[2][1][21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(20),
      I1 => \ch_reg_reg[2][2]_9\(20),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(20),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(20),
      O => \ch_reg[2][1][21]_i_2_n_0\
    );
\ch_reg[2][1][21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(20),
      I1 => \ch_reg_reg[2][6]_13\(20),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(20),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(20),
      O => \ch_reg[2][1][21]_i_3_n_0\
    );
\ch_reg[2][1][22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(21),
      I1 => \ch_reg_reg[2][2]_9\(21),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(21),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(21),
      O => \ch_reg[2][1][22]_i_2_n_0\
    );
\ch_reg[2][1][22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(21),
      I1 => \ch_reg_reg[2][6]_13\(21),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(21),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(21),
      O => \ch_reg[2][1][22]_i_3_n_0\
    );
\ch_reg[2][1][23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(22),
      I1 => \ch_reg_reg[2][2]_9\(22),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(22),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(22),
      O => \ch_reg[2][1][23]_i_2_n_0\
    );
\ch_reg[2][1][23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(22),
      I1 => \ch_reg_reg[2][6]_13\(22),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(22),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(22),
      O => \ch_reg[2][1][23]_i_3_n_0\
    );
\ch_reg[2][1][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(1),
      I1 => \ch_reg_reg[2][2]_9\(1),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(1),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(1),
      O => \ch_reg[2][1][2]_i_2_n_0\
    );
\ch_reg[2][1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(1),
      I1 => \ch_reg_reg[2][6]_13\(1),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(1),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(1),
      O => \ch_reg[2][1][2]_i_3_n_0\
    );
\ch_reg[2][1][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(2),
      I1 => \ch_reg_reg[2][2]_9\(2),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(2),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(2),
      O => \ch_reg[2][1][3]_i_2_n_0\
    );
\ch_reg[2][1][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(2),
      I1 => \ch_reg_reg[2][6]_13\(2),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(2),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(2),
      O => \ch_reg[2][1][3]_i_3_n_0\
    );
\ch_reg[2][1][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(3),
      I1 => \ch_reg_reg[2][2]_9\(3),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(3),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(3),
      O => \ch_reg[2][1][4]_i_2_n_0\
    );
\ch_reg[2][1][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(3),
      I1 => \ch_reg_reg[2][6]_13\(3),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(3),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(3),
      O => \ch_reg[2][1][4]_i_3_n_0\
    );
\ch_reg[2][1][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(4),
      I1 => \ch_reg_reg[2][2]_9\(4),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(4),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(4),
      O => \ch_reg[2][1][5]_i_2_n_0\
    );
\ch_reg[2][1][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(4),
      I1 => \ch_reg_reg[2][6]_13\(4),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(4),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(4),
      O => \ch_reg[2][1][5]_i_3_n_0\
    );
\ch_reg[2][1][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(5),
      I1 => \ch_reg_reg[2][2]_9\(5),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(5),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(5),
      O => \ch_reg[2][1][6]_i_2_n_0\
    );
\ch_reg[2][1][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(5),
      I1 => \ch_reg_reg[2][6]_13\(5),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(5),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(5),
      O => \ch_reg[2][1][6]_i_3_n_0\
    );
\ch_reg[2][1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(6),
      I1 => \ch_reg_reg[2][2]_9\(6),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(6),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(6),
      O => \ch_reg[2][1][7]_i_2_n_0\
    );
\ch_reg[2][1][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(6),
      I1 => \ch_reg_reg[2][6]_13\(6),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(6),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(6),
      O => \ch_reg[2][1][7]_i_3_n_0\
    );
\ch_reg[2][1][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(7),
      I1 => \ch_reg_reg[2][2]_9\(7),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(7),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(7),
      O => \ch_reg[2][1][8]_i_2_n_0\
    );
\ch_reg[2][1][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(7),
      I1 => \ch_reg_reg[2][6]_13\(7),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(7),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(7),
      O => \ch_reg[2][1][8]_i_3_n_0\
    );
\ch_reg[2][1][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(8),
      I1 => \ch_reg_reg[2][2]_9\(8),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][1]_8\(8),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][0]_15\(8),
      O => \ch_reg[2][1][9]_i_2_n_0\
    );
\ch_reg[2][1][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(8),
      I1 => \ch_reg_reg[2][6]_13\(8),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[2][5]_12\(8),
      I4 => \^bit_cnt_reg[6]_rep_0\(0),
      I5 => \ch_reg_reg[2][4]_11\(8),
      O => \ch_reg[2][1][9]_i_3_n_0\
    );
\ch_reg[3][1][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(9),
      I1 => \ch_reg_reg[3][2]_17\(9),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(9),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(9),
      O => \ch_reg[3][1][10]_i_2_n_0\
    );
\ch_reg[3][1][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(9),
      I1 => \ch_reg_reg[3][6]_21\(9),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(9),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(9),
      O => \ch_reg[3][1][10]_i_3_n_0\
    );
\ch_reg[3][1][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(10),
      I1 => \ch_reg_reg[3][2]_17\(10),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(10),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(10),
      O => \ch_reg[3][1][11]_i_2_n_0\
    );
\ch_reg[3][1][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(10),
      I1 => \ch_reg_reg[3][6]_21\(10),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(10),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(10),
      O => \ch_reg[3][1][11]_i_3_n_0\
    );
\ch_reg[3][1][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(11),
      I1 => \ch_reg_reg[3][2]_17\(11),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(11),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(11),
      O => \ch_reg[3][1][12]_i_2_n_0\
    );
\ch_reg[3][1][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(11),
      I1 => \ch_reg_reg[3][6]_21\(11),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(11),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(11),
      O => \ch_reg[3][1][12]_i_3_n_0\
    );
\ch_reg[3][1][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(12),
      I1 => \ch_reg_reg[3][2]_17\(12),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(12),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(12),
      O => \ch_reg[3][1][13]_i_2_n_0\
    );
\ch_reg[3][1][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(12),
      I1 => \ch_reg_reg[3][6]_21\(12),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(12),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(12),
      O => \ch_reg[3][1][13]_i_3_n_0\
    );
\ch_reg[3][1][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(13),
      I1 => \ch_reg_reg[3][2]_17\(13),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(13),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(13),
      O => \ch_reg[3][1][14]_i_2_n_0\
    );
\ch_reg[3][1][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(13),
      I1 => \ch_reg_reg[3][6]_21\(13),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(13),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(13),
      O => \ch_reg[3][1][14]_i_3_n_0\
    );
\ch_reg[3][1][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(14),
      I1 => \ch_reg_reg[3][2]_17\(14),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(14),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(14),
      O => \ch_reg[3][1][15]_i_2_n_0\
    );
\ch_reg[3][1][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(14),
      I1 => \ch_reg_reg[3][6]_21\(14),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(14),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(14),
      O => \ch_reg[3][1][15]_i_3_n_0\
    );
\ch_reg[3][1][16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(15),
      I1 => \ch_reg_reg[3][2]_17\(15),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(15),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(15),
      O => \ch_reg[3][1][16]_i_2_n_0\
    );
\ch_reg[3][1][16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(15),
      I1 => \ch_reg_reg[3][6]_21\(15),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(15),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(15),
      O => \ch_reg[3][1][16]_i_3_n_0\
    );
\ch_reg[3][1][17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(16),
      I1 => \ch_reg_reg[3][2]_17\(16),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(16),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(16),
      O => \ch_reg[3][1][17]_i_2_n_0\
    );
\ch_reg[3][1][17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(16),
      I1 => \ch_reg_reg[3][6]_21\(16),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(16),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(16),
      O => \ch_reg[3][1][17]_i_3_n_0\
    );
\ch_reg[3][1][18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(17),
      I1 => \ch_reg_reg[3][2]_17\(17),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(17),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(17),
      O => \ch_reg[3][1][18]_i_2_n_0\
    );
\ch_reg[3][1][18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(17),
      I1 => \ch_reg_reg[3][6]_21\(17),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(17),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(17),
      O => \ch_reg[3][1][18]_i_3_n_0\
    );
\ch_reg[3][1][19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(18),
      I1 => \ch_reg_reg[3][2]_17\(18),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(18),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(18),
      O => \ch_reg[3][1][19]_i_2_n_0\
    );
\ch_reg[3][1][19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(18),
      I1 => \ch_reg_reg[3][6]_21\(18),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(18),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(18),
      O => \ch_reg[3][1][19]_i_3_n_0\
    );
\ch_reg[3][1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(0),
      I1 => \ch_reg_reg[3][2]_17\(0),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(0),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(0),
      O => \ch_reg[3][1][1]_i_2_n_0\
    );
\ch_reg[3][1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(0),
      I1 => \ch_reg_reg[3][6]_21\(0),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(0),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(0),
      O => \ch_reg[3][1][1]_i_3_n_0\
    );
\ch_reg[3][1][20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(19),
      I1 => \ch_reg_reg[3][2]_17\(19),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(19),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(19),
      O => \ch_reg[3][1][20]_i_2_n_0\
    );
\ch_reg[3][1][20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(19),
      I1 => \ch_reg_reg[3][6]_21\(19),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(19),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(19),
      O => \ch_reg[3][1][20]_i_3_n_0\
    );
\ch_reg[3][1][21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(20),
      I1 => \ch_reg_reg[3][2]_17\(20),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(20),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(20),
      O => \ch_reg[3][1][21]_i_2_n_0\
    );
\ch_reg[3][1][21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(20),
      I1 => \ch_reg_reg[3][6]_21\(20),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(20),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(20),
      O => \ch_reg[3][1][21]_i_3_n_0\
    );
\ch_reg[3][1][22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(21),
      I1 => \ch_reg_reg[3][2]_17\(21),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(21),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(21),
      O => \ch_reg[3][1][22]_i_2_n_0\
    );
\ch_reg[3][1][22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(21),
      I1 => \ch_reg_reg[3][6]_21\(21),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(21),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(21),
      O => \ch_reg[3][1][22]_i_3_n_0\
    );
\ch_reg[3][1][23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(22),
      I1 => \ch_reg_reg[3][2]_17\(22),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(22),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(22),
      O => \ch_reg[3][1][23]_i_2_n_0\
    );
\ch_reg[3][1][23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(22),
      I1 => \ch_reg_reg[3][6]_21\(22),
      I2 => \BIT_cnt_reg[6]_rep__0_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(22),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(22),
      O => \ch_reg[3][1][23]_i_3_n_0\
    );
\ch_reg[3][1][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(1),
      I1 => \ch_reg_reg[3][2]_17\(1),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(1),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(1),
      O => \ch_reg[3][1][2]_i_2_n_0\
    );
\ch_reg[3][1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(1),
      I1 => \ch_reg_reg[3][6]_21\(1),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(1),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(1),
      O => \ch_reg[3][1][2]_i_3_n_0\
    );
\ch_reg[3][1][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(2),
      I1 => \ch_reg_reg[3][2]_17\(2),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(2),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(2),
      O => \ch_reg[3][1][3]_i_2_n_0\
    );
\ch_reg[3][1][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(2),
      I1 => \ch_reg_reg[3][6]_21\(2),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(2),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(2),
      O => \ch_reg[3][1][3]_i_3_n_0\
    );
\ch_reg[3][1][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(3),
      I1 => \ch_reg_reg[3][2]_17\(3),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(3),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(3),
      O => \ch_reg[3][1][4]_i_2_n_0\
    );
\ch_reg[3][1][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(3),
      I1 => \ch_reg_reg[3][6]_21\(3),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(3),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(3),
      O => \ch_reg[3][1][4]_i_3_n_0\
    );
\ch_reg[3][1][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(4),
      I1 => \ch_reg_reg[3][2]_17\(4),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(4),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(4),
      O => \ch_reg[3][1][5]_i_2_n_0\
    );
\ch_reg[3][1][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(4),
      I1 => \ch_reg_reg[3][6]_21\(4),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(4),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(4),
      O => \ch_reg[3][1][5]_i_3_n_0\
    );
\ch_reg[3][1][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(5),
      I1 => \ch_reg_reg[3][2]_17\(5),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(5),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(5),
      O => \ch_reg[3][1][6]_i_2_n_0\
    );
\ch_reg[3][1][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(5),
      I1 => \ch_reg_reg[3][6]_21\(5),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(5),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(5),
      O => \ch_reg[3][1][6]_i_3_n_0\
    );
\ch_reg[3][1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(6),
      I1 => \ch_reg_reg[3][2]_17\(6),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(6),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(6),
      O => \ch_reg[3][1][7]_i_2_n_0\
    );
\ch_reg[3][1][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(6),
      I1 => \ch_reg_reg[3][6]_21\(6),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(6),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(6),
      O => \ch_reg[3][1][7]_i_3_n_0\
    );
\ch_reg[3][1][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(7),
      I1 => \ch_reg_reg[3][2]_17\(7),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(7),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(7),
      O => \ch_reg[3][1][8]_i_2_n_0\
    );
\ch_reg[3][1][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(7),
      I1 => \ch_reg_reg[3][6]_21\(7),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(7),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(7),
      O => \ch_reg[3][1][8]_i_3_n_0\
    );
\ch_reg[3][1][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(8),
      I1 => \ch_reg_reg[3][2]_17\(8),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][1]_16\(8),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][0]_23\(8),
      O => \ch_reg[3][1][9]_i_2_n_0\
    );
\ch_reg[3][1][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(8),
      I1 => \ch_reg_reg[3][6]_21\(8),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[3][5]_20\(8),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[3][4]_19\(8),
      O => \ch_reg[3][1][9]_i_3_n_0\
    );
\ch_reg[4][1][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(9),
      I1 => \ch_reg_reg[4][2]_25\(9),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(9),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(9),
      O => \ch_reg[4][1][10]_i_2_n_0\
    );
\ch_reg[4][1][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(9),
      I1 => \ch_reg_reg[4][6]_29\(9),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(9),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(9),
      O => \ch_reg[4][1][10]_i_3_n_0\
    );
\ch_reg[4][1][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(10),
      I1 => \ch_reg_reg[4][2]_25\(10),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(10),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(10),
      O => \ch_reg[4][1][11]_i_2_n_0\
    );
\ch_reg[4][1][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(10),
      I1 => \ch_reg_reg[4][6]_29\(10),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(10),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(10),
      O => \ch_reg[4][1][11]_i_3_n_0\
    );
\ch_reg[4][1][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(11),
      I1 => \ch_reg_reg[4][2]_25\(11),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(11),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(11),
      O => \ch_reg[4][1][12]_i_2_n_0\
    );
\ch_reg[4][1][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(11),
      I1 => \ch_reg_reg[4][6]_29\(11),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(11),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(11),
      O => \ch_reg[4][1][12]_i_3_n_0\
    );
\ch_reg[4][1][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(12),
      I1 => \ch_reg_reg[4][2]_25\(12),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(12),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(12),
      O => \ch_reg[4][1][13]_i_2_n_0\
    );
\ch_reg[4][1][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(12),
      I1 => \ch_reg_reg[4][6]_29\(12),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(12),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(12),
      O => \ch_reg[4][1][13]_i_3_n_0\
    );
\ch_reg[4][1][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(13),
      I1 => \ch_reg_reg[4][2]_25\(13),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(13),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(13),
      O => \ch_reg[4][1][14]_i_2_n_0\
    );
\ch_reg[4][1][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(13),
      I1 => \ch_reg_reg[4][6]_29\(13),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(13),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(13),
      O => \ch_reg[4][1][14]_i_3_n_0\
    );
\ch_reg[4][1][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(14),
      I1 => \ch_reg_reg[4][2]_25\(14),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(14),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(14),
      O => \ch_reg[4][1][15]_i_2_n_0\
    );
\ch_reg[4][1][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(14),
      I1 => \ch_reg_reg[4][6]_29\(14),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(14),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(14),
      O => \ch_reg[4][1][15]_i_3_n_0\
    );
\ch_reg[4][1][16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(15),
      I1 => \ch_reg_reg[4][2]_25\(15),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(15),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(15),
      O => \ch_reg[4][1][16]_i_2_n_0\
    );
\ch_reg[4][1][16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(15),
      I1 => \ch_reg_reg[4][6]_29\(15),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(15),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(15),
      O => \ch_reg[4][1][16]_i_3_n_0\
    );
\ch_reg[4][1][17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(16),
      I1 => \ch_reg_reg[4][2]_25\(16),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(16),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(16),
      O => \ch_reg[4][1][17]_i_2_n_0\
    );
\ch_reg[4][1][17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(16),
      I1 => \ch_reg_reg[4][6]_29\(16),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(16),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(16),
      O => \ch_reg[4][1][17]_i_3_n_0\
    );
\ch_reg[4][1][18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(17),
      I1 => \ch_reg_reg[4][2]_25\(17),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(17),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(17),
      O => \ch_reg[4][1][18]_i_2_n_0\
    );
\ch_reg[4][1][18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(17),
      I1 => \ch_reg_reg[4][6]_29\(17),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(17),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(17),
      O => \ch_reg[4][1][18]_i_3_n_0\
    );
\ch_reg[4][1][19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(18),
      I1 => \ch_reg_reg[4][2]_25\(18),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(18),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(18),
      O => \ch_reg[4][1][19]_i_2_n_0\
    );
\ch_reg[4][1][19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(18),
      I1 => \ch_reg_reg[4][6]_29\(18),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(18),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(18),
      O => \ch_reg[4][1][19]_i_3_n_0\
    );
\ch_reg[4][1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(0),
      I1 => \ch_reg_reg[4][2]_25\(0),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(0),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(0),
      O => \ch_reg[4][1][1]_i_2_n_0\
    );
\ch_reg[4][1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(0),
      I1 => \ch_reg_reg[4][6]_29\(0),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(0),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(0),
      O => \ch_reg[4][1][1]_i_3_n_0\
    );
\ch_reg[4][1][20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(19),
      I1 => \ch_reg_reg[4][2]_25\(19),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(19),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(19),
      O => \ch_reg[4][1][20]_i_2_n_0\
    );
\ch_reg[4][1][20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(19),
      I1 => \ch_reg_reg[4][6]_29\(19),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(19),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(19),
      O => \ch_reg[4][1][20]_i_3_n_0\
    );
\ch_reg[4][1][21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(20),
      I1 => \ch_reg_reg[4][2]_25\(20),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(20),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(20),
      O => \ch_reg[4][1][21]_i_2_n_0\
    );
\ch_reg[4][1][21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(20),
      I1 => \ch_reg_reg[4][6]_29\(20),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(20),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(20),
      O => \ch_reg[4][1][21]_i_3_n_0\
    );
\ch_reg[4][1][22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(21),
      I1 => \ch_reg_reg[4][2]_25\(21),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(21),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(21),
      O => \ch_reg[4][1][22]_i_2_n_0\
    );
\ch_reg[4][1][22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(21),
      I1 => \ch_reg_reg[4][6]_29\(21),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(21),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(21),
      O => \ch_reg[4][1][22]_i_3_n_0\
    );
\ch_reg[4][1][23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(22),
      I1 => \ch_reg_reg[4][2]_25\(22),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(22),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(22),
      O => \ch_reg[4][1][23]_i_2_n_0\
    );
\ch_reg[4][1][23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(22),
      I1 => \ch_reg_reg[4][6]_29\(22),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(22),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(22),
      O => \ch_reg[4][1][23]_i_3_n_0\
    );
\ch_reg[4][1][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(1),
      I1 => \ch_reg_reg[4][2]_25\(1),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(1),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(1),
      O => \ch_reg[4][1][2]_i_2_n_0\
    );
\ch_reg[4][1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(1),
      I1 => \ch_reg_reg[4][6]_29\(1),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(1),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(1),
      O => \ch_reg[4][1][2]_i_3_n_0\
    );
\ch_reg[4][1][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(2),
      I1 => \ch_reg_reg[4][2]_25\(2),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(2),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(2),
      O => \ch_reg[4][1][3]_i_2_n_0\
    );
\ch_reg[4][1][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(2),
      I1 => \ch_reg_reg[4][6]_29\(2),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(2),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(2),
      O => \ch_reg[4][1][3]_i_3_n_0\
    );
\ch_reg[4][1][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(3),
      I1 => \ch_reg_reg[4][2]_25\(3),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(3),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(3),
      O => \ch_reg[4][1][4]_i_2_n_0\
    );
\ch_reg[4][1][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(3),
      I1 => \ch_reg_reg[4][6]_29\(3),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(3),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(3),
      O => \ch_reg[4][1][4]_i_3_n_0\
    );
\ch_reg[4][1][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(4),
      I1 => \ch_reg_reg[4][2]_25\(4),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(4),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(4),
      O => \ch_reg[4][1][5]_i_2_n_0\
    );
\ch_reg[4][1][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(4),
      I1 => \ch_reg_reg[4][6]_29\(4),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(4),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(4),
      O => \ch_reg[4][1][5]_i_3_n_0\
    );
\ch_reg[4][1][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(5),
      I1 => \ch_reg_reg[4][2]_25\(5),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(5),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(5),
      O => \ch_reg[4][1][6]_i_2_n_0\
    );
\ch_reg[4][1][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(5),
      I1 => \ch_reg_reg[4][6]_29\(5),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(5),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(5),
      O => \ch_reg[4][1][6]_i_3_n_0\
    );
\ch_reg[4][1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(6),
      I1 => \ch_reg_reg[4][2]_25\(6),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(6),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(6),
      O => \ch_reg[4][1][7]_i_2_n_0\
    );
\ch_reg[4][1][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(6),
      I1 => \ch_reg_reg[4][6]_29\(6),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(6),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(6),
      O => \ch_reg[4][1][7]_i_3_n_0\
    );
\ch_reg[4][1][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(7),
      I1 => \ch_reg_reg[4][2]_25\(7),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(7),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(7),
      O => \ch_reg[4][1][8]_i_2_n_0\
    );
\ch_reg[4][1][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(7),
      I1 => \ch_reg_reg[4][6]_29\(7),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(7),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(7),
      O => \ch_reg[4][1][8]_i_3_n_0\
    );
\ch_reg[4][1][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(8),
      I1 => \ch_reg_reg[4][2]_25\(8),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][1]_24\(8),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][0]_31\(8),
      O => \ch_reg[4][1][9]_i_2_n_0\
    );
\ch_reg[4][1][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(8),
      I1 => \ch_reg_reg[4][6]_29\(8),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[4][5]_28\(8),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[4][4]_27\(8),
      O => \ch_reg[4][1][9]_i_3_n_0\
    );
\ch_reg[5][1][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(9),
      I1 => \ch_reg_reg[5][2]_33\(9),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(9),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(9),
      O => \ch_reg[5][1][10]_i_2_n_0\
    );
\ch_reg[5][1][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(9),
      I1 => \ch_reg_reg[5][6]_37\(9),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(9),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(9),
      O => \ch_reg[5][1][10]_i_3_n_0\
    );
\ch_reg[5][1][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(10),
      I1 => \ch_reg_reg[5][2]_33\(10),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(10),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(10),
      O => \ch_reg[5][1][11]_i_2_n_0\
    );
\ch_reg[5][1][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(10),
      I1 => \ch_reg_reg[5][6]_37\(10),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(10),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(10),
      O => \ch_reg[5][1][11]_i_3_n_0\
    );
\ch_reg[5][1][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(11),
      I1 => \ch_reg_reg[5][2]_33\(11),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(11),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(11),
      O => \ch_reg[5][1][12]_i_2_n_0\
    );
\ch_reg[5][1][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(11),
      I1 => \ch_reg_reg[5][6]_37\(11),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(11),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(11),
      O => \ch_reg[5][1][12]_i_3_n_0\
    );
\ch_reg[5][1][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(12),
      I1 => \ch_reg_reg[5][2]_33\(12),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(12),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(12),
      O => \ch_reg[5][1][13]_i_2_n_0\
    );
\ch_reg[5][1][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(12),
      I1 => \ch_reg_reg[5][6]_37\(12),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(12),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(12),
      O => \ch_reg[5][1][13]_i_3_n_0\
    );
\ch_reg[5][1][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(13),
      I1 => \ch_reg_reg[5][2]_33\(13),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(13),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(13),
      O => \ch_reg[5][1][14]_i_2_n_0\
    );
\ch_reg[5][1][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(13),
      I1 => \ch_reg_reg[5][6]_37\(13),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(13),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(13),
      O => \ch_reg[5][1][14]_i_3_n_0\
    );
\ch_reg[5][1][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(14),
      I1 => \ch_reg_reg[5][2]_33\(14),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(14),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(14),
      O => \ch_reg[5][1][15]_i_2_n_0\
    );
\ch_reg[5][1][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(14),
      I1 => \ch_reg_reg[5][6]_37\(14),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(14),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(14),
      O => \ch_reg[5][1][15]_i_3_n_0\
    );
\ch_reg[5][1][16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(15),
      I1 => \ch_reg_reg[5][2]_33\(15),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(15),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(15),
      O => \ch_reg[5][1][16]_i_2_n_0\
    );
\ch_reg[5][1][16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(15),
      I1 => \ch_reg_reg[5][6]_37\(15),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(15),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(15),
      O => \ch_reg[5][1][16]_i_3_n_0\
    );
\ch_reg[5][1][17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(16),
      I1 => \ch_reg_reg[5][2]_33\(16),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(16),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(16),
      O => \ch_reg[5][1][17]_i_2_n_0\
    );
\ch_reg[5][1][17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(16),
      I1 => \ch_reg_reg[5][6]_37\(16),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(16),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(16),
      O => \ch_reg[5][1][17]_i_3_n_0\
    );
\ch_reg[5][1][18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(17),
      I1 => \ch_reg_reg[5][2]_33\(17),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(17),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(17),
      O => \ch_reg[5][1][18]_i_2_n_0\
    );
\ch_reg[5][1][18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(17),
      I1 => \ch_reg_reg[5][6]_37\(17),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(17),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(17),
      O => \ch_reg[5][1][18]_i_3_n_0\
    );
\ch_reg[5][1][19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(18),
      I1 => \ch_reg_reg[5][2]_33\(18),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(18),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(18),
      O => \ch_reg[5][1][19]_i_2_n_0\
    );
\ch_reg[5][1][19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(18),
      I1 => \ch_reg_reg[5][6]_37\(18),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(18),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(18),
      O => \ch_reg[5][1][19]_i_3_n_0\
    );
\ch_reg[5][1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(0),
      I1 => \ch_reg_reg[5][2]_33\(0),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(0),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(0),
      O => \ch_reg[5][1][1]_i_2_n_0\
    );
\ch_reg[5][1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(0),
      I1 => \ch_reg_reg[5][6]_37\(0),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(0),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(0),
      O => \ch_reg[5][1][1]_i_3_n_0\
    );
\ch_reg[5][1][20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(19),
      I1 => \ch_reg_reg[5][2]_33\(19),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(19),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(19),
      O => \ch_reg[5][1][20]_i_2_n_0\
    );
\ch_reg[5][1][20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(19),
      I1 => \ch_reg_reg[5][6]_37\(19),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(19),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(19),
      O => \ch_reg[5][1][20]_i_3_n_0\
    );
\ch_reg[5][1][21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(20),
      I1 => \ch_reg_reg[5][2]_33\(20),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(20),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(20),
      O => \ch_reg[5][1][21]_i_2_n_0\
    );
\ch_reg[5][1][21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(20),
      I1 => \ch_reg_reg[5][6]_37\(20),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(20),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(20),
      O => \ch_reg[5][1][21]_i_3_n_0\
    );
\ch_reg[5][1][22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(21),
      I1 => \ch_reg_reg[5][2]_33\(21),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(21),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(21),
      O => \ch_reg[5][1][22]_i_2_n_0\
    );
\ch_reg[5][1][22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(21),
      I1 => \ch_reg_reg[5][6]_37\(21),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(21),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(21),
      O => \ch_reg[5][1][22]_i_3_n_0\
    );
\ch_reg[5][1][23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(22),
      I1 => \ch_reg_reg[5][2]_33\(22),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(22),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(22),
      O => \ch_reg[5][1][23]_i_2_n_0\
    );
\ch_reg[5][1][23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(22),
      I1 => \ch_reg_reg[5][6]_37\(22),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(22),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(22),
      O => \ch_reg[5][1][23]_i_3_n_0\
    );
\ch_reg[5][1][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(1),
      I1 => \ch_reg_reg[5][2]_33\(1),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(1),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(1),
      O => \ch_reg[5][1][2]_i_2_n_0\
    );
\ch_reg[5][1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(1),
      I1 => \ch_reg_reg[5][6]_37\(1),
      I2 => \^bit_cnt_reg[6]_rep_0\(1),
      I3 => \ch_reg_reg[5][5]_36\(1),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(1),
      O => \ch_reg[5][1][2]_i_3_n_0\
    );
\ch_reg[5][1][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(2),
      I1 => \ch_reg_reg[5][2]_33\(2),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(2),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(2),
      O => \ch_reg[5][1][3]_i_2_n_0\
    );
\ch_reg[5][1][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(2),
      I1 => \ch_reg_reg[5][6]_37\(2),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(2),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(2),
      O => \ch_reg[5][1][3]_i_3_n_0\
    );
\ch_reg[5][1][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(3),
      I1 => \ch_reg_reg[5][2]_33\(3),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(3),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(3),
      O => \ch_reg[5][1][4]_i_2_n_0\
    );
\ch_reg[5][1][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(3),
      I1 => \ch_reg_reg[5][6]_37\(3),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(3),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(3),
      O => \ch_reg[5][1][4]_i_3_n_0\
    );
\ch_reg[5][1][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(4),
      I1 => \ch_reg_reg[5][2]_33\(4),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(4),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(4),
      O => \ch_reg[5][1][5]_i_2_n_0\
    );
\ch_reg[5][1][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(4),
      I1 => \ch_reg_reg[5][6]_37\(4),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(4),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(4),
      O => \ch_reg[5][1][5]_i_3_n_0\
    );
\ch_reg[5][1][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(5),
      I1 => \ch_reg_reg[5][2]_33\(5),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(5),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(5),
      O => \ch_reg[5][1][6]_i_2_n_0\
    );
\ch_reg[5][1][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(5),
      I1 => \ch_reg_reg[5][6]_37\(5),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(5),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(5),
      O => \ch_reg[5][1][6]_i_3_n_0\
    );
\ch_reg[5][1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(6),
      I1 => \ch_reg_reg[5][2]_33\(6),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(6),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(6),
      O => \ch_reg[5][1][7]_i_2_n_0\
    );
\ch_reg[5][1][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(6),
      I1 => \ch_reg_reg[5][6]_37\(6),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(6),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(6),
      O => \ch_reg[5][1][7]_i_3_n_0\
    );
\ch_reg[5][1][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(7),
      I1 => \ch_reg_reg[5][2]_33\(7),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(7),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(7),
      O => \ch_reg[5][1][8]_i_2_n_0\
    );
\ch_reg[5][1][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(7),
      I1 => \ch_reg_reg[5][6]_37\(7),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(7),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(7),
      O => \ch_reg[5][1][8]_i_3_n_0\
    );
\ch_reg[5][1][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(8),
      I1 => \ch_reg_reg[5][2]_33\(8),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][1]_32\(8),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][0]_39\(8),
      O => \ch_reg[5][1][9]_i_2_n_0\
    );
\ch_reg[5][1][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(8),
      I1 => \ch_reg_reg[5][6]_37\(8),
      I2 => \BIT_cnt_reg[6]_rep__1_n_0\,
      I3 => \ch_reg_reg[5][5]_36\(8),
      I4 => \BIT_cnt_reg[5]_rep_n_0\,
      I5 => \ch_reg_reg[5][4]_35\(8),
      O => \ch_reg[5][1][9]_i_3_n_0\
    );
\ch_reg[6][1][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(9),
      I1 => \ch_reg_reg[6][2]_41\(9),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(9),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(9),
      O => \ch_reg[6][1][10]_i_2_n_0\
    );
\ch_reg[6][1][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(9),
      I1 => \ch_reg_reg[6][6]_45\(9),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(9),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(9),
      O => \ch_reg[6][1][10]_i_3_n_0\
    );
\ch_reg[6][1][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(10),
      I1 => \ch_reg_reg[6][2]_41\(10),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(10),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(10),
      O => \ch_reg[6][1][11]_i_2_n_0\
    );
\ch_reg[6][1][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(10),
      I1 => \ch_reg_reg[6][6]_45\(10),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(10),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(10),
      O => \ch_reg[6][1][11]_i_3_n_0\
    );
\ch_reg[6][1][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(11),
      I1 => \ch_reg_reg[6][2]_41\(11),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(11),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(11),
      O => \ch_reg[6][1][12]_i_2_n_0\
    );
\ch_reg[6][1][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(11),
      I1 => \ch_reg_reg[6][6]_45\(11),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(11),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(11),
      O => \ch_reg[6][1][12]_i_3_n_0\
    );
\ch_reg[6][1][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(12),
      I1 => \ch_reg_reg[6][2]_41\(12),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(12),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(12),
      O => \ch_reg[6][1][13]_i_2_n_0\
    );
\ch_reg[6][1][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(12),
      I1 => \ch_reg_reg[6][6]_45\(12),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(12),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(12),
      O => \ch_reg[6][1][13]_i_3_n_0\
    );
\ch_reg[6][1][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(13),
      I1 => \ch_reg_reg[6][2]_41\(13),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(13),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(13),
      O => \ch_reg[6][1][14]_i_2_n_0\
    );
\ch_reg[6][1][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(13),
      I1 => \ch_reg_reg[6][6]_45\(13),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(13),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(13),
      O => \ch_reg[6][1][14]_i_3_n_0\
    );
\ch_reg[6][1][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(14),
      I1 => \ch_reg_reg[6][2]_41\(14),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(14),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(14),
      O => \ch_reg[6][1][15]_i_2_n_0\
    );
\ch_reg[6][1][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(14),
      I1 => \ch_reg_reg[6][6]_45\(14),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(14),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(14),
      O => \ch_reg[6][1][15]_i_3_n_0\
    );
\ch_reg[6][1][16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(15),
      I1 => \ch_reg_reg[6][2]_41\(15),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(15),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(15),
      O => \ch_reg[6][1][16]_i_2_n_0\
    );
\ch_reg[6][1][16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(15),
      I1 => \ch_reg_reg[6][6]_45\(15),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(15),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(15),
      O => \ch_reg[6][1][16]_i_3_n_0\
    );
\ch_reg[6][1][17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(16),
      I1 => \ch_reg_reg[6][2]_41\(16),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(16),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(16),
      O => \ch_reg[6][1][17]_i_2_n_0\
    );
\ch_reg[6][1][17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(16),
      I1 => \ch_reg_reg[6][6]_45\(16),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(16),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(16),
      O => \ch_reg[6][1][17]_i_3_n_0\
    );
\ch_reg[6][1][18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(17),
      I1 => \ch_reg_reg[6][2]_41\(17),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(17),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(17),
      O => \ch_reg[6][1][18]_i_2_n_0\
    );
\ch_reg[6][1][18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(17),
      I1 => \ch_reg_reg[6][6]_45\(17),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(17),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(17),
      O => \ch_reg[6][1][18]_i_3_n_0\
    );
\ch_reg[6][1][19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(18),
      I1 => \ch_reg_reg[6][2]_41\(18),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(18),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(18),
      O => \ch_reg[6][1][19]_i_2_n_0\
    );
\ch_reg[6][1][19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(18),
      I1 => \ch_reg_reg[6][6]_45\(18),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(18),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(18),
      O => \ch_reg[6][1][19]_i_3_n_0\
    );
\ch_reg[6][1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(0),
      I1 => \ch_reg_reg[6][2]_41\(0),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(0),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(0),
      O => \ch_reg[6][1][1]_i_2_n_0\
    );
\ch_reg[6][1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(0),
      I1 => \ch_reg_reg[6][6]_45\(0),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(0),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(0),
      O => \ch_reg[6][1][1]_i_3_n_0\
    );
\ch_reg[6][1][20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(19),
      I1 => \ch_reg_reg[6][2]_41\(19),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(19),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(19),
      O => \ch_reg[6][1][20]_i_2_n_0\
    );
\ch_reg[6][1][20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(19),
      I1 => \ch_reg_reg[6][6]_45\(19),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(19),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(19),
      O => \ch_reg[6][1][20]_i_3_n_0\
    );
\ch_reg[6][1][21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(20),
      I1 => \ch_reg_reg[6][2]_41\(20),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(20),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(20),
      O => \ch_reg[6][1][21]_i_2_n_0\
    );
\ch_reg[6][1][21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(20),
      I1 => \ch_reg_reg[6][6]_45\(20),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(20),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(20),
      O => \ch_reg[6][1][21]_i_3_n_0\
    );
\ch_reg[6][1][22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(21),
      I1 => \ch_reg_reg[6][2]_41\(21),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(21),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(21),
      O => \ch_reg[6][1][22]_i_2_n_0\
    );
\ch_reg[6][1][22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(21),
      I1 => \ch_reg_reg[6][6]_45\(21),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(21),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(21),
      O => \ch_reg[6][1][22]_i_3_n_0\
    );
\ch_reg[6][1][23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(22),
      I1 => \ch_reg_reg[6][2]_41\(22),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(22),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(22),
      O => \ch_reg[6][1][23]_i_2_n_0\
    );
\ch_reg[6][1][23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(22),
      I1 => \ch_reg_reg[6][6]_45\(22),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(22),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(22),
      O => \ch_reg[6][1][23]_i_3_n_0\
    );
\ch_reg[6][1][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(1),
      I1 => \ch_reg_reg[6][2]_41\(1),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(1),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(1),
      O => \ch_reg[6][1][2]_i_2_n_0\
    );
\ch_reg[6][1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(1),
      I1 => \ch_reg_reg[6][6]_45\(1),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(1),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(1),
      O => \ch_reg[6][1][2]_i_3_n_0\
    );
\ch_reg[6][1][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(2),
      I1 => \ch_reg_reg[6][2]_41\(2),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(2),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(2),
      O => \ch_reg[6][1][3]_i_2_n_0\
    );
\ch_reg[6][1][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(2),
      I1 => \ch_reg_reg[6][6]_45\(2),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(2),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(2),
      O => \ch_reg[6][1][3]_i_3_n_0\
    );
\ch_reg[6][1][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(3),
      I1 => \ch_reg_reg[6][2]_41\(3),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(3),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(3),
      O => \ch_reg[6][1][4]_i_2_n_0\
    );
\ch_reg[6][1][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(3),
      I1 => \ch_reg_reg[6][6]_45\(3),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(3),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(3),
      O => \ch_reg[6][1][4]_i_3_n_0\
    );
\ch_reg[6][1][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(4),
      I1 => \ch_reg_reg[6][2]_41\(4),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(4),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(4),
      O => \ch_reg[6][1][5]_i_2_n_0\
    );
\ch_reg[6][1][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(4),
      I1 => \ch_reg_reg[6][6]_45\(4),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(4),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(4),
      O => \ch_reg[6][1][5]_i_3_n_0\
    );
\ch_reg[6][1][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(5),
      I1 => \ch_reg_reg[6][2]_41\(5),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(5),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(5),
      O => \ch_reg[6][1][6]_i_2_n_0\
    );
\ch_reg[6][1][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(5),
      I1 => \ch_reg_reg[6][6]_45\(5),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(5),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(5),
      O => \ch_reg[6][1][6]_i_3_n_0\
    );
\ch_reg[6][1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(6),
      I1 => \ch_reg_reg[6][2]_41\(6),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(6),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(6),
      O => \ch_reg[6][1][7]_i_2_n_0\
    );
\ch_reg[6][1][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(6),
      I1 => \ch_reg_reg[6][6]_45\(6),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(6),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(6),
      O => \ch_reg[6][1][7]_i_3_n_0\
    );
\ch_reg[6][1][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(7),
      I1 => \ch_reg_reg[6][2]_41\(7),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(7),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(7),
      O => \ch_reg[6][1][8]_i_2_n_0\
    );
\ch_reg[6][1][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(7),
      I1 => \ch_reg_reg[6][6]_45\(7),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(7),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(7),
      O => \ch_reg[6][1][8]_i_3_n_0\
    );
\ch_reg[6][1][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(8),
      I1 => \ch_reg_reg[6][2]_41\(8),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][1]_40\(8),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][0]_47\(8),
      O => \ch_reg[6][1][9]_i_2_n_0\
    );
\ch_reg[6][1][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(8),
      I1 => \ch_reg_reg[6][6]_45\(8),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[6][5]_44\(8),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[6][4]_43\(8),
      O => \ch_reg[6][1][9]_i_3_n_0\
    );
\ch_reg[7][1][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(9),
      I1 => \ch_reg_reg[7][2]_49\(9),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(9),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(9),
      O => \ch_reg[7][1][10]_i_2_n_0\
    );
\ch_reg[7][1][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(9),
      I1 => \ch_reg_reg[7][6]_53\(9),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(9),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(9),
      O => \ch_reg[7][1][10]_i_3_n_0\
    );
\ch_reg[7][1][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(10),
      I1 => \ch_reg_reg[7][2]_49\(10),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(10),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(10),
      O => \ch_reg[7][1][11]_i_2_n_0\
    );
\ch_reg[7][1][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(10),
      I1 => \ch_reg_reg[7][6]_53\(10),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(10),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(10),
      O => \ch_reg[7][1][11]_i_3_n_0\
    );
\ch_reg[7][1][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(11),
      I1 => \ch_reg_reg[7][2]_49\(11),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(11),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(11),
      O => \ch_reg[7][1][12]_i_2_n_0\
    );
\ch_reg[7][1][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(11),
      I1 => \ch_reg_reg[7][6]_53\(11),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(11),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(11),
      O => \ch_reg[7][1][12]_i_3_n_0\
    );
\ch_reg[7][1][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(12),
      I1 => \ch_reg_reg[7][2]_49\(12),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(12),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(12),
      O => \ch_reg[7][1][13]_i_2_n_0\
    );
\ch_reg[7][1][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(12),
      I1 => \ch_reg_reg[7][6]_53\(12),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(12),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(12),
      O => \ch_reg[7][1][13]_i_3_n_0\
    );
\ch_reg[7][1][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(13),
      I1 => \ch_reg_reg[7][2]_49\(13),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(13),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(13),
      O => \ch_reg[7][1][14]_i_2_n_0\
    );
\ch_reg[7][1][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(13),
      I1 => \ch_reg_reg[7][6]_53\(13),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(13),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(13),
      O => \ch_reg[7][1][14]_i_3_n_0\
    );
\ch_reg[7][1][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(14),
      I1 => \ch_reg_reg[7][2]_49\(14),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(14),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(14),
      O => \ch_reg[7][1][15]_i_2_n_0\
    );
\ch_reg[7][1][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(14),
      I1 => \ch_reg_reg[7][6]_53\(14),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(14),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(14),
      O => \ch_reg[7][1][15]_i_3_n_0\
    );
\ch_reg[7][1][16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(15),
      I1 => \ch_reg_reg[7][2]_49\(15),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(15),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(15),
      O => \ch_reg[7][1][16]_i_2_n_0\
    );
\ch_reg[7][1][16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(15),
      I1 => \ch_reg_reg[7][6]_53\(15),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(15),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(15),
      O => \ch_reg[7][1][16]_i_3_n_0\
    );
\ch_reg[7][1][17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(16),
      I1 => \ch_reg_reg[7][2]_49\(16),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(16),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(16),
      O => \ch_reg[7][1][17]_i_2_n_0\
    );
\ch_reg[7][1][17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(16),
      I1 => \ch_reg_reg[7][6]_53\(16),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(16),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(16),
      O => \ch_reg[7][1][17]_i_3_n_0\
    );
\ch_reg[7][1][18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(17),
      I1 => \ch_reg_reg[7][2]_49\(17),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(17),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(17),
      O => \ch_reg[7][1][18]_i_2_n_0\
    );
\ch_reg[7][1][18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(17),
      I1 => \ch_reg_reg[7][6]_53\(17),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(17),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(17),
      O => \ch_reg[7][1][18]_i_3_n_0\
    );
\ch_reg[7][1][19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(18),
      I1 => \ch_reg_reg[7][2]_49\(18),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(18),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(18),
      O => \ch_reg[7][1][19]_i_2_n_0\
    );
\ch_reg[7][1][19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(18),
      I1 => \ch_reg_reg[7][6]_53\(18),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(18),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(18),
      O => \ch_reg[7][1][19]_i_3_n_0\
    );
\ch_reg[7][1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(0),
      I1 => \ch_reg_reg[7][2]_49\(0),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(0),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(0),
      O => \ch_reg[7][1][1]_i_2_n_0\
    );
\ch_reg[7][1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(0),
      I1 => \ch_reg_reg[7][6]_53\(0),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(0),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(0),
      O => \ch_reg[7][1][1]_i_3_n_0\
    );
\ch_reg[7][1][20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(19),
      I1 => \ch_reg_reg[7][2]_49\(19),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(19),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(19),
      O => \ch_reg[7][1][20]_i_2_n_0\
    );
\ch_reg[7][1][20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(19),
      I1 => \ch_reg_reg[7][6]_53\(19),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(19),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(19),
      O => \ch_reg[7][1][20]_i_3_n_0\
    );
\ch_reg[7][1][21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(20),
      I1 => \ch_reg_reg[7][2]_49\(20),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(20),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(20),
      O => \ch_reg[7][1][21]_i_2_n_0\
    );
\ch_reg[7][1][21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(20),
      I1 => \ch_reg_reg[7][6]_53\(20),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(20),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(20),
      O => \ch_reg[7][1][21]_i_3_n_0\
    );
\ch_reg[7][1][22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(21),
      I1 => \ch_reg_reg[7][2]_49\(21),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(21),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(21),
      O => \ch_reg[7][1][22]_i_2_n_0\
    );
\ch_reg[7][1][22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(21),
      I1 => \ch_reg_reg[7][6]_53\(21),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(21),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(21),
      O => \ch_reg[7][1][22]_i_3_n_0\
    );
\ch_reg[7][1][23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(22),
      I1 => \ch_reg_reg[7][2]_49\(22),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(22),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(22),
      O => \ch_reg[7][1][23]_i_2_n_0\
    );
\ch_reg[7][1][23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(22),
      I1 => \ch_reg_reg[7][6]_53\(22),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(22),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(22),
      O => \ch_reg[7][1][23]_i_3_n_0\
    );
\ch_reg[7][1][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(1),
      I1 => \ch_reg_reg[7][2]_49\(1),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(1),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(1),
      O => \ch_reg[7][1][2]_i_2_n_0\
    );
\ch_reg[7][1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(1),
      I1 => \ch_reg_reg[7][6]_53\(1),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(1),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(1),
      O => \ch_reg[7][1][2]_i_3_n_0\
    );
\ch_reg[7][1][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(2),
      I1 => \ch_reg_reg[7][2]_49\(2),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(2),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(2),
      O => \ch_reg[7][1][3]_i_2_n_0\
    );
\ch_reg[7][1][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(2),
      I1 => \ch_reg_reg[7][6]_53\(2),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(2),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(2),
      O => \ch_reg[7][1][3]_i_3_n_0\
    );
\ch_reg[7][1][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(3),
      I1 => \ch_reg_reg[7][2]_49\(3),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(3),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(3),
      O => \ch_reg[7][1][4]_i_2_n_0\
    );
\ch_reg[7][1][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(3),
      I1 => \ch_reg_reg[7][6]_53\(3),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(3),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(3),
      O => \ch_reg[7][1][4]_i_3_n_0\
    );
\ch_reg[7][1][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(4),
      I1 => \ch_reg_reg[7][2]_49\(4),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(4),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(4),
      O => \ch_reg[7][1][5]_i_2_n_0\
    );
\ch_reg[7][1][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(4),
      I1 => \ch_reg_reg[7][6]_53\(4),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(4),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(4),
      O => \ch_reg[7][1][5]_i_3_n_0\
    );
\ch_reg[7][1][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(5),
      I1 => \ch_reg_reg[7][2]_49\(5),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(5),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(5),
      O => \ch_reg[7][1][6]_i_2_n_0\
    );
\ch_reg[7][1][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(5),
      I1 => \ch_reg_reg[7][6]_53\(5),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(5),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(5),
      O => \ch_reg[7][1][6]_i_3_n_0\
    );
\ch_reg[7][1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(6),
      I1 => \ch_reg_reg[7][2]_49\(6),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(6),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(6),
      O => \ch_reg[7][1][7]_i_2_n_0\
    );
\ch_reg[7][1][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(6),
      I1 => \ch_reg_reg[7][6]_53\(6),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(6),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(6),
      O => \ch_reg[7][1][7]_i_3_n_0\
    );
\ch_reg[7][1][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(7),
      I1 => \ch_reg_reg[7][2]_49\(7),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(7),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(7),
      O => \ch_reg[7][1][8]_i_2_n_0\
    );
\ch_reg[7][1][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(7),
      I1 => \ch_reg_reg[7][6]_53\(7),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(7),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(7),
      O => \ch_reg[7][1][8]_i_3_n_0\
    );
\ch_reg[7][1][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(8),
      I1 => \ch_reg_reg[7][2]_49\(8),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][1]_48\(8),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][0]_55\(8),
      O => \ch_reg[7][1][9]_i_2_n_0\
    );
\ch_reg[7][1][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(8),
      I1 => \ch_reg_reg[7][6]_53\(8),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[7][5]_52\(8),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[7][4]_51\(8),
      O => \ch_reg[7][1][9]_i_3_n_0\
    );
\ch_reg[8][1][10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(9),
      I1 => \ch_reg_reg[8][2]_57\(9),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(9),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(9),
      O => \ch_reg[8][1][10]_i_2_n_0\
    );
\ch_reg[8][1][10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(9),
      I1 => \ch_reg_reg[8][6]_61\(9),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(9),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(9),
      O => \ch_reg[8][1][10]_i_3_n_0\
    );
\ch_reg[8][1][11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(10),
      I1 => \ch_reg_reg[8][2]_57\(10),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(10),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(10),
      O => \ch_reg[8][1][11]_i_2_n_0\
    );
\ch_reg[8][1][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(10),
      I1 => \ch_reg_reg[8][6]_61\(10),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(10),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(10),
      O => \ch_reg[8][1][11]_i_3_n_0\
    );
\ch_reg[8][1][12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(11),
      I1 => \ch_reg_reg[8][2]_57\(11),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(11),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(11),
      O => \ch_reg[8][1][12]_i_2_n_0\
    );
\ch_reg[8][1][12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(11),
      I1 => \ch_reg_reg[8][6]_61\(11),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(11),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(11),
      O => \ch_reg[8][1][12]_i_3_n_0\
    );
\ch_reg[8][1][13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(12),
      I1 => \ch_reg_reg[8][2]_57\(12),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(12),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(12),
      O => \ch_reg[8][1][13]_i_2_n_0\
    );
\ch_reg[8][1][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(12),
      I1 => \ch_reg_reg[8][6]_61\(12),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(12),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(12),
      O => \ch_reg[8][1][13]_i_3_n_0\
    );
\ch_reg[8][1][14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(13),
      I1 => \ch_reg_reg[8][2]_57\(13),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(13),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(13),
      O => \ch_reg[8][1][14]_i_2_n_0\
    );
\ch_reg[8][1][14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(13),
      I1 => \ch_reg_reg[8][6]_61\(13),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(13),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(13),
      O => \ch_reg[8][1][14]_i_3_n_0\
    );
\ch_reg[8][1][15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(14),
      I1 => \ch_reg_reg[8][2]_57\(14),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(14),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(14),
      O => \ch_reg[8][1][15]_i_2_n_0\
    );
\ch_reg[8][1][15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(14),
      I1 => \ch_reg_reg[8][6]_61\(14),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(14),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(14),
      O => \ch_reg[8][1][15]_i_3_n_0\
    );
\ch_reg[8][1][16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(15),
      I1 => \ch_reg_reg[8][2]_57\(15),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(15),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(15),
      O => \ch_reg[8][1][16]_i_2_n_0\
    );
\ch_reg[8][1][16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(15),
      I1 => \ch_reg_reg[8][6]_61\(15),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(15),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(15),
      O => \ch_reg[8][1][16]_i_3_n_0\
    );
\ch_reg[8][1][17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(16),
      I1 => \ch_reg_reg[8][2]_57\(16),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(16),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(16),
      O => \ch_reg[8][1][17]_i_2_n_0\
    );
\ch_reg[8][1][17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(16),
      I1 => \ch_reg_reg[8][6]_61\(16),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(16),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(16),
      O => \ch_reg[8][1][17]_i_3_n_0\
    );
\ch_reg[8][1][18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(17),
      I1 => \ch_reg_reg[8][2]_57\(17),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(17),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(17),
      O => \ch_reg[8][1][18]_i_2_n_0\
    );
\ch_reg[8][1][18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(17),
      I1 => \ch_reg_reg[8][6]_61\(17),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(17),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(17),
      O => \ch_reg[8][1][18]_i_3_n_0\
    );
\ch_reg[8][1][19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(18),
      I1 => \ch_reg_reg[8][2]_57\(18),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(18),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(18),
      O => \ch_reg[8][1][19]_i_2_n_0\
    );
\ch_reg[8][1][19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(18),
      I1 => \ch_reg_reg[8][6]_61\(18),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(18),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(18),
      O => \ch_reg[8][1][19]_i_3_n_0\
    );
\ch_reg[8][1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(0),
      I1 => \ch_reg_reg[8][2]_57\(0),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(0),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(0),
      O => \ch_reg[8][1][1]_i_2_n_0\
    );
\ch_reg[8][1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(0),
      I1 => \ch_reg_reg[8][6]_61\(0),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(0),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(0),
      O => \ch_reg[8][1][1]_i_3_n_0\
    );
\ch_reg[8][1][20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(19),
      I1 => \ch_reg_reg[8][2]_57\(19),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(19),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(19),
      O => \ch_reg[8][1][20]_i_2_n_0\
    );
\ch_reg[8][1][20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(19),
      I1 => \ch_reg_reg[8][6]_61\(19),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(19),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(19),
      O => \ch_reg[8][1][20]_i_3_n_0\
    );
\ch_reg[8][1][21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(20),
      I1 => \ch_reg_reg[8][2]_57\(20),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(20),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(20),
      O => \ch_reg[8][1][21]_i_2_n_0\
    );
\ch_reg[8][1][21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(20),
      I1 => \ch_reg_reg[8][6]_61\(20),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(20),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(20),
      O => \ch_reg[8][1][21]_i_3_n_0\
    );
\ch_reg[8][1][22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(21),
      I1 => \ch_reg_reg[8][2]_57\(21),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(21),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(21),
      O => \ch_reg[8][1][22]_i_2_n_0\
    );
\ch_reg[8][1][22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(21),
      I1 => \ch_reg_reg[8][6]_61\(21),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(21),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(21),
      O => \ch_reg[8][1][22]_i_3_n_0\
    );
\ch_reg[8][1][23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(22),
      I1 => \ch_reg_reg[8][2]_57\(22),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(22),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(22),
      O => \ch_reg[8][1][23]_i_2_n_0\
    );
\ch_reg[8][1][23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(22),
      I1 => \ch_reg_reg[8][6]_61\(22),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(22),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(22),
      O => \ch_reg[8][1][23]_i_3_n_0\
    );
\ch_reg[8][1][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(1),
      I1 => \ch_reg_reg[8][2]_57\(1),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(1),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(1),
      O => \ch_reg[8][1][2]_i_2_n_0\
    );
\ch_reg[8][1][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(1),
      I1 => \ch_reg_reg[8][6]_61\(1),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(1),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(1),
      O => \ch_reg[8][1][2]_i_3_n_0\
    );
\ch_reg[8][1][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(2),
      I1 => \ch_reg_reg[8][2]_57\(2),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(2),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(2),
      O => \ch_reg[8][1][3]_i_2_n_0\
    );
\ch_reg[8][1][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(2),
      I1 => \ch_reg_reg[8][6]_61\(2),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(2),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(2),
      O => \ch_reg[8][1][3]_i_3_n_0\
    );
\ch_reg[8][1][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(3),
      I1 => \ch_reg_reg[8][2]_57\(3),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(3),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(3),
      O => \ch_reg[8][1][4]_i_2_n_0\
    );
\ch_reg[8][1][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(3),
      I1 => \ch_reg_reg[8][6]_61\(3),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(3),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(3),
      O => \ch_reg[8][1][4]_i_3_n_0\
    );
\ch_reg[8][1][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(4),
      I1 => \ch_reg_reg[8][2]_57\(4),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(4),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(4),
      O => \ch_reg[8][1][5]_i_2_n_0\
    );
\ch_reg[8][1][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(4),
      I1 => \ch_reg_reg[8][6]_61\(4),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(4),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(4),
      O => \ch_reg[8][1][5]_i_3_n_0\
    );
\ch_reg[8][1][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(5),
      I1 => \ch_reg_reg[8][2]_57\(5),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(5),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(5),
      O => \ch_reg[8][1][6]_i_2_n_0\
    );
\ch_reg[8][1][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(5),
      I1 => \ch_reg_reg[8][6]_61\(5),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(5),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(5),
      O => \ch_reg[8][1][6]_i_3_n_0\
    );
\ch_reg[8][1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(6),
      I1 => \ch_reg_reg[8][2]_57\(6),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(6),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(6),
      O => \ch_reg[8][1][7]_i_2_n_0\
    );
\ch_reg[8][1][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(6),
      I1 => \ch_reg_reg[8][6]_61\(6),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(6),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(6),
      O => \ch_reg[8][1][7]_i_3_n_0\
    );
\ch_reg[8][1][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(7),
      I1 => \ch_reg_reg[8][2]_57\(7),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(7),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(7),
      O => \ch_reg[8][1][8]_i_2_n_0\
    );
\ch_reg[8][1][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(7),
      I1 => \ch_reg_reg[8][6]_61\(7),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(7),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(7),
      O => \ch_reg[8][1][8]_i_3_n_0\
    );
\ch_reg[8][1][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(8),
      I1 => \ch_reg_reg[8][2]_57\(8),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][1]_56\(8),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][0]_63\(8),
      O => \ch_reg[8][1][9]_i_2_n_0\
    );
\ch_reg[8][1][9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(8),
      I1 => \ch_reg_reg[8][6]_61\(8),
      I2 => \BIT_cnt_reg_n_0_[6]\,
      I3 => \ch_reg_reg[8][5]_60\(8),
      I4 => \BIT_cnt_reg_n_0_[5]\,
      I5 => \ch_reg_reg[8][4]_59\(8),
      O => \ch_reg[8][1][9]_i_3_n_0\
    );
\ch_reg_reg[1][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => SDATA1,
      Q => \ch_reg_reg[1][0]_7\(0),
      R => '0'
    );
\ch_reg_reg[1][0][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(10),
      Q => \ch_reg_reg[1][0]_7\(10),
      R => '0'
    );
\ch_reg_reg[1][0][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(11),
      Q => \ch_reg_reg[1][0]_7\(11),
      R => '0'
    );
\ch_reg_reg[1][0][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(12),
      Q => \ch_reg_reg[1][0]_7\(12),
      R => '0'
    );
\ch_reg_reg[1][0][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(13),
      Q => \ch_reg_reg[1][0]_7\(13),
      R => '0'
    );
\ch_reg_reg[1][0][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(14),
      Q => \ch_reg_reg[1][0]_7\(14),
      R => '0'
    );
\ch_reg_reg[1][0][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(15),
      Q => \ch_reg_reg[1][0]_7\(15),
      R => '0'
    );
\ch_reg_reg[1][0][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(16),
      Q => \ch_reg_reg[1][0]_7\(16),
      R => '0'
    );
\ch_reg_reg[1][0][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(17),
      Q => \ch_reg_reg[1][0]_7\(17),
      R => '0'
    );
\ch_reg_reg[1][0][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(18),
      Q => \ch_reg_reg[1][0]_7\(18),
      R => '0'
    );
\ch_reg_reg[1][0][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(19),
      Q => \ch_reg_reg[1][0]_7\(19),
      R => '0'
    );
\ch_reg_reg[1][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(1),
      Q => \ch_reg_reg[1][0]_7\(1),
      R => '0'
    );
\ch_reg_reg[1][0][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(20),
      Q => \ch_reg_reg[1][0]_7\(20),
      R => '0'
    );
\ch_reg_reg[1][0][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(21),
      Q => \ch_reg_reg[1][0]_7\(21),
      R => '0'
    );
\ch_reg_reg[1][0][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(22),
      Q => \ch_reg_reg[1][0]_7\(22),
      R => '0'
    );
\ch_reg_reg[1][0][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(23),
      Q => \ch_reg_reg[1][0]_7\(23),
      R => '0'
    );
\ch_reg_reg[1][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(2),
      Q => \ch_reg_reg[1][0]_7\(2),
      R => '0'
    );
\ch_reg_reg[1][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(3),
      Q => \ch_reg_reg[1][0]_7\(3),
      R => '0'
    );
\ch_reg_reg[1][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(4),
      Q => \ch_reg_reg[1][0]_7\(4),
      R => '0'
    );
\ch_reg_reg[1][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(5),
      Q => \ch_reg_reg[1][0]_7\(5),
      R => '0'
    );
\ch_reg_reg[1][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(6),
      Q => \ch_reg_reg[1][0]_7\(6),
      R => '0'
    );
\ch_reg_reg[1][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(7),
      Q => \ch_reg_reg[1][0]_7\(7),
      R => '0'
    );
\ch_reg_reg[1][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(8),
      Q => \ch_reg_reg[1][0]_7\(8),
      R => '0'
    );
\ch_reg_reg[1][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_63_in(9),
      Q => \ch_reg_reg[1][0]_7\(9),
      R => '0'
    );
\ch_reg_reg[1][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => SDATA1,
      Q => \ch_reg_reg[1][1]_0\(0),
      R => '0'
    );
\ch_reg_reg[1][1][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(10),
      Q => \ch_reg_reg[1][1]_0\(10),
      R => '0'
    );
\ch_reg_reg[1][1][10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][10]_i_2_n_0\,
      I1 => \ch_reg[1][1][10]_i_3_n_0\,
      O => p_63_in(10),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(11),
      Q => \ch_reg_reg[1][1]_0\(11),
      R => '0'
    );
\ch_reg_reg[1][1][11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][11]_i_2_n_0\,
      I1 => \ch_reg[1][1][11]_i_3_n_0\,
      O => p_63_in(11),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(12),
      Q => \ch_reg_reg[1][1]_0\(12),
      R => '0'
    );
\ch_reg_reg[1][1][12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][12]_i_2_n_0\,
      I1 => \ch_reg[1][1][12]_i_3_n_0\,
      O => p_63_in(12),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(13),
      Q => \ch_reg_reg[1][1]_0\(13),
      R => '0'
    );
\ch_reg_reg[1][1][13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][13]_i_2_n_0\,
      I1 => \ch_reg[1][1][13]_i_3_n_0\,
      O => p_63_in(13),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(14),
      Q => \ch_reg_reg[1][1]_0\(14),
      R => '0'
    );
\ch_reg_reg[1][1][14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][14]_i_2_n_0\,
      I1 => \ch_reg[1][1][14]_i_3_n_0\,
      O => p_63_in(14),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(15),
      Q => \ch_reg_reg[1][1]_0\(15),
      R => '0'
    );
\ch_reg_reg[1][1][15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][15]_i_2_n_0\,
      I1 => \ch_reg[1][1][15]_i_3_n_0\,
      O => p_63_in(15),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(16),
      Q => \ch_reg_reg[1][1]_0\(16),
      R => '0'
    );
\ch_reg_reg[1][1][16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][16]_i_2_n_0\,
      I1 => \ch_reg[1][1][16]_i_3_n_0\,
      O => p_63_in(16),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(17),
      Q => \ch_reg_reg[1][1]_0\(17),
      R => '0'
    );
\ch_reg_reg[1][1][17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][17]_i_2_n_0\,
      I1 => \ch_reg[1][1][17]_i_3_n_0\,
      O => p_63_in(17),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(18),
      Q => \ch_reg_reg[1][1]_0\(18),
      R => '0'
    );
\ch_reg_reg[1][1][18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][18]_i_2_n_0\,
      I1 => \ch_reg[1][1][18]_i_3_n_0\,
      O => p_63_in(18),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(19),
      Q => \ch_reg_reg[1][1]_0\(19),
      R => '0'
    );
\ch_reg_reg[1][1][19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][19]_i_2_n_0\,
      I1 => \ch_reg[1][1][19]_i_3_n_0\,
      O => p_63_in(19),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(1),
      Q => \ch_reg_reg[1][1]_0\(1),
      R => '0'
    );
\ch_reg_reg[1][1][1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][1]_i_2_n_0\,
      I1 => \ch_reg[1][1][1]_i_3_n_0\,
      O => p_63_in(1),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(20),
      Q => \ch_reg_reg[1][1]_0\(20),
      R => '0'
    );
\ch_reg_reg[1][1][20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][20]_i_2_n_0\,
      I1 => \ch_reg[1][1][20]_i_3_n_0\,
      O => p_63_in(20),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(21),
      Q => \ch_reg_reg[1][1]_0\(21),
      R => '0'
    );
\ch_reg_reg[1][1][21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][21]_i_2_n_0\,
      I1 => \ch_reg[1][1][21]_i_3_n_0\,
      O => p_63_in(21),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(22),
      Q => \ch_reg_reg[1][1]_0\(22),
      R => '0'
    );
\ch_reg_reg[1][1][22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][22]_i_2_n_0\,
      I1 => \ch_reg[1][1][22]_i_3_n_0\,
      O => p_63_in(22),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(23),
      Q => \ch_reg_reg[1][1]_0\(23),
      R => '0'
    );
\ch_reg_reg[1][1][23]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][23]_i_6_n_0\,
      I1 => \ch_reg[1][1][23]_i_7_n_0\,
      O => p_63_in(23),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(2),
      Q => \ch_reg_reg[1][1]_0\(2),
      R => '0'
    );
\ch_reg_reg[1][1][2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][2]_i_2_n_0\,
      I1 => \ch_reg[1][1][2]_i_3_n_0\,
      O => p_63_in(2),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(3),
      Q => \ch_reg_reg[1][1]_0\(3),
      R => '0'
    );
\ch_reg_reg[1][1][3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][3]_i_2_n_0\,
      I1 => \ch_reg[1][1][3]_i_3_n_0\,
      O => p_63_in(3),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(4),
      Q => \ch_reg_reg[1][1]_0\(4),
      R => '0'
    );
\ch_reg_reg[1][1][4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][4]_i_2_n_0\,
      I1 => \ch_reg[1][1][4]_i_3_n_0\,
      O => p_63_in(4),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(5),
      Q => \ch_reg_reg[1][1]_0\(5),
      R => '0'
    );
\ch_reg_reg[1][1][5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][5]_i_2_n_0\,
      I1 => \ch_reg[1][1][5]_i_3_n_0\,
      O => p_63_in(5),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(6),
      Q => \ch_reg_reg[1][1]_0\(6),
      R => '0'
    );
\ch_reg_reg[1][1][6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][6]_i_2_n_0\,
      I1 => \ch_reg[1][1][6]_i_3_n_0\,
      O => p_63_in(6),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(7),
      Q => \ch_reg_reg[1][1]_0\(7),
      R => '0'
    );
\ch_reg_reg[1][1][7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][7]_i_2_n_0\,
      I1 => \ch_reg[1][1][7]_i_3_n_0\,
      O => p_63_in(7),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(8),
      Q => \ch_reg_reg[1][1]_0\(8),
      R => '0'
    );
\ch_reg_reg[1][1][8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][8]_i_2_n_0\,
      I1 => \ch_reg[1][1][8]_i_3_n_0\,
      O => p_63_in(8),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_63_in(9),
      Q => \ch_reg_reg[1][1]_0\(9),
      R => '0'
    );
\ch_reg_reg[1][1][9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[1][1][9]_i_2_n_0\,
      I1 => \ch_reg[1][1][9]_i_3_n_0\,
      O => p_63_in(9),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[1][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => SDATA1,
      Q => \ch_reg_reg[1][2]_1\(0),
      R => '0'
    );
\ch_reg_reg[1][2][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(10),
      Q => \ch_reg_reg[1][2]_1\(10),
      R => '0'
    );
\ch_reg_reg[1][2][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(11),
      Q => \ch_reg_reg[1][2]_1\(11),
      R => '0'
    );
\ch_reg_reg[1][2][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(12),
      Q => \ch_reg_reg[1][2]_1\(12),
      R => '0'
    );
\ch_reg_reg[1][2][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(13),
      Q => \ch_reg_reg[1][2]_1\(13),
      R => '0'
    );
\ch_reg_reg[1][2][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(14),
      Q => \ch_reg_reg[1][2]_1\(14),
      R => '0'
    );
\ch_reg_reg[1][2][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(15),
      Q => \ch_reg_reg[1][2]_1\(15),
      R => '0'
    );
\ch_reg_reg[1][2][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(16),
      Q => \ch_reg_reg[1][2]_1\(16),
      R => '0'
    );
\ch_reg_reg[1][2][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(17),
      Q => \ch_reg_reg[1][2]_1\(17),
      R => '0'
    );
\ch_reg_reg[1][2][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(18),
      Q => \ch_reg_reg[1][2]_1\(18),
      R => '0'
    );
\ch_reg_reg[1][2][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(19),
      Q => \ch_reg_reg[1][2]_1\(19),
      R => '0'
    );
\ch_reg_reg[1][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(1),
      Q => \ch_reg_reg[1][2]_1\(1),
      R => '0'
    );
\ch_reg_reg[1][2][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(20),
      Q => \ch_reg_reg[1][2]_1\(20),
      R => '0'
    );
\ch_reg_reg[1][2][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(21),
      Q => \ch_reg_reg[1][2]_1\(21),
      R => '0'
    );
\ch_reg_reg[1][2][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(22),
      Q => \ch_reg_reg[1][2]_1\(22),
      R => '0'
    );
\ch_reg_reg[1][2][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(23),
      Q => \ch_reg_reg[1][2]_1\(23),
      R => '0'
    );
\ch_reg_reg[1][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(2),
      Q => \ch_reg_reg[1][2]_1\(2),
      R => '0'
    );
\ch_reg_reg[1][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(3),
      Q => \ch_reg_reg[1][2]_1\(3),
      R => '0'
    );
\ch_reg_reg[1][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(4),
      Q => \ch_reg_reg[1][2]_1\(4),
      R => '0'
    );
\ch_reg_reg[1][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(5),
      Q => \ch_reg_reg[1][2]_1\(5),
      R => '0'
    );
\ch_reg_reg[1][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(6),
      Q => \ch_reg_reg[1][2]_1\(6),
      R => '0'
    );
\ch_reg_reg[1][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(7),
      Q => \ch_reg_reg[1][2]_1\(7),
      R => '0'
    );
\ch_reg_reg[1][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(8),
      Q => \ch_reg_reg[1][2]_1\(8),
      R => '0'
    );
\ch_reg_reg[1][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_63_in(9),
      Q => \ch_reg_reg[1][2]_1\(9),
      R => '0'
    );
\ch_reg_reg[1][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => SDATA1,
      Q => \ch_reg_reg[1][3]_2\(0),
      R => '0'
    );
\ch_reg_reg[1][3][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(10),
      Q => \ch_reg_reg[1][3]_2\(10),
      R => '0'
    );
\ch_reg_reg[1][3][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(11),
      Q => \ch_reg_reg[1][3]_2\(11),
      R => '0'
    );
\ch_reg_reg[1][3][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(12),
      Q => \ch_reg_reg[1][3]_2\(12),
      R => '0'
    );
\ch_reg_reg[1][3][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(13),
      Q => \ch_reg_reg[1][3]_2\(13),
      R => '0'
    );
\ch_reg_reg[1][3][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(14),
      Q => \ch_reg_reg[1][3]_2\(14),
      R => '0'
    );
\ch_reg_reg[1][3][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(15),
      Q => \ch_reg_reg[1][3]_2\(15),
      R => '0'
    );
\ch_reg_reg[1][3][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(16),
      Q => \ch_reg_reg[1][3]_2\(16),
      R => '0'
    );
\ch_reg_reg[1][3][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(17),
      Q => \ch_reg_reg[1][3]_2\(17),
      R => '0'
    );
\ch_reg_reg[1][3][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(18),
      Q => \ch_reg_reg[1][3]_2\(18),
      R => '0'
    );
\ch_reg_reg[1][3][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(19),
      Q => \ch_reg_reg[1][3]_2\(19),
      R => '0'
    );
\ch_reg_reg[1][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(1),
      Q => \ch_reg_reg[1][3]_2\(1),
      R => '0'
    );
\ch_reg_reg[1][3][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(20),
      Q => \ch_reg_reg[1][3]_2\(20),
      R => '0'
    );
\ch_reg_reg[1][3][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(21),
      Q => \ch_reg_reg[1][3]_2\(21),
      R => '0'
    );
\ch_reg_reg[1][3][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(22),
      Q => \ch_reg_reg[1][3]_2\(22),
      R => '0'
    );
\ch_reg_reg[1][3][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(23),
      Q => \ch_reg_reg[1][3]_2\(23),
      R => '0'
    );
\ch_reg_reg[1][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(2),
      Q => \ch_reg_reg[1][3]_2\(2),
      R => '0'
    );
\ch_reg_reg[1][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(3),
      Q => \ch_reg_reg[1][3]_2\(3),
      R => '0'
    );
\ch_reg_reg[1][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(4),
      Q => \ch_reg_reg[1][3]_2\(4),
      R => '0'
    );
\ch_reg_reg[1][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(5),
      Q => \ch_reg_reg[1][3]_2\(5),
      R => '0'
    );
\ch_reg_reg[1][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(6),
      Q => \ch_reg_reg[1][3]_2\(6),
      R => '0'
    );
\ch_reg_reg[1][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(7),
      Q => \ch_reg_reg[1][3]_2\(7),
      R => '0'
    );
\ch_reg_reg[1][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(8),
      Q => \ch_reg_reg[1][3]_2\(8),
      R => '0'
    );
\ch_reg_reg[1][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_63_in(9),
      Q => \ch_reg_reg[1][3]_2\(9),
      R => '0'
    );
\ch_reg_reg[1][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => SDATA1,
      Q => \ch_reg_reg[1][4]_3\(0),
      R => '0'
    );
\ch_reg_reg[1][4][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(10),
      Q => \ch_reg_reg[1][4]_3\(10),
      R => '0'
    );
\ch_reg_reg[1][4][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(11),
      Q => \ch_reg_reg[1][4]_3\(11),
      R => '0'
    );
\ch_reg_reg[1][4][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(12),
      Q => \ch_reg_reg[1][4]_3\(12),
      R => '0'
    );
\ch_reg_reg[1][4][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(13),
      Q => \ch_reg_reg[1][4]_3\(13),
      R => '0'
    );
\ch_reg_reg[1][4][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(14),
      Q => \ch_reg_reg[1][4]_3\(14),
      R => '0'
    );
\ch_reg_reg[1][4][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(15),
      Q => \ch_reg_reg[1][4]_3\(15),
      R => '0'
    );
\ch_reg_reg[1][4][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(16),
      Q => \ch_reg_reg[1][4]_3\(16),
      R => '0'
    );
\ch_reg_reg[1][4][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(17),
      Q => \ch_reg_reg[1][4]_3\(17),
      R => '0'
    );
\ch_reg_reg[1][4][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(18),
      Q => \ch_reg_reg[1][4]_3\(18),
      R => '0'
    );
\ch_reg_reg[1][4][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(19),
      Q => \ch_reg_reg[1][4]_3\(19),
      R => '0'
    );
\ch_reg_reg[1][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(1),
      Q => \ch_reg_reg[1][4]_3\(1),
      R => '0'
    );
\ch_reg_reg[1][4][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(20),
      Q => \ch_reg_reg[1][4]_3\(20),
      R => '0'
    );
\ch_reg_reg[1][4][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(21),
      Q => \ch_reg_reg[1][4]_3\(21),
      R => '0'
    );
\ch_reg_reg[1][4][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(22),
      Q => \ch_reg_reg[1][4]_3\(22),
      R => '0'
    );
\ch_reg_reg[1][4][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(23),
      Q => \ch_reg_reg[1][4]_3\(23),
      R => '0'
    );
\ch_reg_reg[1][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(2),
      Q => \ch_reg_reg[1][4]_3\(2),
      R => '0'
    );
\ch_reg_reg[1][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(3),
      Q => \ch_reg_reg[1][4]_3\(3),
      R => '0'
    );
\ch_reg_reg[1][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(4),
      Q => \ch_reg_reg[1][4]_3\(4),
      R => '0'
    );
\ch_reg_reg[1][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(5),
      Q => \ch_reg_reg[1][4]_3\(5),
      R => '0'
    );
\ch_reg_reg[1][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(6),
      Q => \ch_reg_reg[1][4]_3\(6),
      R => '0'
    );
\ch_reg_reg[1][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(7),
      Q => \ch_reg_reg[1][4]_3\(7),
      R => '0'
    );
\ch_reg_reg[1][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(8),
      Q => \ch_reg_reg[1][4]_3\(8),
      R => '0'
    );
\ch_reg_reg[1][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_63_in(9),
      Q => \ch_reg_reg[1][4]_3\(9),
      R => '0'
    );
\ch_reg_reg[1][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => SDATA1,
      Q => \ch_reg_reg[1][5]_4\(0),
      R => '0'
    );
\ch_reg_reg[1][5][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(10),
      Q => \ch_reg_reg[1][5]_4\(10),
      R => '0'
    );
\ch_reg_reg[1][5][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(11),
      Q => \ch_reg_reg[1][5]_4\(11),
      R => '0'
    );
\ch_reg_reg[1][5][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(12),
      Q => \ch_reg_reg[1][5]_4\(12),
      R => '0'
    );
\ch_reg_reg[1][5][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(13),
      Q => \ch_reg_reg[1][5]_4\(13),
      R => '0'
    );
\ch_reg_reg[1][5][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(14),
      Q => \ch_reg_reg[1][5]_4\(14),
      R => '0'
    );
\ch_reg_reg[1][5][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(15),
      Q => \ch_reg_reg[1][5]_4\(15),
      R => '0'
    );
\ch_reg_reg[1][5][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(16),
      Q => \ch_reg_reg[1][5]_4\(16),
      R => '0'
    );
\ch_reg_reg[1][5][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(17),
      Q => \ch_reg_reg[1][5]_4\(17),
      R => '0'
    );
\ch_reg_reg[1][5][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(18),
      Q => \ch_reg_reg[1][5]_4\(18),
      R => '0'
    );
\ch_reg_reg[1][5][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(19),
      Q => \ch_reg_reg[1][5]_4\(19),
      R => '0'
    );
\ch_reg_reg[1][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(1),
      Q => \ch_reg_reg[1][5]_4\(1),
      R => '0'
    );
\ch_reg_reg[1][5][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(20),
      Q => \ch_reg_reg[1][5]_4\(20),
      R => '0'
    );
\ch_reg_reg[1][5][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(21),
      Q => \ch_reg_reg[1][5]_4\(21),
      R => '0'
    );
\ch_reg_reg[1][5][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(22),
      Q => \ch_reg_reg[1][5]_4\(22),
      R => '0'
    );
\ch_reg_reg[1][5][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(23),
      Q => \ch_reg_reg[1][5]_4\(23),
      R => '0'
    );
\ch_reg_reg[1][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(2),
      Q => \ch_reg_reg[1][5]_4\(2),
      R => '0'
    );
\ch_reg_reg[1][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(3),
      Q => \ch_reg_reg[1][5]_4\(3),
      R => '0'
    );
\ch_reg_reg[1][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(4),
      Q => \ch_reg_reg[1][5]_4\(4),
      R => '0'
    );
\ch_reg_reg[1][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(5),
      Q => \ch_reg_reg[1][5]_4\(5),
      R => '0'
    );
\ch_reg_reg[1][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(6),
      Q => \ch_reg_reg[1][5]_4\(6),
      R => '0'
    );
\ch_reg_reg[1][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(7),
      Q => \ch_reg_reg[1][5]_4\(7),
      R => '0'
    );
\ch_reg_reg[1][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(8),
      Q => \ch_reg_reg[1][5]_4\(8),
      R => '0'
    );
\ch_reg_reg[1][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_63_in(9),
      Q => \ch_reg_reg[1][5]_4\(9),
      R => '0'
    );
\ch_reg_reg[1][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => SDATA1,
      Q => \ch_reg_reg[1][6]_5\(0),
      R => '0'
    );
\ch_reg_reg[1][6][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(10),
      Q => \ch_reg_reg[1][6]_5\(10),
      R => '0'
    );
\ch_reg_reg[1][6][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(11),
      Q => \ch_reg_reg[1][6]_5\(11),
      R => '0'
    );
\ch_reg_reg[1][6][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(12),
      Q => \ch_reg_reg[1][6]_5\(12),
      R => '0'
    );
\ch_reg_reg[1][6][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(13),
      Q => \ch_reg_reg[1][6]_5\(13),
      R => '0'
    );
\ch_reg_reg[1][6][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(14),
      Q => \ch_reg_reg[1][6]_5\(14),
      R => '0'
    );
\ch_reg_reg[1][6][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(15),
      Q => \ch_reg_reg[1][6]_5\(15),
      R => '0'
    );
\ch_reg_reg[1][6][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(16),
      Q => \ch_reg_reg[1][6]_5\(16),
      R => '0'
    );
\ch_reg_reg[1][6][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(17),
      Q => \ch_reg_reg[1][6]_5\(17),
      R => '0'
    );
\ch_reg_reg[1][6][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(18),
      Q => \ch_reg_reg[1][6]_5\(18),
      R => '0'
    );
\ch_reg_reg[1][6][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(19),
      Q => \ch_reg_reg[1][6]_5\(19),
      R => '0'
    );
\ch_reg_reg[1][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(1),
      Q => \ch_reg_reg[1][6]_5\(1),
      R => '0'
    );
\ch_reg_reg[1][6][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(20),
      Q => \ch_reg_reg[1][6]_5\(20),
      R => '0'
    );
\ch_reg_reg[1][6][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(21),
      Q => \ch_reg_reg[1][6]_5\(21),
      R => '0'
    );
\ch_reg_reg[1][6][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(22),
      Q => \ch_reg_reg[1][6]_5\(22),
      R => '0'
    );
\ch_reg_reg[1][6][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(23),
      Q => \ch_reg_reg[1][6]_5\(23),
      R => '0'
    );
\ch_reg_reg[1][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(2),
      Q => \ch_reg_reg[1][6]_5\(2),
      R => '0'
    );
\ch_reg_reg[1][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(3),
      Q => \ch_reg_reg[1][6]_5\(3),
      R => '0'
    );
\ch_reg_reg[1][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(4),
      Q => \ch_reg_reg[1][6]_5\(4),
      R => '0'
    );
\ch_reg_reg[1][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(5),
      Q => \ch_reg_reg[1][6]_5\(5),
      R => '0'
    );
\ch_reg_reg[1][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(6),
      Q => \ch_reg_reg[1][6]_5\(6),
      R => '0'
    );
\ch_reg_reg[1][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(7),
      Q => \ch_reg_reg[1][6]_5\(7),
      R => '0'
    );
\ch_reg_reg[1][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(8),
      Q => \ch_reg_reg[1][6]_5\(8),
      R => '0'
    );
\ch_reg_reg[1][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_63_in(9),
      Q => \ch_reg_reg[1][6]_5\(9),
      R => '0'
    );
\ch_reg_reg[1][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => SDATA1,
      Q => \ch_reg_reg[1][7]_6\(0),
      R => '0'
    );
\ch_reg_reg[1][7][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(10),
      Q => \ch_reg_reg[1][7]_6\(10),
      R => '0'
    );
\ch_reg_reg[1][7][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(11),
      Q => \ch_reg_reg[1][7]_6\(11),
      R => '0'
    );
\ch_reg_reg[1][7][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(12),
      Q => \ch_reg_reg[1][7]_6\(12),
      R => '0'
    );
\ch_reg_reg[1][7][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(13),
      Q => \ch_reg_reg[1][7]_6\(13),
      R => '0'
    );
\ch_reg_reg[1][7][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(14),
      Q => \ch_reg_reg[1][7]_6\(14),
      R => '0'
    );
\ch_reg_reg[1][7][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(15),
      Q => \ch_reg_reg[1][7]_6\(15),
      R => '0'
    );
\ch_reg_reg[1][7][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(16),
      Q => \ch_reg_reg[1][7]_6\(16),
      R => '0'
    );
\ch_reg_reg[1][7][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(17),
      Q => \ch_reg_reg[1][7]_6\(17),
      R => '0'
    );
\ch_reg_reg[1][7][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(18),
      Q => \ch_reg_reg[1][7]_6\(18),
      R => '0'
    );
\ch_reg_reg[1][7][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(19),
      Q => \ch_reg_reg[1][7]_6\(19),
      R => '0'
    );
\ch_reg_reg[1][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(1),
      Q => \ch_reg_reg[1][7]_6\(1),
      R => '0'
    );
\ch_reg_reg[1][7][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(20),
      Q => \ch_reg_reg[1][7]_6\(20),
      R => '0'
    );
\ch_reg_reg[1][7][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(21),
      Q => \ch_reg_reg[1][7]_6\(21),
      R => '0'
    );
\ch_reg_reg[1][7][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(22),
      Q => \ch_reg_reg[1][7]_6\(22),
      R => '0'
    );
\ch_reg_reg[1][7][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(23),
      Q => \ch_reg_reg[1][7]_6\(23),
      R => '0'
    );
\ch_reg_reg[1][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(2),
      Q => \ch_reg_reg[1][7]_6\(2),
      R => '0'
    );
\ch_reg_reg[1][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(3),
      Q => \ch_reg_reg[1][7]_6\(3),
      R => '0'
    );
\ch_reg_reg[1][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(4),
      Q => \ch_reg_reg[1][7]_6\(4),
      R => '0'
    );
\ch_reg_reg[1][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(5),
      Q => \ch_reg_reg[1][7]_6\(5),
      R => '0'
    );
\ch_reg_reg[1][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(6),
      Q => \ch_reg_reg[1][7]_6\(6),
      R => '0'
    );
\ch_reg_reg[1][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(7),
      Q => \ch_reg_reg[1][7]_6\(7),
      R => '0'
    );
\ch_reg_reg[1][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(8),
      Q => \ch_reg_reg[1][7]_6\(8),
      R => '0'
    );
\ch_reg_reg[1][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_63_in(9),
      Q => \ch_reg_reg[1][7]_6\(9),
      R => '0'
    );
\ch_reg_reg[2][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => SDATA2,
      Q => \ch_reg_reg[2][0]_15\(0),
      R => '0'
    );
\ch_reg_reg[2][0][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(10),
      Q => \ch_reg_reg[2][0]_15\(10),
      R => '0'
    );
\ch_reg_reg[2][0][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(11),
      Q => \ch_reg_reg[2][0]_15\(11),
      R => '0'
    );
\ch_reg_reg[2][0][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(12),
      Q => \ch_reg_reg[2][0]_15\(12),
      R => '0'
    );
\ch_reg_reg[2][0][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(13),
      Q => \ch_reg_reg[2][0]_15\(13),
      R => '0'
    );
\ch_reg_reg[2][0][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(14),
      Q => \ch_reg_reg[2][0]_15\(14),
      R => '0'
    );
\ch_reg_reg[2][0][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(15),
      Q => \ch_reg_reg[2][0]_15\(15),
      R => '0'
    );
\ch_reg_reg[2][0][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(16),
      Q => \ch_reg_reg[2][0]_15\(16),
      R => '0'
    );
\ch_reg_reg[2][0][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(17),
      Q => \ch_reg_reg[2][0]_15\(17),
      R => '0'
    );
\ch_reg_reg[2][0][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(18),
      Q => \ch_reg_reg[2][0]_15\(18),
      R => '0'
    );
\ch_reg_reg[2][0][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(19),
      Q => \ch_reg_reg[2][0]_15\(19),
      R => '0'
    );
\ch_reg_reg[2][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(1),
      Q => \ch_reg_reg[2][0]_15\(1),
      R => '0'
    );
\ch_reg_reg[2][0][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(20),
      Q => \ch_reg_reg[2][0]_15\(20),
      R => '0'
    );
\ch_reg_reg[2][0][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(21),
      Q => \ch_reg_reg[2][0]_15\(21),
      R => '0'
    );
\ch_reg_reg[2][0][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(22),
      Q => \ch_reg_reg[2][0]_15\(22),
      R => '0'
    );
\ch_reg_reg[2][0][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(23),
      Q => \ch_reg_reg[2][0]_15\(23),
      R => '0'
    );
\ch_reg_reg[2][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(2),
      Q => \ch_reg_reg[2][0]_15\(2),
      R => '0'
    );
\ch_reg_reg[2][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(3),
      Q => \ch_reg_reg[2][0]_15\(3),
      R => '0'
    );
\ch_reg_reg[2][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(4),
      Q => \ch_reg_reg[2][0]_15\(4),
      R => '0'
    );
\ch_reg_reg[2][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(5),
      Q => \ch_reg_reg[2][0]_15\(5),
      R => '0'
    );
\ch_reg_reg[2][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(6),
      Q => \ch_reg_reg[2][0]_15\(6),
      R => '0'
    );
\ch_reg_reg[2][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(7),
      Q => \ch_reg_reg[2][0]_15\(7),
      R => '0'
    );
\ch_reg_reg[2][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(8),
      Q => \ch_reg_reg[2][0]_15\(8),
      R => '0'
    );
\ch_reg_reg[2][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_54_in(9),
      Q => \ch_reg_reg[2][0]_15\(9),
      R => '0'
    );
\ch_reg_reg[2][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => SDATA2,
      Q => \ch_reg_reg[2][1]_8\(0),
      R => '0'
    );
\ch_reg_reg[2][1][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(10),
      Q => \ch_reg_reg[2][1]_8\(10),
      R => '0'
    );
\ch_reg_reg[2][1][10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][10]_i_2_n_0\,
      I1 => \ch_reg[2][1][10]_i_3_n_0\,
      O => p_54_in(10),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(11),
      Q => \ch_reg_reg[2][1]_8\(11),
      R => '0'
    );
\ch_reg_reg[2][1][11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][11]_i_2_n_0\,
      I1 => \ch_reg[2][1][11]_i_3_n_0\,
      O => p_54_in(11),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(12),
      Q => \ch_reg_reg[2][1]_8\(12),
      R => '0'
    );
\ch_reg_reg[2][1][12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][12]_i_2_n_0\,
      I1 => \ch_reg[2][1][12]_i_3_n_0\,
      O => p_54_in(12),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(13),
      Q => \ch_reg_reg[2][1]_8\(13),
      R => '0'
    );
\ch_reg_reg[2][1][13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][13]_i_2_n_0\,
      I1 => \ch_reg[2][1][13]_i_3_n_0\,
      O => p_54_in(13),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(14),
      Q => \ch_reg_reg[2][1]_8\(14),
      R => '0'
    );
\ch_reg_reg[2][1][14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][14]_i_2_n_0\,
      I1 => \ch_reg[2][1][14]_i_3_n_0\,
      O => p_54_in(14),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(15),
      Q => \ch_reg_reg[2][1]_8\(15),
      R => '0'
    );
\ch_reg_reg[2][1][15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][15]_i_2_n_0\,
      I1 => \ch_reg[2][1][15]_i_3_n_0\,
      O => p_54_in(15),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(16),
      Q => \ch_reg_reg[2][1]_8\(16),
      R => '0'
    );
\ch_reg_reg[2][1][16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][16]_i_2_n_0\,
      I1 => \ch_reg[2][1][16]_i_3_n_0\,
      O => p_54_in(16),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(17),
      Q => \ch_reg_reg[2][1]_8\(17),
      R => '0'
    );
\ch_reg_reg[2][1][17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][17]_i_2_n_0\,
      I1 => \ch_reg[2][1][17]_i_3_n_0\,
      O => p_54_in(17),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(18),
      Q => \ch_reg_reg[2][1]_8\(18),
      R => '0'
    );
\ch_reg_reg[2][1][18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][18]_i_2_n_0\,
      I1 => \ch_reg[2][1][18]_i_3_n_0\,
      O => p_54_in(18),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(19),
      Q => \ch_reg_reg[2][1]_8\(19),
      R => '0'
    );
\ch_reg_reg[2][1][19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][19]_i_2_n_0\,
      I1 => \ch_reg[2][1][19]_i_3_n_0\,
      O => p_54_in(19),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(1),
      Q => \ch_reg_reg[2][1]_8\(1),
      R => '0'
    );
\ch_reg_reg[2][1][1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][1]_i_2_n_0\,
      I1 => \ch_reg[2][1][1]_i_3_n_0\,
      O => p_54_in(1),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(20),
      Q => \ch_reg_reg[2][1]_8\(20),
      R => '0'
    );
\ch_reg_reg[2][1][20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][20]_i_2_n_0\,
      I1 => \ch_reg[2][1][20]_i_3_n_0\,
      O => p_54_in(20),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(21),
      Q => \ch_reg_reg[2][1]_8\(21),
      R => '0'
    );
\ch_reg_reg[2][1][21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][21]_i_2_n_0\,
      I1 => \ch_reg[2][1][21]_i_3_n_0\,
      O => p_54_in(21),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(22),
      Q => \ch_reg_reg[2][1]_8\(22),
      R => '0'
    );
\ch_reg_reg[2][1][22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][22]_i_2_n_0\,
      I1 => \ch_reg[2][1][22]_i_3_n_0\,
      O => p_54_in(22),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(23),
      Q => \ch_reg_reg[2][1]_8\(23),
      R => '0'
    );
\ch_reg_reg[2][1][23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][23]_i_2_n_0\,
      I1 => \ch_reg[2][1][23]_i_3_n_0\,
      O => p_54_in(23),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(2),
      Q => \ch_reg_reg[2][1]_8\(2),
      R => '0'
    );
\ch_reg_reg[2][1][2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][2]_i_2_n_0\,
      I1 => \ch_reg[2][1][2]_i_3_n_0\,
      O => p_54_in(2),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(3),
      Q => \ch_reg_reg[2][1]_8\(3),
      R => '0'
    );
\ch_reg_reg[2][1][3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][3]_i_2_n_0\,
      I1 => \ch_reg[2][1][3]_i_3_n_0\,
      O => p_54_in(3),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(4),
      Q => \ch_reg_reg[2][1]_8\(4),
      R => '0'
    );
\ch_reg_reg[2][1][4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][4]_i_2_n_0\,
      I1 => \ch_reg[2][1][4]_i_3_n_0\,
      O => p_54_in(4),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(5),
      Q => \ch_reg_reg[2][1]_8\(5),
      R => '0'
    );
\ch_reg_reg[2][1][5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][5]_i_2_n_0\,
      I1 => \ch_reg[2][1][5]_i_3_n_0\,
      O => p_54_in(5),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(6),
      Q => \ch_reg_reg[2][1]_8\(6),
      R => '0'
    );
\ch_reg_reg[2][1][6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][6]_i_2_n_0\,
      I1 => \ch_reg[2][1][6]_i_3_n_0\,
      O => p_54_in(6),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(7),
      Q => \ch_reg_reg[2][1]_8\(7),
      R => '0'
    );
\ch_reg_reg[2][1][7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][7]_i_2_n_0\,
      I1 => \ch_reg[2][1][7]_i_3_n_0\,
      O => p_54_in(7),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(8),
      Q => \ch_reg_reg[2][1]_8\(8),
      R => '0'
    );
\ch_reg_reg[2][1][8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][8]_i_2_n_0\,
      I1 => \ch_reg[2][1][8]_i_3_n_0\,
      O => p_54_in(8),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_54_in(9),
      Q => \ch_reg_reg[2][1]_8\(9),
      R => '0'
    );
\ch_reg_reg[2][1][9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[2][1][9]_i_2_n_0\,
      I1 => \ch_reg[2][1][9]_i_3_n_0\,
      O => p_54_in(9),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[2][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => SDATA2,
      Q => \ch_reg_reg[2][2]_9\(0),
      R => '0'
    );
\ch_reg_reg[2][2][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(10),
      Q => \ch_reg_reg[2][2]_9\(10),
      R => '0'
    );
\ch_reg_reg[2][2][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(11),
      Q => \ch_reg_reg[2][2]_9\(11),
      R => '0'
    );
\ch_reg_reg[2][2][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(12),
      Q => \ch_reg_reg[2][2]_9\(12),
      R => '0'
    );
\ch_reg_reg[2][2][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(13),
      Q => \ch_reg_reg[2][2]_9\(13),
      R => '0'
    );
\ch_reg_reg[2][2][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(14),
      Q => \ch_reg_reg[2][2]_9\(14),
      R => '0'
    );
\ch_reg_reg[2][2][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(15),
      Q => \ch_reg_reg[2][2]_9\(15),
      R => '0'
    );
\ch_reg_reg[2][2][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(16),
      Q => \ch_reg_reg[2][2]_9\(16),
      R => '0'
    );
\ch_reg_reg[2][2][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(17),
      Q => \ch_reg_reg[2][2]_9\(17),
      R => '0'
    );
\ch_reg_reg[2][2][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(18),
      Q => \ch_reg_reg[2][2]_9\(18),
      R => '0'
    );
\ch_reg_reg[2][2][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(19),
      Q => \ch_reg_reg[2][2]_9\(19),
      R => '0'
    );
\ch_reg_reg[2][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(1),
      Q => \ch_reg_reg[2][2]_9\(1),
      R => '0'
    );
\ch_reg_reg[2][2][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(20),
      Q => \ch_reg_reg[2][2]_9\(20),
      R => '0'
    );
\ch_reg_reg[2][2][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(21),
      Q => \ch_reg_reg[2][2]_9\(21),
      R => '0'
    );
\ch_reg_reg[2][2][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(22),
      Q => \ch_reg_reg[2][2]_9\(22),
      R => '0'
    );
\ch_reg_reg[2][2][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(23),
      Q => \ch_reg_reg[2][2]_9\(23),
      R => '0'
    );
\ch_reg_reg[2][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(2),
      Q => \ch_reg_reg[2][2]_9\(2),
      R => '0'
    );
\ch_reg_reg[2][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(3),
      Q => \ch_reg_reg[2][2]_9\(3),
      R => '0'
    );
\ch_reg_reg[2][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(4),
      Q => \ch_reg_reg[2][2]_9\(4),
      R => '0'
    );
\ch_reg_reg[2][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(5),
      Q => \ch_reg_reg[2][2]_9\(5),
      R => '0'
    );
\ch_reg_reg[2][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(6),
      Q => \ch_reg_reg[2][2]_9\(6),
      R => '0'
    );
\ch_reg_reg[2][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(7),
      Q => \ch_reg_reg[2][2]_9\(7),
      R => '0'
    );
\ch_reg_reg[2][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(8),
      Q => \ch_reg_reg[2][2]_9\(8),
      R => '0'
    );
\ch_reg_reg[2][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_54_in(9),
      Q => \ch_reg_reg[2][2]_9\(9),
      R => '0'
    );
\ch_reg_reg[2][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => SDATA2,
      Q => \ch_reg_reg[2][3]_10\(0),
      R => '0'
    );
\ch_reg_reg[2][3][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(10),
      Q => \ch_reg_reg[2][3]_10\(10),
      R => '0'
    );
\ch_reg_reg[2][3][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(11),
      Q => \ch_reg_reg[2][3]_10\(11),
      R => '0'
    );
\ch_reg_reg[2][3][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(12),
      Q => \ch_reg_reg[2][3]_10\(12),
      R => '0'
    );
\ch_reg_reg[2][3][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(13),
      Q => \ch_reg_reg[2][3]_10\(13),
      R => '0'
    );
\ch_reg_reg[2][3][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(14),
      Q => \ch_reg_reg[2][3]_10\(14),
      R => '0'
    );
\ch_reg_reg[2][3][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(15),
      Q => \ch_reg_reg[2][3]_10\(15),
      R => '0'
    );
\ch_reg_reg[2][3][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(16),
      Q => \ch_reg_reg[2][3]_10\(16),
      R => '0'
    );
\ch_reg_reg[2][3][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(17),
      Q => \ch_reg_reg[2][3]_10\(17),
      R => '0'
    );
\ch_reg_reg[2][3][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(18),
      Q => \ch_reg_reg[2][3]_10\(18),
      R => '0'
    );
\ch_reg_reg[2][3][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(19),
      Q => \ch_reg_reg[2][3]_10\(19),
      R => '0'
    );
\ch_reg_reg[2][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(1),
      Q => \ch_reg_reg[2][3]_10\(1),
      R => '0'
    );
\ch_reg_reg[2][3][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(20),
      Q => \ch_reg_reg[2][3]_10\(20),
      R => '0'
    );
\ch_reg_reg[2][3][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(21),
      Q => \ch_reg_reg[2][3]_10\(21),
      R => '0'
    );
\ch_reg_reg[2][3][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(22),
      Q => \ch_reg_reg[2][3]_10\(22),
      R => '0'
    );
\ch_reg_reg[2][3][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(23),
      Q => \ch_reg_reg[2][3]_10\(23),
      R => '0'
    );
\ch_reg_reg[2][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(2),
      Q => \ch_reg_reg[2][3]_10\(2),
      R => '0'
    );
\ch_reg_reg[2][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(3),
      Q => \ch_reg_reg[2][3]_10\(3),
      R => '0'
    );
\ch_reg_reg[2][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(4),
      Q => \ch_reg_reg[2][3]_10\(4),
      R => '0'
    );
\ch_reg_reg[2][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(5),
      Q => \ch_reg_reg[2][3]_10\(5),
      R => '0'
    );
\ch_reg_reg[2][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(6),
      Q => \ch_reg_reg[2][3]_10\(6),
      R => '0'
    );
\ch_reg_reg[2][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(7),
      Q => \ch_reg_reg[2][3]_10\(7),
      R => '0'
    );
\ch_reg_reg[2][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(8),
      Q => \ch_reg_reg[2][3]_10\(8),
      R => '0'
    );
\ch_reg_reg[2][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_54_in(9),
      Q => \ch_reg_reg[2][3]_10\(9),
      R => '0'
    );
\ch_reg_reg[2][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => SDATA2,
      Q => \ch_reg_reg[2][4]_11\(0),
      R => '0'
    );
\ch_reg_reg[2][4][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(10),
      Q => \ch_reg_reg[2][4]_11\(10),
      R => '0'
    );
\ch_reg_reg[2][4][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(11),
      Q => \ch_reg_reg[2][4]_11\(11),
      R => '0'
    );
\ch_reg_reg[2][4][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(12),
      Q => \ch_reg_reg[2][4]_11\(12),
      R => '0'
    );
\ch_reg_reg[2][4][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(13),
      Q => \ch_reg_reg[2][4]_11\(13),
      R => '0'
    );
\ch_reg_reg[2][4][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(14),
      Q => \ch_reg_reg[2][4]_11\(14),
      R => '0'
    );
\ch_reg_reg[2][4][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(15),
      Q => \ch_reg_reg[2][4]_11\(15),
      R => '0'
    );
\ch_reg_reg[2][4][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(16),
      Q => \ch_reg_reg[2][4]_11\(16),
      R => '0'
    );
\ch_reg_reg[2][4][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(17),
      Q => \ch_reg_reg[2][4]_11\(17),
      R => '0'
    );
\ch_reg_reg[2][4][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(18),
      Q => \ch_reg_reg[2][4]_11\(18),
      R => '0'
    );
\ch_reg_reg[2][4][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(19),
      Q => \ch_reg_reg[2][4]_11\(19),
      R => '0'
    );
\ch_reg_reg[2][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(1),
      Q => \ch_reg_reg[2][4]_11\(1),
      R => '0'
    );
\ch_reg_reg[2][4][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(20),
      Q => \ch_reg_reg[2][4]_11\(20),
      R => '0'
    );
\ch_reg_reg[2][4][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(21),
      Q => \ch_reg_reg[2][4]_11\(21),
      R => '0'
    );
\ch_reg_reg[2][4][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(22),
      Q => \ch_reg_reg[2][4]_11\(22),
      R => '0'
    );
\ch_reg_reg[2][4][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(23),
      Q => \ch_reg_reg[2][4]_11\(23),
      R => '0'
    );
\ch_reg_reg[2][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(2),
      Q => \ch_reg_reg[2][4]_11\(2),
      R => '0'
    );
\ch_reg_reg[2][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(3),
      Q => \ch_reg_reg[2][4]_11\(3),
      R => '0'
    );
\ch_reg_reg[2][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(4),
      Q => \ch_reg_reg[2][4]_11\(4),
      R => '0'
    );
\ch_reg_reg[2][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(5),
      Q => \ch_reg_reg[2][4]_11\(5),
      R => '0'
    );
\ch_reg_reg[2][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(6),
      Q => \ch_reg_reg[2][4]_11\(6),
      R => '0'
    );
\ch_reg_reg[2][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(7),
      Q => \ch_reg_reg[2][4]_11\(7),
      R => '0'
    );
\ch_reg_reg[2][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(8),
      Q => \ch_reg_reg[2][4]_11\(8),
      R => '0'
    );
\ch_reg_reg[2][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_54_in(9),
      Q => \ch_reg_reg[2][4]_11\(9),
      R => '0'
    );
\ch_reg_reg[2][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => SDATA2,
      Q => \ch_reg_reg[2][5]_12\(0),
      R => '0'
    );
\ch_reg_reg[2][5][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(10),
      Q => \ch_reg_reg[2][5]_12\(10),
      R => '0'
    );
\ch_reg_reg[2][5][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(11),
      Q => \ch_reg_reg[2][5]_12\(11),
      R => '0'
    );
\ch_reg_reg[2][5][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(12),
      Q => \ch_reg_reg[2][5]_12\(12),
      R => '0'
    );
\ch_reg_reg[2][5][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(13),
      Q => \ch_reg_reg[2][5]_12\(13),
      R => '0'
    );
\ch_reg_reg[2][5][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(14),
      Q => \ch_reg_reg[2][5]_12\(14),
      R => '0'
    );
\ch_reg_reg[2][5][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(15),
      Q => \ch_reg_reg[2][5]_12\(15),
      R => '0'
    );
\ch_reg_reg[2][5][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(16),
      Q => \ch_reg_reg[2][5]_12\(16),
      R => '0'
    );
\ch_reg_reg[2][5][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(17),
      Q => \ch_reg_reg[2][5]_12\(17),
      R => '0'
    );
\ch_reg_reg[2][5][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(18),
      Q => \ch_reg_reg[2][5]_12\(18),
      R => '0'
    );
\ch_reg_reg[2][5][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(19),
      Q => \ch_reg_reg[2][5]_12\(19),
      R => '0'
    );
\ch_reg_reg[2][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(1),
      Q => \ch_reg_reg[2][5]_12\(1),
      R => '0'
    );
\ch_reg_reg[2][5][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(20),
      Q => \ch_reg_reg[2][5]_12\(20),
      R => '0'
    );
\ch_reg_reg[2][5][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(21),
      Q => \ch_reg_reg[2][5]_12\(21),
      R => '0'
    );
\ch_reg_reg[2][5][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(22),
      Q => \ch_reg_reg[2][5]_12\(22),
      R => '0'
    );
\ch_reg_reg[2][5][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(23),
      Q => \ch_reg_reg[2][5]_12\(23),
      R => '0'
    );
\ch_reg_reg[2][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(2),
      Q => \ch_reg_reg[2][5]_12\(2),
      R => '0'
    );
\ch_reg_reg[2][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(3),
      Q => \ch_reg_reg[2][5]_12\(3),
      R => '0'
    );
\ch_reg_reg[2][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(4),
      Q => \ch_reg_reg[2][5]_12\(4),
      R => '0'
    );
\ch_reg_reg[2][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(5),
      Q => \ch_reg_reg[2][5]_12\(5),
      R => '0'
    );
\ch_reg_reg[2][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(6),
      Q => \ch_reg_reg[2][5]_12\(6),
      R => '0'
    );
\ch_reg_reg[2][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(7),
      Q => \ch_reg_reg[2][5]_12\(7),
      R => '0'
    );
\ch_reg_reg[2][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(8),
      Q => \ch_reg_reg[2][5]_12\(8),
      R => '0'
    );
\ch_reg_reg[2][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_54_in(9),
      Q => \ch_reg_reg[2][5]_12\(9),
      R => '0'
    );
\ch_reg_reg[2][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => SDATA2,
      Q => \ch_reg_reg[2][6]_13\(0),
      R => '0'
    );
\ch_reg_reg[2][6][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(10),
      Q => \ch_reg_reg[2][6]_13\(10),
      R => '0'
    );
\ch_reg_reg[2][6][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(11),
      Q => \ch_reg_reg[2][6]_13\(11),
      R => '0'
    );
\ch_reg_reg[2][6][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(12),
      Q => \ch_reg_reg[2][6]_13\(12),
      R => '0'
    );
\ch_reg_reg[2][6][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(13),
      Q => \ch_reg_reg[2][6]_13\(13),
      R => '0'
    );
\ch_reg_reg[2][6][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(14),
      Q => \ch_reg_reg[2][6]_13\(14),
      R => '0'
    );
\ch_reg_reg[2][6][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(15),
      Q => \ch_reg_reg[2][6]_13\(15),
      R => '0'
    );
\ch_reg_reg[2][6][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(16),
      Q => \ch_reg_reg[2][6]_13\(16),
      R => '0'
    );
\ch_reg_reg[2][6][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(17),
      Q => \ch_reg_reg[2][6]_13\(17),
      R => '0'
    );
\ch_reg_reg[2][6][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(18),
      Q => \ch_reg_reg[2][6]_13\(18),
      R => '0'
    );
\ch_reg_reg[2][6][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(19),
      Q => \ch_reg_reg[2][6]_13\(19),
      R => '0'
    );
\ch_reg_reg[2][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(1),
      Q => \ch_reg_reg[2][6]_13\(1),
      R => '0'
    );
\ch_reg_reg[2][6][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(20),
      Q => \ch_reg_reg[2][6]_13\(20),
      R => '0'
    );
\ch_reg_reg[2][6][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(21),
      Q => \ch_reg_reg[2][6]_13\(21),
      R => '0'
    );
\ch_reg_reg[2][6][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(22),
      Q => \ch_reg_reg[2][6]_13\(22),
      R => '0'
    );
\ch_reg_reg[2][6][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(23),
      Q => \ch_reg_reg[2][6]_13\(23),
      R => '0'
    );
\ch_reg_reg[2][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(2),
      Q => \ch_reg_reg[2][6]_13\(2),
      R => '0'
    );
\ch_reg_reg[2][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(3),
      Q => \ch_reg_reg[2][6]_13\(3),
      R => '0'
    );
\ch_reg_reg[2][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(4),
      Q => \ch_reg_reg[2][6]_13\(4),
      R => '0'
    );
\ch_reg_reg[2][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(5),
      Q => \ch_reg_reg[2][6]_13\(5),
      R => '0'
    );
\ch_reg_reg[2][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(6),
      Q => \ch_reg_reg[2][6]_13\(6),
      R => '0'
    );
\ch_reg_reg[2][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(7),
      Q => \ch_reg_reg[2][6]_13\(7),
      R => '0'
    );
\ch_reg_reg[2][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(8),
      Q => \ch_reg_reg[2][6]_13\(8),
      R => '0'
    );
\ch_reg_reg[2][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_54_in(9),
      Q => \ch_reg_reg[2][6]_13\(9),
      R => '0'
    );
\ch_reg_reg[2][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => SDATA2,
      Q => \ch_reg_reg[2][7]_14\(0),
      R => '0'
    );
\ch_reg_reg[2][7][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(10),
      Q => \ch_reg_reg[2][7]_14\(10),
      R => '0'
    );
\ch_reg_reg[2][7][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(11),
      Q => \ch_reg_reg[2][7]_14\(11),
      R => '0'
    );
\ch_reg_reg[2][7][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(12),
      Q => \ch_reg_reg[2][7]_14\(12),
      R => '0'
    );
\ch_reg_reg[2][7][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(13),
      Q => \ch_reg_reg[2][7]_14\(13),
      R => '0'
    );
\ch_reg_reg[2][7][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(14),
      Q => \ch_reg_reg[2][7]_14\(14),
      R => '0'
    );
\ch_reg_reg[2][7][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(15),
      Q => \ch_reg_reg[2][7]_14\(15),
      R => '0'
    );
\ch_reg_reg[2][7][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(16),
      Q => \ch_reg_reg[2][7]_14\(16),
      R => '0'
    );
\ch_reg_reg[2][7][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(17),
      Q => \ch_reg_reg[2][7]_14\(17),
      R => '0'
    );
\ch_reg_reg[2][7][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(18),
      Q => \ch_reg_reg[2][7]_14\(18),
      R => '0'
    );
\ch_reg_reg[2][7][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(19),
      Q => \ch_reg_reg[2][7]_14\(19),
      R => '0'
    );
\ch_reg_reg[2][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(1),
      Q => \ch_reg_reg[2][7]_14\(1),
      R => '0'
    );
\ch_reg_reg[2][7][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(20),
      Q => \ch_reg_reg[2][7]_14\(20),
      R => '0'
    );
\ch_reg_reg[2][7][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(21),
      Q => \ch_reg_reg[2][7]_14\(21),
      R => '0'
    );
\ch_reg_reg[2][7][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(22),
      Q => \ch_reg_reg[2][7]_14\(22),
      R => '0'
    );
\ch_reg_reg[2][7][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(23),
      Q => \ch_reg_reg[2][7]_14\(23),
      R => '0'
    );
\ch_reg_reg[2][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(2),
      Q => \ch_reg_reg[2][7]_14\(2),
      R => '0'
    );
\ch_reg_reg[2][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(3),
      Q => \ch_reg_reg[2][7]_14\(3),
      R => '0'
    );
\ch_reg_reg[2][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(4),
      Q => \ch_reg_reg[2][7]_14\(4),
      R => '0'
    );
\ch_reg_reg[2][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(5),
      Q => \ch_reg_reg[2][7]_14\(5),
      R => '0'
    );
\ch_reg_reg[2][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(6),
      Q => \ch_reg_reg[2][7]_14\(6),
      R => '0'
    );
\ch_reg_reg[2][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(7),
      Q => \ch_reg_reg[2][7]_14\(7),
      R => '0'
    );
\ch_reg_reg[2][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(8),
      Q => \ch_reg_reg[2][7]_14\(8),
      R => '0'
    );
\ch_reg_reg[2][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_54_in(9),
      Q => \ch_reg_reg[2][7]_14\(9),
      R => '0'
    );
\ch_reg_reg[3][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => SDATA3,
      Q => \ch_reg_reg[3][0]_23\(0),
      R => '0'
    );
\ch_reg_reg[3][0][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(10),
      Q => \ch_reg_reg[3][0]_23\(10),
      R => '0'
    );
\ch_reg_reg[3][0][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(11),
      Q => \ch_reg_reg[3][0]_23\(11),
      R => '0'
    );
\ch_reg_reg[3][0][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(12),
      Q => \ch_reg_reg[3][0]_23\(12),
      R => '0'
    );
\ch_reg_reg[3][0][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(13),
      Q => \ch_reg_reg[3][0]_23\(13),
      R => '0'
    );
\ch_reg_reg[3][0][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(14),
      Q => \ch_reg_reg[3][0]_23\(14),
      R => '0'
    );
\ch_reg_reg[3][0][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(15),
      Q => \ch_reg_reg[3][0]_23\(15),
      R => '0'
    );
\ch_reg_reg[3][0][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(16),
      Q => \ch_reg_reg[3][0]_23\(16),
      R => '0'
    );
\ch_reg_reg[3][0][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(17),
      Q => \ch_reg_reg[3][0]_23\(17),
      R => '0'
    );
\ch_reg_reg[3][0][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(18),
      Q => \ch_reg_reg[3][0]_23\(18),
      R => '0'
    );
\ch_reg_reg[3][0][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(19),
      Q => \ch_reg_reg[3][0]_23\(19),
      R => '0'
    );
\ch_reg_reg[3][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(1),
      Q => \ch_reg_reg[3][0]_23\(1),
      R => '0'
    );
\ch_reg_reg[3][0][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(20),
      Q => \ch_reg_reg[3][0]_23\(20),
      R => '0'
    );
\ch_reg_reg[3][0][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(21),
      Q => \ch_reg_reg[3][0]_23\(21),
      R => '0'
    );
\ch_reg_reg[3][0][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(22),
      Q => \ch_reg_reg[3][0]_23\(22),
      R => '0'
    );
\ch_reg_reg[3][0][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(23),
      Q => \ch_reg_reg[3][0]_23\(23),
      R => '0'
    );
\ch_reg_reg[3][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(2),
      Q => \ch_reg_reg[3][0]_23\(2),
      R => '0'
    );
\ch_reg_reg[3][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(3),
      Q => \ch_reg_reg[3][0]_23\(3),
      R => '0'
    );
\ch_reg_reg[3][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(4),
      Q => \ch_reg_reg[3][0]_23\(4),
      R => '0'
    );
\ch_reg_reg[3][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(5),
      Q => \ch_reg_reg[3][0]_23\(5),
      R => '0'
    );
\ch_reg_reg[3][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(6),
      Q => \ch_reg_reg[3][0]_23\(6),
      R => '0'
    );
\ch_reg_reg[3][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(7),
      Q => \ch_reg_reg[3][0]_23\(7),
      R => '0'
    );
\ch_reg_reg[3][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(8),
      Q => \ch_reg_reg[3][0]_23\(8),
      R => '0'
    );
\ch_reg_reg[3][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_45_in(9),
      Q => \ch_reg_reg[3][0]_23\(9),
      R => '0'
    );
\ch_reg_reg[3][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => SDATA3,
      Q => \ch_reg_reg[3][1]_16\(0),
      R => '0'
    );
\ch_reg_reg[3][1][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(10),
      Q => \ch_reg_reg[3][1]_16\(10),
      R => '0'
    );
\ch_reg_reg[3][1][10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][10]_i_2_n_0\,
      I1 => \ch_reg[3][1][10]_i_3_n_0\,
      O => p_45_in(10),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(11),
      Q => \ch_reg_reg[3][1]_16\(11),
      R => '0'
    );
\ch_reg_reg[3][1][11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][11]_i_2_n_0\,
      I1 => \ch_reg[3][1][11]_i_3_n_0\,
      O => p_45_in(11),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(12),
      Q => \ch_reg_reg[3][1]_16\(12),
      R => '0'
    );
\ch_reg_reg[3][1][12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][12]_i_2_n_0\,
      I1 => \ch_reg[3][1][12]_i_3_n_0\,
      O => p_45_in(12),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(13),
      Q => \ch_reg_reg[3][1]_16\(13),
      R => '0'
    );
\ch_reg_reg[3][1][13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][13]_i_2_n_0\,
      I1 => \ch_reg[3][1][13]_i_3_n_0\,
      O => p_45_in(13),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(14),
      Q => \ch_reg_reg[3][1]_16\(14),
      R => '0'
    );
\ch_reg_reg[3][1][14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][14]_i_2_n_0\,
      I1 => \ch_reg[3][1][14]_i_3_n_0\,
      O => p_45_in(14),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(15),
      Q => \ch_reg_reg[3][1]_16\(15),
      R => '0'
    );
\ch_reg_reg[3][1][15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][15]_i_2_n_0\,
      I1 => \ch_reg[3][1][15]_i_3_n_0\,
      O => p_45_in(15),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(16),
      Q => \ch_reg_reg[3][1]_16\(16),
      R => '0'
    );
\ch_reg_reg[3][1][16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][16]_i_2_n_0\,
      I1 => \ch_reg[3][1][16]_i_3_n_0\,
      O => p_45_in(16),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(17),
      Q => \ch_reg_reg[3][1]_16\(17),
      R => '0'
    );
\ch_reg_reg[3][1][17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][17]_i_2_n_0\,
      I1 => \ch_reg[3][1][17]_i_3_n_0\,
      O => p_45_in(17),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(18),
      Q => \ch_reg_reg[3][1]_16\(18),
      R => '0'
    );
\ch_reg_reg[3][1][18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][18]_i_2_n_0\,
      I1 => \ch_reg[3][1][18]_i_3_n_0\,
      O => p_45_in(18),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(19),
      Q => \ch_reg_reg[3][1]_16\(19),
      R => '0'
    );
\ch_reg_reg[3][1][19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][19]_i_2_n_0\,
      I1 => \ch_reg[3][1][19]_i_3_n_0\,
      O => p_45_in(19),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(1),
      Q => \ch_reg_reg[3][1]_16\(1),
      R => '0'
    );
\ch_reg_reg[3][1][1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][1]_i_2_n_0\,
      I1 => \ch_reg[3][1][1]_i_3_n_0\,
      O => p_45_in(1),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(20),
      Q => \ch_reg_reg[3][1]_16\(20),
      R => '0'
    );
\ch_reg_reg[3][1][20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][20]_i_2_n_0\,
      I1 => \ch_reg[3][1][20]_i_3_n_0\,
      O => p_45_in(20),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(21),
      Q => \ch_reg_reg[3][1]_16\(21),
      R => '0'
    );
\ch_reg_reg[3][1][21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][21]_i_2_n_0\,
      I1 => \ch_reg[3][1][21]_i_3_n_0\,
      O => p_45_in(21),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(22),
      Q => \ch_reg_reg[3][1]_16\(22),
      R => '0'
    );
\ch_reg_reg[3][1][22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][22]_i_2_n_0\,
      I1 => \ch_reg[3][1][22]_i_3_n_0\,
      O => p_45_in(22),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(23),
      Q => \ch_reg_reg[3][1]_16\(23),
      R => '0'
    );
\ch_reg_reg[3][1][23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][23]_i_2_n_0\,
      I1 => \ch_reg[3][1][23]_i_3_n_0\,
      O => p_45_in(23),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(2),
      Q => \ch_reg_reg[3][1]_16\(2),
      R => '0'
    );
\ch_reg_reg[3][1][2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][2]_i_2_n_0\,
      I1 => \ch_reg[3][1][2]_i_3_n_0\,
      O => p_45_in(2),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(3),
      Q => \ch_reg_reg[3][1]_16\(3),
      R => '0'
    );
\ch_reg_reg[3][1][3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][3]_i_2_n_0\,
      I1 => \ch_reg[3][1][3]_i_3_n_0\,
      O => p_45_in(3),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(4),
      Q => \ch_reg_reg[3][1]_16\(4),
      R => '0'
    );
\ch_reg_reg[3][1][4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][4]_i_2_n_0\,
      I1 => \ch_reg[3][1][4]_i_3_n_0\,
      O => p_45_in(4),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(5),
      Q => \ch_reg_reg[3][1]_16\(5),
      R => '0'
    );
\ch_reg_reg[3][1][5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][5]_i_2_n_0\,
      I1 => \ch_reg[3][1][5]_i_3_n_0\,
      O => p_45_in(5),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(6),
      Q => \ch_reg_reg[3][1]_16\(6),
      R => '0'
    );
\ch_reg_reg[3][1][6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][6]_i_2_n_0\,
      I1 => \ch_reg[3][1][6]_i_3_n_0\,
      O => p_45_in(6),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(7),
      Q => \ch_reg_reg[3][1]_16\(7),
      R => '0'
    );
\ch_reg_reg[3][1][7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][7]_i_2_n_0\,
      I1 => \ch_reg[3][1][7]_i_3_n_0\,
      O => p_45_in(7),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(8),
      Q => \ch_reg_reg[3][1]_16\(8),
      R => '0'
    );
\ch_reg_reg[3][1][8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][8]_i_2_n_0\,
      I1 => \ch_reg[3][1][8]_i_3_n_0\,
      O => p_45_in(8),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_45_in(9),
      Q => \ch_reg_reg[3][1]_16\(9),
      R => '0'
    );
\ch_reg_reg[3][1][9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[3][1][9]_i_2_n_0\,
      I1 => \ch_reg[3][1][9]_i_3_n_0\,
      O => p_45_in(9),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[3][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => SDATA3,
      Q => \ch_reg_reg[3][2]_17\(0),
      R => '0'
    );
\ch_reg_reg[3][2][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(10),
      Q => \ch_reg_reg[3][2]_17\(10),
      R => '0'
    );
\ch_reg_reg[3][2][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(11),
      Q => \ch_reg_reg[3][2]_17\(11),
      R => '0'
    );
\ch_reg_reg[3][2][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(12),
      Q => \ch_reg_reg[3][2]_17\(12),
      R => '0'
    );
\ch_reg_reg[3][2][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(13),
      Q => \ch_reg_reg[3][2]_17\(13),
      R => '0'
    );
\ch_reg_reg[3][2][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(14),
      Q => \ch_reg_reg[3][2]_17\(14),
      R => '0'
    );
\ch_reg_reg[3][2][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(15),
      Q => \ch_reg_reg[3][2]_17\(15),
      R => '0'
    );
\ch_reg_reg[3][2][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(16),
      Q => \ch_reg_reg[3][2]_17\(16),
      R => '0'
    );
\ch_reg_reg[3][2][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(17),
      Q => \ch_reg_reg[3][2]_17\(17),
      R => '0'
    );
\ch_reg_reg[3][2][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(18),
      Q => \ch_reg_reg[3][2]_17\(18),
      R => '0'
    );
\ch_reg_reg[3][2][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(19),
      Q => \ch_reg_reg[3][2]_17\(19),
      R => '0'
    );
\ch_reg_reg[3][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(1),
      Q => \ch_reg_reg[3][2]_17\(1),
      R => '0'
    );
\ch_reg_reg[3][2][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(20),
      Q => \ch_reg_reg[3][2]_17\(20),
      R => '0'
    );
\ch_reg_reg[3][2][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(21),
      Q => \ch_reg_reg[3][2]_17\(21),
      R => '0'
    );
\ch_reg_reg[3][2][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(22),
      Q => \ch_reg_reg[3][2]_17\(22),
      R => '0'
    );
\ch_reg_reg[3][2][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(23),
      Q => \ch_reg_reg[3][2]_17\(23),
      R => '0'
    );
\ch_reg_reg[3][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(2),
      Q => \ch_reg_reg[3][2]_17\(2),
      R => '0'
    );
\ch_reg_reg[3][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(3),
      Q => \ch_reg_reg[3][2]_17\(3),
      R => '0'
    );
\ch_reg_reg[3][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(4),
      Q => \ch_reg_reg[3][2]_17\(4),
      R => '0'
    );
\ch_reg_reg[3][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(5),
      Q => \ch_reg_reg[3][2]_17\(5),
      R => '0'
    );
\ch_reg_reg[3][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(6),
      Q => \ch_reg_reg[3][2]_17\(6),
      R => '0'
    );
\ch_reg_reg[3][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(7),
      Q => \ch_reg_reg[3][2]_17\(7),
      R => '0'
    );
\ch_reg_reg[3][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(8),
      Q => \ch_reg_reg[3][2]_17\(8),
      R => '0'
    );
\ch_reg_reg[3][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_45_in(9),
      Q => \ch_reg_reg[3][2]_17\(9),
      R => '0'
    );
\ch_reg_reg[3][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => SDATA3,
      Q => \ch_reg_reg[3][3]_18\(0),
      R => '0'
    );
\ch_reg_reg[3][3][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(10),
      Q => \ch_reg_reg[3][3]_18\(10),
      R => '0'
    );
\ch_reg_reg[3][3][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(11),
      Q => \ch_reg_reg[3][3]_18\(11),
      R => '0'
    );
\ch_reg_reg[3][3][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(12),
      Q => \ch_reg_reg[3][3]_18\(12),
      R => '0'
    );
\ch_reg_reg[3][3][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(13),
      Q => \ch_reg_reg[3][3]_18\(13),
      R => '0'
    );
\ch_reg_reg[3][3][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(14),
      Q => \ch_reg_reg[3][3]_18\(14),
      R => '0'
    );
\ch_reg_reg[3][3][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(15),
      Q => \ch_reg_reg[3][3]_18\(15),
      R => '0'
    );
\ch_reg_reg[3][3][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(16),
      Q => \ch_reg_reg[3][3]_18\(16),
      R => '0'
    );
\ch_reg_reg[3][3][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(17),
      Q => \ch_reg_reg[3][3]_18\(17),
      R => '0'
    );
\ch_reg_reg[3][3][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(18),
      Q => \ch_reg_reg[3][3]_18\(18),
      R => '0'
    );
\ch_reg_reg[3][3][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(19),
      Q => \ch_reg_reg[3][3]_18\(19),
      R => '0'
    );
\ch_reg_reg[3][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(1),
      Q => \ch_reg_reg[3][3]_18\(1),
      R => '0'
    );
\ch_reg_reg[3][3][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(20),
      Q => \ch_reg_reg[3][3]_18\(20),
      R => '0'
    );
\ch_reg_reg[3][3][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(21),
      Q => \ch_reg_reg[3][3]_18\(21),
      R => '0'
    );
\ch_reg_reg[3][3][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(22),
      Q => \ch_reg_reg[3][3]_18\(22),
      R => '0'
    );
\ch_reg_reg[3][3][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(23),
      Q => \ch_reg_reg[3][3]_18\(23),
      R => '0'
    );
\ch_reg_reg[3][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(2),
      Q => \ch_reg_reg[3][3]_18\(2),
      R => '0'
    );
\ch_reg_reg[3][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(3),
      Q => \ch_reg_reg[3][3]_18\(3),
      R => '0'
    );
\ch_reg_reg[3][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(4),
      Q => \ch_reg_reg[3][3]_18\(4),
      R => '0'
    );
\ch_reg_reg[3][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(5),
      Q => \ch_reg_reg[3][3]_18\(5),
      R => '0'
    );
\ch_reg_reg[3][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(6),
      Q => \ch_reg_reg[3][3]_18\(6),
      R => '0'
    );
\ch_reg_reg[3][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(7),
      Q => \ch_reg_reg[3][3]_18\(7),
      R => '0'
    );
\ch_reg_reg[3][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(8),
      Q => \ch_reg_reg[3][3]_18\(8),
      R => '0'
    );
\ch_reg_reg[3][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_45_in(9),
      Q => \ch_reg_reg[3][3]_18\(9),
      R => '0'
    );
\ch_reg_reg[3][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => SDATA3,
      Q => \ch_reg_reg[3][4]_19\(0),
      R => '0'
    );
\ch_reg_reg[3][4][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(10),
      Q => \ch_reg_reg[3][4]_19\(10),
      R => '0'
    );
\ch_reg_reg[3][4][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(11),
      Q => \ch_reg_reg[3][4]_19\(11),
      R => '0'
    );
\ch_reg_reg[3][4][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(12),
      Q => \ch_reg_reg[3][4]_19\(12),
      R => '0'
    );
\ch_reg_reg[3][4][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(13),
      Q => \ch_reg_reg[3][4]_19\(13),
      R => '0'
    );
\ch_reg_reg[3][4][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(14),
      Q => \ch_reg_reg[3][4]_19\(14),
      R => '0'
    );
\ch_reg_reg[3][4][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(15),
      Q => \ch_reg_reg[3][4]_19\(15),
      R => '0'
    );
\ch_reg_reg[3][4][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(16),
      Q => \ch_reg_reg[3][4]_19\(16),
      R => '0'
    );
\ch_reg_reg[3][4][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(17),
      Q => \ch_reg_reg[3][4]_19\(17),
      R => '0'
    );
\ch_reg_reg[3][4][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(18),
      Q => \ch_reg_reg[3][4]_19\(18),
      R => '0'
    );
\ch_reg_reg[3][4][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(19),
      Q => \ch_reg_reg[3][4]_19\(19),
      R => '0'
    );
\ch_reg_reg[3][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(1),
      Q => \ch_reg_reg[3][4]_19\(1),
      R => '0'
    );
\ch_reg_reg[3][4][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(20),
      Q => \ch_reg_reg[3][4]_19\(20),
      R => '0'
    );
\ch_reg_reg[3][4][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(21),
      Q => \ch_reg_reg[3][4]_19\(21),
      R => '0'
    );
\ch_reg_reg[3][4][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(22),
      Q => \ch_reg_reg[3][4]_19\(22),
      R => '0'
    );
\ch_reg_reg[3][4][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(23),
      Q => \ch_reg_reg[3][4]_19\(23),
      R => '0'
    );
\ch_reg_reg[3][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(2),
      Q => \ch_reg_reg[3][4]_19\(2),
      R => '0'
    );
\ch_reg_reg[3][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(3),
      Q => \ch_reg_reg[3][4]_19\(3),
      R => '0'
    );
\ch_reg_reg[3][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(4),
      Q => \ch_reg_reg[3][4]_19\(4),
      R => '0'
    );
\ch_reg_reg[3][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(5),
      Q => \ch_reg_reg[3][4]_19\(5),
      R => '0'
    );
\ch_reg_reg[3][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(6),
      Q => \ch_reg_reg[3][4]_19\(6),
      R => '0'
    );
\ch_reg_reg[3][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(7),
      Q => \ch_reg_reg[3][4]_19\(7),
      R => '0'
    );
\ch_reg_reg[3][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(8),
      Q => \ch_reg_reg[3][4]_19\(8),
      R => '0'
    );
\ch_reg_reg[3][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_45_in(9),
      Q => \ch_reg_reg[3][4]_19\(9),
      R => '0'
    );
\ch_reg_reg[3][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => SDATA3,
      Q => \ch_reg_reg[3][5]_20\(0),
      R => '0'
    );
\ch_reg_reg[3][5][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(10),
      Q => \ch_reg_reg[3][5]_20\(10),
      R => '0'
    );
\ch_reg_reg[3][5][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(11),
      Q => \ch_reg_reg[3][5]_20\(11),
      R => '0'
    );
\ch_reg_reg[3][5][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(12),
      Q => \ch_reg_reg[3][5]_20\(12),
      R => '0'
    );
\ch_reg_reg[3][5][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(13),
      Q => \ch_reg_reg[3][5]_20\(13),
      R => '0'
    );
\ch_reg_reg[3][5][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(14),
      Q => \ch_reg_reg[3][5]_20\(14),
      R => '0'
    );
\ch_reg_reg[3][5][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(15),
      Q => \ch_reg_reg[3][5]_20\(15),
      R => '0'
    );
\ch_reg_reg[3][5][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(16),
      Q => \ch_reg_reg[3][5]_20\(16),
      R => '0'
    );
\ch_reg_reg[3][5][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(17),
      Q => \ch_reg_reg[3][5]_20\(17),
      R => '0'
    );
\ch_reg_reg[3][5][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(18),
      Q => \ch_reg_reg[3][5]_20\(18),
      R => '0'
    );
\ch_reg_reg[3][5][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(19),
      Q => \ch_reg_reg[3][5]_20\(19),
      R => '0'
    );
\ch_reg_reg[3][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(1),
      Q => \ch_reg_reg[3][5]_20\(1),
      R => '0'
    );
\ch_reg_reg[3][5][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(20),
      Q => \ch_reg_reg[3][5]_20\(20),
      R => '0'
    );
\ch_reg_reg[3][5][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(21),
      Q => \ch_reg_reg[3][5]_20\(21),
      R => '0'
    );
\ch_reg_reg[3][5][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(22),
      Q => \ch_reg_reg[3][5]_20\(22),
      R => '0'
    );
\ch_reg_reg[3][5][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(23),
      Q => \ch_reg_reg[3][5]_20\(23),
      R => '0'
    );
\ch_reg_reg[3][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(2),
      Q => \ch_reg_reg[3][5]_20\(2),
      R => '0'
    );
\ch_reg_reg[3][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(3),
      Q => \ch_reg_reg[3][5]_20\(3),
      R => '0'
    );
\ch_reg_reg[3][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(4),
      Q => \ch_reg_reg[3][5]_20\(4),
      R => '0'
    );
\ch_reg_reg[3][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(5),
      Q => \ch_reg_reg[3][5]_20\(5),
      R => '0'
    );
\ch_reg_reg[3][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(6),
      Q => \ch_reg_reg[3][5]_20\(6),
      R => '0'
    );
\ch_reg_reg[3][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(7),
      Q => \ch_reg_reg[3][5]_20\(7),
      R => '0'
    );
\ch_reg_reg[3][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(8),
      Q => \ch_reg_reg[3][5]_20\(8),
      R => '0'
    );
\ch_reg_reg[3][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_45_in(9),
      Q => \ch_reg_reg[3][5]_20\(9),
      R => '0'
    );
\ch_reg_reg[3][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => SDATA3,
      Q => \ch_reg_reg[3][6]_21\(0),
      R => '0'
    );
\ch_reg_reg[3][6][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(10),
      Q => \ch_reg_reg[3][6]_21\(10),
      R => '0'
    );
\ch_reg_reg[3][6][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(11),
      Q => \ch_reg_reg[3][6]_21\(11),
      R => '0'
    );
\ch_reg_reg[3][6][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(12),
      Q => \ch_reg_reg[3][6]_21\(12),
      R => '0'
    );
\ch_reg_reg[3][6][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(13),
      Q => \ch_reg_reg[3][6]_21\(13),
      R => '0'
    );
\ch_reg_reg[3][6][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(14),
      Q => \ch_reg_reg[3][6]_21\(14),
      R => '0'
    );
\ch_reg_reg[3][6][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(15),
      Q => \ch_reg_reg[3][6]_21\(15),
      R => '0'
    );
\ch_reg_reg[3][6][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(16),
      Q => \ch_reg_reg[3][6]_21\(16),
      R => '0'
    );
\ch_reg_reg[3][6][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(17),
      Q => \ch_reg_reg[3][6]_21\(17),
      R => '0'
    );
\ch_reg_reg[3][6][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(18),
      Q => \ch_reg_reg[3][6]_21\(18),
      R => '0'
    );
\ch_reg_reg[3][6][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(19),
      Q => \ch_reg_reg[3][6]_21\(19),
      R => '0'
    );
\ch_reg_reg[3][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(1),
      Q => \ch_reg_reg[3][6]_21\(1),
      R => '0'
    );
\ch_reg_reg[3][6][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(20),
      Q => \ch_reg_reg[3][6]_21\(20),
      R => '0'
    );
\ch_reg_reg[3][6][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(21),
      Q => \ch_reg_reg[3][6]_21\(21),
      R => '0'
    );
\ch_reg_reg[3][6][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(22),
      Q => \ch_reg_reg[3][6]_21\(22),
      R => '0'
    );
\ch_reg_reg[3][6][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(23),
      Q => \ch_reg_reg[3][6]_21\(23),
      R => '0'
    );
\ch_reg_reg[3][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(2),
      Q => \ch_reg_reg[3][6]_21\(2),
      R => '0'
    );
\ch_reg_reg[3][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(3),
      Q => \ch_reg_reg[3][6]_21\(3),
      R => '0'
    );
\ch_reg_reg[3][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(4),
      Q => \ch_reg_reg[3][6]_21\(4),
      R => '0'
    );
\ch_reg_reg[3][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(5),
      Q => \ch_reg_reg[3][6]_21\(5),
      R => '0'
    );
\ch_reg_reg[3][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(6),
      Q => \ch_reg_reg[3][6]_21\(6),
      R => '0'
    );
\ch_reg_reg[3][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(7),
      Q => \ch_reg_reg[3][6]_21\(7),
      R => '0'
    );
\ch_reg_reg[3][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(8),
      Q => \ch_reg_reg[3][6]_21\(8),
      R => '0'
    );
\ch_reg_reg[3][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_45_in(9),
      Q => \ch_reg_reg[3][6]_21\(9),
      R => '0'
    );
\ch_reg_reg[3][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => SDATA3,
      Q => \ch_reg_reg[3][7]_22\(0),
      R => '0'
    );
\ch_reg_reg[3][7][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(10),
      Q => \ch_reg_reg[3][7]_22\(10),
      R => '0'
    );
\ch_reg_reg[3][7][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(11),
      Q => \ch_reg_reg[3][7]_22\(11),
      R => '0'
    );
\ch_reg_reg[3][7][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(12),
      Q => \ch_reg_reg[3][7]_22\(12),
      R => '0'
    );
\ch_reg_reg[3][7][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(13),
      Q => \ch_reg_reg[3][7]_22\(13),
      R => '0'
    );
\ch_reg_reg[3][7][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(14),
      Q => \ch_reg_reg[3][7]_22\(14),
      R => '0'
    );
\ch_reg_reg[3][7][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(15),
      Q => \ch_reg_reg[3][7]_22\(15),
      R => '0'
    );
\ch_reg_reg[3][7][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(16),
      Q => \ch_reg_reg[3][7]_22\(16),
      R => '0'
    );
\ch_reg_reg[3][7][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(17),
      Q => \ch_reg_reg[3][7]_22\(17),
      R => '0'
    );
\ch_reg_reg[3][7][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(18),
      Q => \ch_reg_reg[3][7]_22\(18),
      R => '0'
    );
\ch_reg_reg[3][7][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(19),
      Q => \ch_reg_reg[3][7]_22\(19),
      R => '0'
    );
\ch_reg_reg[3][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(1),
      Q => \ch_reg_reg[3][7]_22\(1),
      R => '0'
    );
\ch_reg_reg[3][7][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(20),
      Q => \ch_reg_reg[3][7]_22\(20),
      R => '0'
    );
\ch_reg_reg[3][7][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(21),
      Q => \ch_reg_reg[3][7]_22\(21),
      R => '0'
    );
\ch_reg_reg[3][7][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(22),
      Q => \ch_reg_reg[3][7]_22\(22),
      R => '0'
    );
\ch_reg_reg[3][7][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(23),
      Q => \ch_reg_reg[3][7]_22\(23),
      R => '0'
    );
\ch_reg_reg[3][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(2),
      Q => \ch_reg_reg[3][7]_22\(2),
      R => '0'
    );
\ch_reg_reg[3][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(3),
      Q => \ch_reg_reg[3][7]_22\(3),
      R => '0'
    );
\ch_reg_reg[3][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(4),
      Q => \ch_reg_reg[3][7]_22\(4),
      R => '0'
    );
\ch_reg_reg[3][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(5),
      Q => \ch_reg_reg[3][7]_22\(5),
      R => '0'
    );
\ch_reg_reg[3][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(6),
      Q => \ch_reg_reg[3][7]_22\(6),
      R => '0'
    );
\ch_reg_reg[3][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(7),
      Q => \ch_reg_reg[3][7]_22\(7),
      R => '0'
    );
\ch_reg_reg[3][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(8),
      Q => \ch_reg_reg[3][7]_22\(8),
      R => '0'
    );
\ch_reg_reg[3][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_45_in(9),
      Q => \ch_reg_reg[3][7]_22\(9),
      R => '0'
    );
\ch_reg_reg[4][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => SDATA4,
      Q => \ch_reg_reg[4][0]_31\(0),
      R => '0'
    );
\ch_reg_reg[4][0][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(10),
      Q => \ch_reg_reg[4][0]_31\(10),
      R => '0'
    );
\ch_reg_reg[4][0][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(11),
      Q => \ch_reg_reg[4][0]_31\(11),
      R => '0'
    );
\ch_reg_reg[4][0][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(12),
      Q => \ch_reg_reg[4][0]_31\(12),
      R => '0'
    );
\ch_reg_reg[4][0][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(13),
      Q => \ch_reg_reg[4][0]_31\(13),
      R => '0'
    );
\ch_reg_reg[4][0][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(14),
      Q => \ch_reg_reg[4][0]_31\(14),
      R => '0'
    );
\ch_reg_reg[4][0][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(15),
      Q => \ch_reg_reg[4][0]_31\(15),
      R => '0'
    );
\ch_reg_reg[4][0][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(16),
      Q => \ch_reg_reg[4][0]_31\(16),
      R => '0'
    );
\ch_reg_reg[4][0][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(17),
      Q => \ch_reg_reg[4][0]_31\(17),
      R => '0'
    );
\ch_reg_reg[4][0][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(18),
      Q => \ch_reg_reg[4][0]_31\(18),
      R => '0'
    );
\ch_reg_reg[4][0][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(19),
      Q => \ch_reg_reg[4][0]_31\(19),
      R => '0'
    );
\ch_reg_reg[4][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(1),
      Q => \ch_reg_reg[4][0]_31\(1),
      R => '0'
    );
\ch_reg_reg[4][0][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(20),
      Q => \ch_reg_reg[4][0]_31\(20),
      R => '0'
    );
\ch_reg_reg[4][0][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(21),
      Q => \ch_reg_reg[4][0]_31\(21),
      R => '0'
    );
\ch_reg_reg[4][0][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(22),
      Q => \ch_reg_reg[4][0]_31\(22),
      R => '0'
    );
\ch_reg_reg[4][0][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(23),
      Q => \ch_reg_reg[4][0]_31\(23),
      R => '0'
    );
\ch_reg_reg[4][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(2),
      Q => \ch_reg_reg[4][0]_31\(2),
      R => '0'
    );
\ch_reg_reg[4][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(3),
      Q => \ch_reg_reg[4][0]_31\(3),
      R => '0'
    );
\ch_reg_reg[4][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(4),
      Q => \ch_reg_reg[4][0]_31\(4),
      R => '0'
    );
\ch_reg_reg[4][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(5),
      Q => \ch_reg_reg[4][0]_31\(5),
      R => '0'
    );
\ch_reg_reg[4][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(6),
      Q => \ch_reg_reg[4][0]_31\(6),
      R => '0'
    );
\ch_reg_reg[4][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(7),
      Q => \ch_reg_reg[4][0]_31\(7),
      R => '0'
    );
\ch_reg_reg[4][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(8),
      Q => \ch_reg_reg[4][0]_31\(8),
      R => '0'
    );
\ch_reg_reg[4][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_36_in(9),
      Q => \ch_reg_reg[4][0]_31\(9),
      R => '0'
    );
\ch_reg_reg[4][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => SDATA4,
      Q => \ch_reg_reg[4][1]_24\(0),
      R => '0'
    );
\ch_reg_reg[4][1][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(10),
      Q => \ch_reg_reg[4][1]_24\(10),
      R => '0'
    );
\ch_reg_reg[4][1][10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][10]_i_2_n_0\,
      I1 => \ch_reg[4][1][10]_i_3_n_0\,
      O => p_36_in(10),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(11),
      Q => \ch_reg_reg[4][1]_24\(11),
      R => '0'
    );
\ch_reg_reg[4][1][11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][11]_i_2_n_0\,
      I1 => \ch_reg[4][1][11]_i_3_n_0\,
      O => p_36_in(11),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(12),
      Q => \ch_reg_reg[4][1]_24\(12),
      R => '0'
    );
\ch_reg_reg[4][1][12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][12]_i_2_n_0\,
      I1 => \ch_reg[4][1][12]_i_3_n_0\,
      O => p_36_in(12),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(13),
      Q => \ch_reg_reg[4][1]_24\(13),
      R => '0'
    );
\ch_reg_reg[4][1][13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][13]_i_2_n_0\,
      I1 => \ch_reg[4][1][13]_i_3_n_0\,
      O => p_36_in(13),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(14),
      Q => \ch_reg_reg[4][1]_24\(14),
      R => '0'
    );
\ch_reg_reg[4][1][14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][14]_i_2_n_0\,
      I1 => \ch_reg[4][1][14]_i_3_n_0\,
      O => p_36_in(14),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(15),
      Q => \ch_reg_reg[4][1]_24\(15),
      R => '0'
    );
\ch_reg_reg[4][1][15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][15]_i_2_n_0\,
      I1 => \ch_reg[4][1][15]_i_3_n_0\,
      O => p_36_in(15),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(16),
      Q => \ch_reg_reg[4][1]_24\(16),
      R => '0'
    );
\ch_reg_reg[4][1][16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][16]_i_2_n_0\,
      I1 => \ch_reg[4][1][16]_i_3_n_0\,
      O => p_36_in(16),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(17),
      Q => \ch_reg_reg[4][1]_24\(17),
      R => '0'
    );
\ch_reg_reg[4][1][17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][17]_i_2_n_0\,
      I1 => \ch_reg[4][1][17]_i_3_n_0\,
      O => p_36_in(17),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(18),
      Q => \ch_reg_reg[4][1]_24\(18),
      R => '0'
    );
\ch_reg_reg[4][1][18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][18]_i_2_n_0\,
      I1 => \ch_reg[4][1][18]_i_3_n_0\,
      O => p_36_in(18),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(19),
      Q => \ch_reg_reg[4][1]_24\(19),
      R => '0'
    );
\ch_reg_reg[4][1][19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][19]_i_2_n_0\,
      I1 => \ch_reg[4][1][19]_i_3_n_0\,
      O => p_36_in(19),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(1),
      Q => \ch_reg_reg[4][1]_24\(1),
      R => '0'
    );
\ch_reg_reg[4][1][1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][1]_i_2_n_0\,
      I1 => \ch_reg[4][1][1]_i_3_n_0\,
      O => p_36_in(1),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(20),
      Q => \ch_reg_reg[4][1]_24\(20),
      R => '0'
    );
\ch_reg_reg[4][1][20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][20]_i_2_n_0\,
      I1 => \ch_reg[4][1][20]_i_3_n_0\,
      O => p_36_in(20),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(21),
      Q => \ch_reg_reg[4][1]_24\(21),
      R => '0'
    );
\ch_reg_reg[4][1][21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][21]_i_2_n_0\,
      I1 => \ch_reg[4][1][21]_i_3_n_0\,
      O => p_36_in(21),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(22),
      Q => \ch_reg_reg[4][1]_24\(22),
      R => '0'
    );
\ch_reg_reg[4][1][22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][22]_i_2_n_0\,
      I1 => \ch_reg[4][1][22]_i_3_n_0\,
      O => p_36_in(22),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(23),
      Q => \ch_reg_reg[4][1]_24\(23),
      R => '0'
    );
\ch_reg_reg[4][1][23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][23]_i_2_n_0\,
      I1 => \ch_reg[4][1][23]_i_3_n_0\,
      O => p_36_in(23),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(2),
      Q => \ch_reg_reg[4][1]_24\(2),
      R => '0'
    );
\ch_reg_reg[4][1][2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][2]_i_2_n_0\,
      I1 => \ch_reg[4][1][2]_i_3_n_0\,
      O => p_36_in(2),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(3),
      Q => \ch_reg_reg[4][1]_24\(3),
      R => '0'
    );
\ch_reg_reg[4][1][3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][3]_i_2_n_0\,
      I1 => \ch_reg[4][1][3]_i_3_n_0\,
      O => p_36_in(3),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(4),
      Q => \ch_reg_reg[4][1]_24\(4),
      R => '0'
    );
\ch_reg_reg[4][1][4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][4]_i_2_n_0\,
      I1 => \ch_reg[4][1][4]_i_3_n_0\,
      O => p_36_in(4),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(5),
      Q => \ch_reg_reg[4][1]_24\(5),
      R => '0'
    );
\ch_reg_reg[4][1][5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][5]_i_2_n_0\,
      I1 => \ch_reg[4][1][5]_i_3_n_0\,
      O => p_36_in(5),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(6),
      Q => \ch_reg_reg[4][1]_24\(6),
      R => '0'
    );
\ch_reg_reg[4][1][6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][6]_i_2_n_0\,
      I1 => \ch_reg[4][1][6]_i_3_n_0\,
      O => p_36_in(6),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(7),
      Q => \ch_reg_reg[4][1]_24\(7),
      R => '0'
    );
\ch_reg_reg[4][1][7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][7]_i_2_n_0\,
      I1 => \ch_reg[4][1][7]_i_3_n_0\,
      O => p_36_in(7),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(8),
      Q => \ch_reg_reg[4][1]_24\(8),
      R => '0'
    );
\ch_reg_reg[4][1][8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][8]_i_2_n_0\,
      I1 => \ch_reg[4][1][8]_i_3_n_0\,
      O => p_36_in(8),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_36_in(9),
      Q => \ch_reg_reg[4][1]_24\(9),
      R => '0'
    );
\ch_reg_reg[4][1][9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[4][1][9]_i_2_n_0\,
      I1 => \ch_reg[4][1][9]_i_3_n_0\,
      O => p_36_in(9),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[4][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => SDATA4,
      Q => \ch_reg_reg[4][2]_25\(0),
      R => '0'
    );
\ch_reg_reg[4][2][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(10),
      Q => \ch_reg_reg[4][2]_25\(10),
      R => '0'
    );
\ch_reg_reg[4][2][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(11),
      Q => \ch_reg_reg[4][2]_25\(11),
      R => '0'
    );
\ch_reg_reg[4][2][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(12),
      Q => \ch_reg_reg[4][2]_25\(12),
      R => '0'
    );
\ch_reg_reg[4][2][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(13),
      Q => \ch_reg_reg[4][2]_25\(13),
      R => '0'
    );
\ch_reg_reg[4][2][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(14),
      Q => \ch_reg_reg[4][2]_25\(14),
      R => '0'
    );
\ch_reg_reg[4][2][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(15),
      Q => \ch_reg_reg[4][2]_25\(15),
      R => '0'
    );
\ch_reg_reg[4][2][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(16),
      Q => \ch_reg_reg[4][2]_25\(16),
      R => '0'
    );
\ch_reg_reg[4][2][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(17),
      Q => \ch_reg_reg[4][2]_25\(17),
      R => '0'
    );
\ch_reg_reg[4][2][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(18),
      Q => \ch_reg_reg[4][2]_25\(18),
      R => '0'
    );
\ch_reg_reg[4][2][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(19),
      Q => \ch_reg_reg[4][2]_25\(19),
      R => '0'
    );
\ch_reg_reg[4][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(1),
      Q => \ch_reg_reg[4][2]_25\(1),
      R => '0'
    );
\ch_reg_reg[4][2][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(20),
      Q => \ch_reg_reg[4][2]_25\(20),
      R => '0'
    );
\ch_reg_reg[4][2][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(21),
      Q => \ch_reg_reg[4][2]_25\(21),
      R => '0'
    );
\ch_reg_reg[4][2][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(22),
      Q => \ch_reg_reg[4][2]_25\(22),
      R => '0'
    );
\ch_reg_reg[4][2][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(23),
      Q => \ch_reg_reg[4][2]_25\(23),
      R => '0'
    );
\ch_reg_reg[4][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(2),
      Q => \ch_reg_reg[4][2]_25\(2),
      R => '0'
    );
\ch_reg_reg[4][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(3),
      Q => \ch_reg_reg[4][2]_25\(3),
      R => '0'
    );
\ch_reg_reg[4][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(4),
      Q => \ch_reg_reg[4][2]_25\(4),
      R => '0'
    );
\ch_reg_reg[4][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(5),
      Q => \ch_reg_reg[4][2]_25\(5),
      R => '0'
    );
\ch_reg_reg[4][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(6),
      Q => \ch_reg_reg[4][2]_25\(6),
      R => '0'
    );
\ch_reg_reg[4][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(7),
      Q => \ch_reg_reg[4][2]_25\(7),
      R => '0'
    );
\ch_reg_reg[4][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(8),
      Q => \ch_reg_reg[4][2]_25\(8),
      R => '0'
    );
\ch_reg_reg[4][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_36_in(9),
      Q => \ch_reg_reg[4][2]_25\(9),
      R => '0'
    );
\ch_reg_reg[4][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => SDATA4,
      Q => \ch_reg_reg[4][3]_26\(0),
      R => '0'
    );
\ch_reg_reg[4][3][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(10),
      Q => \ch_reg_reg[4][3]_26\(10),
      R => '0'
    );
\ch_reg_reg[4][3][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(11),
      Q => \ch_reg_reg[4][3]_26\(11),
      R => '0'
    );
\ch_reg_reg[4][3][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(12),
      Q => \ch_reg_reg[4][3]_26\(12),
      R => '0'
    );
\ch_reg_reg[4][3][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(13),
      Q => \ch_reg_reg[4][3]_26\(13),
      R => '0'
    );
\ch_reg_reg[4][3][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(14),
      Q => \ch_reg_reg[4][3]_26\(14),
      R => '0'
    );
\ch_reg_reg[4][3][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(15),
      Q => \ch_reg_reg[4][3]_26\(15),
      R => '0'
    );
\ch_reg_reg[4][3][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(16),
      Q => \ch_reg_reg[4][3]_26\(16),
      R => '0'
    );
\ch_reg_reg[4][3][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(17),
      Q => \ch_reg_reg[4][3]_26\(17),
      R => '0'
    );
\ch_reg_reg[4][3][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(18),
      Q => \ch_reg_reg[4][3]_26\(18),
      R => '0'
    );
\ch_reg_reg[4][3][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(19),
      Q => \ch_reg_reg[4][3]_26\(19),
      R => '0'
    );
\ch_reg_reg[4][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(1),
      Q => \ch_reg_reg[4][3]_26\(1),
      R => '0'
    );
\ch_reg_reg[4][3][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(20),
      Q => \ch_reg_reg[4][3]_26\(20),
      R => '0'
    );
\ch_reg_reg[4][3][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(21),
      Q => \ch_reg_reg[4][3]_26\(21),
      R => '0'
    );
\ch_reg_reg[4][3][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(22),
      Q => \ch_reg_reg[4][3]_26\(22),
      R => '0'
    );
\ch_reg_reg[4][3][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(23),
      Q => \ch_reg_reg[4][3]_26\(23),
      R => '0'
    );
\ch_reg_reg[4][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(2),
      Q => \ch_reg_reg[4][3]_26\(2),
      R => '0'
    );
\ch_reg_reg[4][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(3),
      Q => \ch_reg_reg[4][3]_26\(3),
      R => '0'
    );
\ch_reg_reg[4][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(4),
      Q => \ch_reg_reg[4][3]_26\(4),
      R => '0'
    );
\ch_reg_reg[4][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(5),
      Q => \ch_reg_reg[4][3]_26\(5),
      R => '0'
    );
\ch_reg_reg[4][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(6),
      Q => \ch_reg_reg[4][3]_26\(6),
      R => '0'
    );
\ch_reg_reg[4][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(7),
      Q => \ch_reg_reg[4][3]_26\(7),
      R => '0'
    );
\ch_reg_reg[4][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(8),
      Q => \ch_reg_reg[4][3]_26\(8),
      R => '0'
    );
\ch_reg_reg[4][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_36_in(9),
      Q => \ch_reg_reg[4][3]_26\(9),
      R => '0'
    );
\ch_reg_reg[4][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => SDATA4,
      Q => \ch_reg_reg[4][4]_27\(0),
      R => '0'
    );
\ch_reg_reg[4][4][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(10),
      Q => \ch_reg_reg[4][4]_27\(10),
      R => '0'
    );
\ch_reg_reg[4][4][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(11),
      Q => \ch_reg_reg[4][4]_27\(11),
      R => '0'
    );
\ch_reg_reg[4][4][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(12),
      Q => \ch_reg_reg[4][4]_27\(12),
      R => '0'
    );
\ch_reg_reg[4][4][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(13),
      Q => \ch_reg_reg[4][4]_27\(13),
      R => '0'
    );
\ch_reg_reg[4][4][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(14),
      Q => \ch_reg_reg[4][4]_27\(14),
      R => '0'
    );
\ch_reg_reg[4][4][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(15),
      Q => \ch_reg_reg[4][4]_27\(15),
      R => '0'
    );
\ch_reg_reg[4][4][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(16),
      Q => \ch_reg_reg[4][4]_27\(16),
      R => '0'
    );
\ch_reg_reg[4][4][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(17),
      Q => \ch_reg_reg[4][4]_27\(17),
      R => '0'
    );
\ch_reg_reg[4][4][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(18),
      Q => \ch_reg_reg[4][4]_27\(18),
      R => '0'
    );
\ch_reg_reg[4][4][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(19),
      Q => \ch_reg_reg[4][4]_27\(19),
      R => '0'
    );
\ch_reg_reg[4][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(1),
      Q => \ch_reg_reg[4][4]_27\(1),
      R => '0'
    );
\ch_reg_reg[4][4][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(20),
      Q => \ch_reg_reg[4][4]_27\(20),
      R => '0'
    );
\ch_reg_reg[4][4][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(21),
      Q => \ch_reg_reg[4][4]_27\(21),
      R => '0'
    );
\ch_reg_reg[4][4][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(22),
      Q => \ch_reg_reg[4][4]_27\(22),
      R => '0'
    );
\ch_reg_reg[4][4][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(23),
      Q => \ch_reg_reg[4][4]_27\(23),
      R => '0'
    );
\ch_reg_reg[4][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(2),
      Q => \ch_reg_reg[4][4]_27\(2),
      R => '0'
    );
\ch_reg_reg[4][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(3),
      Q => \ch_reg_reg[4][4]_27\(3),
      R => '0'
    );
\ch_reg_reg[4][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(4),
      Q => \ch_reg_reg[4][4]_27\(4),
      R => '0'
    );
\ch_reg_reg[4][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(5),
      Q => \ch_reg_reg[4][4]_27\(5),
      R => '0'
    );
\ch_reg_reg[4][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(6),
      Q => \ch_reg_reg[4][4]_27\(6),
      R => '0'
    );
\ch_reg_reg[4][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(7),
      Q => \ch_reg_reg[4][4]_27\(7),
      R => '0'
    );
\ch_reg_reg[4][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(8),
      Q => \ch_reg_reg[4][4]_27\(8),
      R => '0'
    );
\ch_reg_reg[4][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_36_in(9),
      Q => \ch_reg_reg[4][4]_27\(9),
      R => '0'
    );
\ch_reg_reg[4][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => SDATA4,
      Q => \ch_reg_reg[4][5]_28\(0),
      R => '0'
    );
\ch_reg_reg[4][5][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(10),
      Q => \ch_reg_reg[4][5]_28\(10),
      R => '0'
    );
\ch_reg_reg[4][5][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(11),
      Q => \ch_reg_reg[4][5]_28\(11),
      R => '0'
    );
\ch_reg_reg[4][5][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(12),
      Q => \ch_reg_reg[4][5]_28\(12),
      R => '0'
    );
\ch_reg_reg[4][5][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(13),
      Q => \ch_reg_reg[4][5]_28\(13),
      R => '0'
    );
\ch_reg_reg[4][5][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(14),
      Q => \ch_reg_reg[4][5]_28\(14),
      R => '0'
    );
\ch_reg_reg[4][5][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(15),
      Q => \ch_reg_reg[4][5]_28\(15),
      R => '0'
    );
\ch_reg_reg[4][5][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(16),
      Q => \ch_reg_reg[4][5]_28\(16),
      R => '0'
    );
\ch_reg_reg[4][5][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(17),
      Q => \ch_reg_reg[4][5]_28\(17),
      R => '0'
    );
\ch_reg_reg[4][5][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(18),
      Q => \ch_reg_reg[4][5]_28\(18),
      R => '0'
    );
\ch_reg_reg[4][5][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(19),
      Q => \ch_reg_reg[4][5]_28\(19),
      R => '0'
    );
\ch_reg_reg[4][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(1),
      Q => \ch_reg_reg[4][5]_28\(1),
      R => '0'
    );
\ch_reg_reg[4][5][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(20),
      Q => \ch_reg_reg[4][5]_28\(20),
      R => '0'
    );
\ch_reg_reg[4][5][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(21),
      Q => \ch_reg_reg[4][5]_28\(21),
      R => '0'
    );
\ch_reg_reg[4][5][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(22),
      Q => \ch_reg_reg[4][5]_28\(22),
      R => '0'
    );
\ch_reg_reg[4][5][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(23),
      Q => \ch_reg_reg[4][5]_28\(23),
      R => '0'
    );
\ch_reg_reg[4][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(2),
      Q => \ch_reg_reg[4][5]_28\(2),
      R => '0'
    );
\ch_reg_reg[4][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(3),
      Q => \ch_reg_reg[4][5]_28\(3),
      R => '0'
    );
\ch_reg_reg[4][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(4),
      Q => \ch_reg_reg[4][5]_28\(4),
      R => '0'
    );
\ch_reg_reg[4][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(5),
      Q => \ch_reg_reg[4][5]_28\(5),
      R => '0'
    );
\ch_reg_reg[4][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(6),
      Q => \ch_reg_reg[4][5]_28\(6),
      R => '0'
    );
\ch_reg_reg[4][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(7),
      Q => \ch_reg_reg[4][5]_28\(7),
      R => '0'
    );
\ch_reg_reg[4][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(8),
      Q => \ch_reg_reg[4][5]_28\(8),
      R => '0'
    );
\ch_reg_reg[4][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_36_in(9),
      Q => \ch_reg_reg[4][5]_28\(9),
      R => '0'
    );
\ch_reg_reg[4][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => SDATA4,
      Q => \ch_reg_reg[4][6]_29\(0),
      R => '0'
    );
\ch_reg_reg[4][6][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(10),
      Q => \ch_reg_reg[4][6]_29\(10),
      R => '0'
    );
\ch_reg_reg[4][6][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(11),
      Q => \ch_reg_reg[4][6]_29\(11),
      R => '0'
    );
\ch_reg_reg[4][6][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(12),
      Q => \ch_reg_reg[4][6]_29\(12),
      R => '0'
    );
\ch_reg_reg[4][6][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(13),
      Q => \ch_reg_reg[4][6]_29\(13),
      R => '0'
    );
\ch_reg_reg[4][6][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(14),
      Q => \ch_reg_reg[4][6]_29\(14),
      R => '0'
    );
\ch_reg_reg[4][6][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(15),
      Q => \ch_reg_reg[4][6]_29\(15),
      R => '0'
    );
\ch_reg_reg[4][6][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(16),
      Q => \ch_reg_reg[4][6]_29\(16),
      R => '0'
    );
\ch_reg_reg[4][6][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(17),
      Q => \ch_reg_reg[4][6]_29\(17),
      R => '0'
    );
\ch_reg_reg[4][6][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(18),
      Q => \ch_reg_reg[4][6]_29\(18),
      R => '0'
    );
\ch_reg_reg[4][6][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(19),
      Q => \ch_reg_reg[4][6]_29\(19),
      R => '0'
    );
\ch_reg_reg[4][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(1),
      Q => \ch_reg_reg[4][6]_29\(1),
      R => '0'
    );
\ch_reg_reg[4][6][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(20),
      Q => \ch_reg_reg[4][6]_29\(20),
      R => '0'
    );
\ch_reg_reg[4][6][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(21),
      Q => \ch_reg_reg[4][6]_29\(21),
      R => '0'
    );
\ch_reg_reg[4][6][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(22),
      Q => \ch_reg_reg[4][6]_29\(22),
      R => '0'
    );
\ch_reg_reg[4][6][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(23),
      Q => \ch_reg_reg[4][6]_29\(23),
      R => '0'
    );
\ch_reg_reg[4][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(2),
      Q => \ch_reg_reg[4][6]_29\(2),
      R => '0'
    );
\ch_reg_reg[4][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(3),
      Q => \ch_reg_reg[4][6]_29\(3),
      R => '0'
    );
\ch_reg_reg[4][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(4),
      Q => \ch_reg_reg[4][6]_29\(4),
      R => '0'
    );
\ch_reg_reg[4][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(5),
      Q => \ch_reg_reg[4][6]_29\(5),
      R => '0'
    );
\ch_reg_reg[4][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(6),
      Q => \ch_reg_reg[4][6]_29\(6),
      R => '0'
    );
\ch_reg_reg[4][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(7),
      Q => \ch_reg_reg[4][6]_29\(7),
      R => '0'
    );
\ch_reg_reg[4][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(8),
      Q => \ch_reg_reg[4][6]_29\(8),
      R => '0'
    );
\ch_reg_reg[4][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_36_in(9),
      Q => \ch_reg_reg[4][6]_29\(9),
      R => '0'
    );
\ch_reg_reg[4][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => SDATA4,
      Q => \ch_reg_reg[4][7]_30\(0),
      R => '0'
    );
\ch_reg_reg[4][7][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(10),
      Q => \ch_reg_reg[4][7]_30\(10),
      R => '0'
    );
\ch_reg_reg[4][7][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(11),
      Q => \ch_reg_reg[4][7]_30\(11),
      R => '0'
    );
\ch_reg_reg[4][7][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(12),
      Q => \ch_reg_reg[4][7]_30\(12),
      R => '0'
    );
\ch_reg_reg[4][7][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(13),
      Q => \ch_reg_reg[4][7]_30\(13),
      R => '0'
    );
\ch_reg_reg[4][7][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(14),
      Q => \ch_reg_reg[4][7]_30\(14),
      R => '0'
    );
\ch_reg_reg[4][7][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(15),
      Q => \ch_reg_reg[4][7]_30\(15),
      R => '0'
    );
\ch_reg_reg[4][7][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(16),
      Q => \ch_reg_reg[4][7]_30\(16),
      R => '0'
    );
\ch_reg_reg[4][7][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(17),
      Q => \ch_reg_reg[4][7]_30\(17),
      R => '0'
    );
\ch_reg_reg[4][7][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(18),
      Q => \ch_reg_reg[4][7]_30\(18),
      R => '0'
    );
\ch_reg_reg[4][7][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(19),
      Q => \ch_reg_reg[4][7]_30\(19),
      R => '0'
    );
\ch_reg_reg[4][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(1),
      Q => \ch_reg_reg[4][7]_30\(1),
      R => '0'
    );
\ch_reg_reg[4][7][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(20),
      Q => \ch_reg_reg[4][7]_30\(20),
      R => '0'
    );
\ch_reg_reg[4][7][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(21),
      Q => \ch_reg_reg[4][7]_30\(21),
      R => '0'
    );
\ch_reg_reg[4][7][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(22),
      Q => \ch_reg_reg[4][7]_30\(22),
      R => '0'
    );
\ch_reg_reg[4][7][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(23),
      Q => \ch_reg_reg[4][7]_30\(23),
      R => '0'
    );
\ch_reg_reg[4][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(2),
      Q => \ch_reg_reg[4][7]_30\(2),
      R => '0'
    );
\ch_reg_reg[4][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(3),
      Q => \ch_reg_reg[4][7]_30\(3),
      R => '0'
    );
\ch_reg_reg[4][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(4),
      Q => \ch_reg_reg[4][7]_30\(4),
      R => '0'
    );
\ch_reg_reg[4][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(5),
      Q => \ch_reg_reg[4][7]_30\(5),
      R => '0'
    );
\ch_reg_reg[4][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(6),
      Q => \ch_reg_reg[4][7]_30\(6),
      R => '0'
    );
\ch_reg_reg[4][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(7),
      Q => \ch_reg_reg[4][7]_30\(7),
      R => '0'
    );
\ch_reg_reg[4][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(8),
      Q => \ch_reg_reg[4][7]_30\(8),
      R => '0'
    );
\ch_reg_reg[4][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_36_in(9),
      Q => \ch_reg_reg[4][7]_30\(9),
      R => '0'
    );
\ch_reg_reg[5][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => SDATA5,
      Q => \ch_reg_reg[5][0]_39\(0),
      R => '0'
    );
\ch_reg_reg[5][0][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(10),
      Q => \ch_reg_reg[5][0]_39\(10),
      R => '0'
    );
\ch_reg_reg[5][0][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(11),
      Q => \ch_reg_reg[5][0]_39\(11),
      R => '0'
    );
\ch_reg_reg[5][0][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(12),
      Q => \ch_reg_reg[5][0]_39\(12),
      R => '0'
    );
\ch_reg_reg[5][0][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(13),
      Q => \ch_reg_reg[5][0]_39\(13),
      R => '0'
    );
\ch_reg_reg[5][0][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(14),
      Q => \ch_reg_reg[5][0]_39\(14),
      R => '0'
    );
\ch_reg_reg[5][0][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(15),
      Q => \ch_reg_reg[5][0]_39\(15),
      R => '0'
    );
\ch_reg_reg[5][0][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(16),
      Q => \ch_reg_reg[5][0]_39\(16),
      R => '0'
    );
\ch_reg_reg[5][0][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(17),
      Q => \ch_reg_reg[5][0]_39\(17),
      R => '0'
    );
\ch_reg_reg[5][0][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(18),
      Q => \ch_reg_reg[5][0]_39\(18),
      R => '0'
    );
\ch_reg_reg[5][0][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(19),
      Q => \ch_reg_reg[5][0]_39\(19),
      R => '0'
    );
\ch_reg_reg[5][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(1),
      Q => \ch_reg_reg[5][0]_39\(1),
      R => '0'
    );
\ch_reg_reg[5][0][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(20),
      Q => \ch_reg_reg[5][0]_39\(20),
      R => '0'
    );
\ch_reg_reg[5][0][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(21),
      Q => \ch_reg_reg[5][0]_39\(21),
      R => '0'
    );
\ch_reg_reg[5][0][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(22),
      Q => \ch_reg_reg[5][0]_39\(22),
      R => '0'
    );
\ch_reg_reg[5][0][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(23),
      Q => \ch_reg_reg[5][0]_39\(23),
      R => '0'
    );
\ch_reg_reg[5][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(2),
      Q => \ch_reg_reg[5][0]_39\(2),
      R => '0'
    );
\ch_reg_reg[5][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(3),
      Q => \ch_reg_reg[5][0]_39\(3),
      R => '0'
    );
\ch_reg_reg[5][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(4),
      Q => \ch_reg_reg[5][0]_39\(4),
      R => '0'
    );
\ch_reg_reg[5][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(5),
      Q => \ch_reg_reg[5][0]_39\(5),
      R => '0'
    );
\ch_reg_reg[5][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(6),
      Q => \ch_reg_reg[5][0]_39\(6),
      R => '0'
    );
\ch_reg_reg[5][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(7),
      Q => \ch_reg_reg[5][0]_39\(7),
      R => '0'
    );
\ch_reg_reg[5][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(8),
      Q => \ch_reg_reg[5][0]_39\(8),
      R => '0'
    );
\ch_reg_reg[5][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_27_in(9),
      Q => \ch_reg_reg[5][0]_39\(9),
      R => '0'
    );
\ch_reg_reg[5][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => SDATA5,
      Q => \ch_reg_reg[5][1]_32\(0),
      R => '0'
    );
\ch_reg_reg[5][1][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(10),
      Q => \ch_reg_reg[5][1]_32\(10),
      R => '0'
    );
\ch_reg_reg[5][1][10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][10]_i_2_n_0\,
      I1 => \ch_reg[5][1][10]_i_3_n_0\,
      O => p_27_in(10),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(11),
      Q => \ch_reg_reg[5][1]_32\(11),
      R => '0'
    );
\ch_reg_reg[5][1][11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][11]_i_2_n_0\,
      I1 => \ch_reg[5][1][11]_i_3_n_0\,
      O => p_27_in(11),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(12),
      Q => \ch_reg_reg[5][1]_32\(12),
      R => '0'
    );
\ch_reg_reg[5][1][12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][12]_i_2_n_0\,
      I1 => \ch_reg[5][1][12]_i_3_n_0\,
      O => p_27_in(12),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(13),
      Q => \ch_reg_reg[5][1]_32\(13),
      R => '0'
    );
\ch_reg_reg[5][1][13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][13]_i_2_n_0\,
      I1 => \ch_reg[5][1][13]_i_3_n_0\,
      O => p_27_in(13),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(14),
      Q => \ch_reg_reg[5][1]_32\(14),
      R => '0'
    );
\ch_reg_reg[5][1][14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][14]_i_2_n_0\,
      I1 => \ch_reg[5][1][14]_i_3_n_0\,
      O => p_27_in(14),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(15),
      Q => \ch_reg_reg[5][1]_32\(15),
      R => '0'
    );
\ch_reg_reg[5][1][15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][15]_i_2_n_0\,
      I1 => \ch_reg[5][1][15]_i_3_n_0\,
      O => p_27_in(15),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(16),
      Q => \ch_reg_reg[5][1]_32\(16),
      R => '0'
    );
\ch_reg_reg[5][1][16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][16]_i_2_n_0\,
      I1 => \ch_reg[5][1][16]_i_3_n_0\,
      O => p_27_in(16),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(17),
      Q => \ch_reg_reg[5][1]_32\(17),
      R => '0'
    );
\ch_reg_reg[5][1][17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][17]_i_2_n_0\,
      I1 => \ch_reg[5][1][17]_i_3_n_0\,
      O => p_27_in(17),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(18),
      Q => \ch_reg_reg[5][1]_32\(18),
      R => '0'
    );
\ch_reg_reg[5][1][18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][18]_i_2_n_0\,
      I1 => \ch_reg[5][1][18]_i_3_n_0\,
      O => p_27_in(18),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(19),
      Q => \ch_reg_reg[5][1]_32\(19),
      R => '0'
    );
\ch_reg_reg[5][1][19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][19]_i_2_n_0\,
      I1 => \ch_reg[5][1][19]_i_3_n_0\,
      O => p_27_in(19),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(1),
      Q => \ch_reg_reg[5][1]_32\(1),
      R => '0'
    );
\ch_reg_reg[5][1][1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][1]_i_2_n_0\,
      I1 => \ch_reg[5][1][1]_i_3_n_0\,
      O => p_27_in(1),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(20),
      Q => \ch_reg_reg[5][1]_32\(20),
      R => '0'
    );
\ch_reg_reg[5][1][20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][20]_i_2_n_0\,
      I1 => \ch_reg[5][1][20]_i_3_n_0\,
      O => p_27_in(20),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(21),
      Q => \ch_reg_reg[5][1]_32\(21),
      R => '0'
    );
\ch_reg_reg[5][1][21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][21]_i_2_n_0\,
      I1 => \ch_reg[5][1][21]_i_3_n_0\,
      O => p_27_in(21),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(22),
      Q => \ch_reg_reg[5][1]_32\(22),
      R => '0'
    );
\ch_reg_reg[5][1][22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][22]_i_2_n_0\,
      I1 => \ch_reg[5][1][22]_i_3_n_0\,
      O => p_27_in(22),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(23),
      Q => \ch_reg_reg[5][1]_32\(23),
      R => '0'
    );
\ch_reg_reg[5][1][23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][23]_i_2_n_0\,
      I1 => \ch_reg[5][1][23]_i_3_n_0\,
      O => p_27_in(23),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(2),
      Q => \ch_reg_reg[5][1]_32\(2),
      R => '0'
    );
\ch_reg_reg[5][1][2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][2]_i_2_n_0\,
      I1 => \ch_reg[5][1][2]_i_3_n_0\,
      O => p_27_in(2),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(3),
      Q => \ch_reg_reg[5][1]_32\(3),
      R => '0'
    );
\ch_reg_reg[5][1][3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][3]_i_2_n_0\,
      I1 => \ch_reg[5][1][3]_i_3_n_0\,
      O => p_27_in(3),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(4),
      Q => \ch_reg_reg[5][1]_32\(4),
      R => '0'
    );
\ch_reg_reg[5][1][4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][4]_i_2_n_0\,
      I1 => \ch_reg[5][1][4]_i_3_n_0\,
      O => p_27_in(4),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(5),
      Q => \ch_reg_reg[5][1]_32\(5),
      R => '0'
    );
\ch_reg_reg[5][1][5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][5]_i_2_n_0\,
      I1 => \ch_reg[5][1][5]_i_3_n_0\,
      O => p_27_in(5),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(6),
      Q => \ch_reg_reg[5][1]_32\(6),
      R => '0'
    );
\ch_reg_reg[5][1][6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][6]_i_2_n_0\,
      I1 => \ch_reg[5][1][6]_i_3_n_0\,
      O => p_27_in(6),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(7),
      Q => \ch_reg_reg[5][1]_32\(7),
      R => '0'
    );
\ch_reg_reg[5][1][7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][7]_i_2_n_0\,
      I1 => \ch_reg[5][1][7]_i_3_n_0\,
      O => p_27_in(7),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(8),
      Q => \ch_reg_reg[5][1]_32\(8),
      R => '0'
    );
\ch_reg_reg[5][1][8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][8]_i_2_n_0\,
      I1 => \ch_reg[5][1][8]_i_3_n_0\,
      O => p_27_in(8),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_27_in(9),
      Q => \ch_reg_reg[5][1]_32\(9),
      R => '0'
    );
\ch_reg_reg[5][1][9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[5][1][9]_i_2_n_0\,
      I1 => \ch_reg[5][1][9]_i_3_n_0\,
      O => p_27_in(9),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[5][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => SDATA5,
      Q => \ch_reg_reg[5][2]_33\(0),
      R => '0'
    );
\ch_reg_reg[5][2][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(10),
      Q => \ch_reg_reg[5][2]_33\(10),
      R => '0'
    );
\ch_reg_reg[5][2][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(11),
      Q => \ch_reg_reg[5][2]_33\(11),
      R => '0'
    );
\ch_reg_reg[5][2][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(12),
      Q => \ch_reg_reg[5][2]_33\(12),
      R => '0'
    );
\ch_reg_reg[5][2][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(13),
      Q => \ch_reg_reg[5][2]_33\(13),
      R => '0'
    );
\ch_reg_reg[5][2][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(14),
      Q => \ch_reg_reg[5][2]_33\(14),
      R => '0'
    );
\ch_reg_reg[5][2][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(15),
      Q => \ch_reg_reg[5][2]_33\(15),
      R => '0'
    );
\ch_reg_reg[5][2][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(16),
      Q => \ch_reg_reg[5][2]_33\(16),
      R => '0'
    );
\ch_reg_reg[5][2][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(17),
      Q => \ch_reg_reg[5][2]_33\(17),
      R => '0'
    );
\ch_reg_reg[5][2][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(18),
      Q => \ch_reg_reg[5][2]_33\(18),
      R => '0'
    );
\ch_reg_reg[5][2][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(19),
      Q => \ch_reg_reg[5][2]_33\(19),
      R => '0'
    );
\ch_reg_reg[5][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(1),
      Q => \ch_reg_reg[5][2]_33\(1),
      R => '0'
    );
\ch_reg_reg[5][2][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(20),
      Q => \ch_reg_reg[5][2]_33\(20),
      R => '0'
    );
\ch_reg_reg[5][2][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(21),
      Q => \ch_reg_reg[5][2]_33\(21),
      R => '0'
    );
\ch_reg_reg[5][2][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(22),
      Q => \ch_reg_reg[5][2]_33\(22),
      R => '0'
    );
\ch_reg_reg[5][2][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(23),
      Q => \ch_reg_reg[5][2]_33\(23),
      R => '0'
    );
\ch_reg_reg[5][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(2),
      Q => \ch_reg_reg[5][2]_33\(2),
      R => '0'
    );
\ch_reg_reg[5][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(3),
      Q => \ch_reg_reg[5][2]_33\(3),
      R => '0'
    );
\ch_reg_reg[5][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(4),
      Q => \ch_reg_reg[5][2]_33\(4),
      R => '0'
    );
\ch_reg_reg[5][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(5),
      Q => \ch_reg_reg[5][2]_33\(5),
      R => '0'
    );
\ch_reg_reg[5][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(6),
      Q => \ch_reg_reg[5][2]_33\(6),
      R => '0'
    );
\ch_reg_reg[5][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(7),
      Q => \ch_reg_reg[5][2]_33\(7),
      R => '0'
    );
\ch_reg_reg[5][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(8),
      Q => \ch_reg_reg[5][2]_33\(8),
      R => '0'
    );
\ch_reg_reg[5][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_27_in(9),
      Q => \ch_reg_reg[5][2]_33\(9),
      R => '0'
    );
\ch_reg_reg[5][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => SDATA5,
      Q => \ch_reg_reg[5][3]_34\(0),
      R => '0'
    );
\ch_reg_reg[5][3][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(10),
      Q => \ch_reg_reg[5][3]_34\(10),
      R => '0'
    );
\ch_reg_reg[5][3][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(11),
      Q => \ch_reg_reg[5][3]_34\(11),
      R => '0'
    );
\ch_reg_reg[5][3][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(12),
      Q => \ch_reg_reg[5][3]_34\(12),
      R => '0'
    );
\ch_reg_reg[5][3][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(13),
      Q => \ch_reg_reg[5][3]_34\(13),
      R => '0'
    );
\ch_reg_reg[5][3][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(14),
      Q => \ch_reg_reg[5][3]_34\(14),
      R => '0'
    );
\ch_reg_reg[5][3][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(15),
      Q => \ch_reg_reg[5][3]_34\(15),
      R => '0'
    );
\ch_reg_reg[5][3][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(16),
      Q => \ch_reg_reg[5][3]_34\(16),
      R => '0'
    );
\ch_reg_reg[5][3][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(17),
      Q => \ch_reg_reg[5][3]_34\(17),
      R => '0'
    );
\ch_reg_reg[5][3][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(18),
      Q => \ch_reg_reg[5][3]_34\(18),
      R => '0'
    );
\ch_reg_reg[5][3][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(19),
      Q => \ch_reg_reg[5][3]_34\(19),
      R => '0'
    );
\ch_reg_reg[5][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(1),
      Q => \ch_reg_reg[5][3]_34\(1),
      R => '0'
    );
\ch_reg_reg[5][3][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(20),
      Q => \ch_reg_reg[5][3]_34\(20),
      R => '0'
    );
\ch_reg_reg[5][3][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(21),
      Q => \ch_reg_reg[5][3]_34\(21),
      R => '0'
    );
\ch_reg_reg[5][3][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(22),
      Q => \ch_reg_reg[5][3]_34\(22),
      R => '0'
    );
\ch_reg_reg[5][3][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(23),
      Q => \ch_reg_reg[5][3]_34\(23),
      R => '0'
    );
\ch_reg_reg[5][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(2),
      Q => \ch_reg_reg[5][3]_34\(2),
      R => '0'
    );
\ch_reg_reg[5][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(3),
      Q => \ch_reg_reg[5][3]_34\(3),
      R => '0'
    );
\ch_reg_reg[5][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(4),
      Q => \ch_reg_reg[5][3]_34\(4),
      R => '0'
    );
\ch_reg_reg[5][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(5),
      Q => \ch_reg_reg[5][3]_34\(5),
      R => '0'
    );
\ch_reg_reg[5][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(6),
      Q => \ch_reg_reg[5][3]_34\(6),
      R => '0'
    );
\ch_reg_reg[5][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(7),
      Q => \ch_reg_reg[5][3]_34\(7),
      R => '0'
    );
\ch_reg_reg[5][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(8),
      Q => \ch_reg_reg[5][3]_34\(8),
      R => '0'
    );
\ch_reg_reg[5][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_27_in(9),
      Q => \ch_reg_reg[5][3]_34\(9),
      R => '0'
    );
\ch_reg_reg[5][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => SDATA5,
      Q => \ch_reg_reg[5][4]_35\(0),
      R => '0'
    );
\ch_reg_reg[5][4][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(10),
      Q => \ch_reg_reg[5][4]_35\(10),
      R => '0'
    );
\ch_reg_reg[5][4][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(11),
      Q => \ch_reg_reg[5][4]_35\(11),
      R => '0'
    );
\ch_reg_reg[5][4][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(12),
      Q => \ch_reg_reg[5][4]_35\(12),
      R => '0'
    );
\ch_reg_reg[5][4][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(13),
      Q => \ch_reg_reg[5][4]_35\(13),
      R => '0'
    );
\ch_reg_reg[5][4][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(14),
      Q => \ch_reg_reg[5][4]_35\(14),
      R => '0'
    );
\ch_reg_reg[5][4][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(15),
      Q => \ch_reg_reg[5][4]_35\(15),
      R => '0'
    );
\ch_reg_reg[5][4][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(16),
      Q => \ch_reg_reg[5][4]_35\(16),
      R => '0'
    );
\ch_reg_reg[5][4][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(17),
      Q => \ch_reg_reg[5][4]_35\(17),
      R => '0'
    );
\ch_reg_reg[5][4][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(18),
      Q => \ch_reg_reg[5][4]_35\(18),
      R => '0'
    );
\ch_reg_reg[5][4][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(19),
      Q => \ch_reg_reg[5][4]_35\(19),
      R => '0'
    );
\ch_reg_reg[5][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(1),
      Q => \ch_reg_reg[5][4]_35\(1),
      R => '0'
    );
\ch_reg_reg[5][4][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(20),
      Q => \ch_reg_reg[5][4]_35\(20),
      R => '0'
    );
\ch_reg_reg[5][4][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(21),
      Q => \ch_reg_reg[5][4]_35\(21),
      R => '0'
    );
\ch_reg_reg[5][4][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(22),
      Q => \ch_reg_reg[5][4]_35\(22),
      R => '0'
    );
\ch_reg_reg[5][4][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(23),
      Q => \ch_reg_reg[5][4]_35\(23),
      R => '0'
    );
\ch_reg_reg[5][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(2),
      Q => \ch_reg_reg[5][4]_35\(2),
      R => '0'
    );
\ch_reg_reg[5][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(3),
      Q => \ch_reg_reg[5][4]_35\(3),
      R => '0'
    );
\ch_reg_reg[5][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(4),
      Q => \ch_reg_reg[5][4]_35\(4),
      R => '0'
    );
\ch_reg_reg[5][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(5),
      Q => \ch_reg_reg[5][4]_35\(5),
      R => '0'
    );
\ch_reg_reg[5][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(6),
      Q => \ch_reg_reg[5][4]_35\(6),
      R => '0'
    );
\ch_reg_reg[5][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(7),
      Q => \ch_reg_reg[5][4]_35\(7),
      R => '0'
    );
\ch_reg_reg[5][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(8),
      Q => \ch_reg_reg[5][4]_35\(8),
      R => '0'
    );
\ch_reg_reg[5][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_27_in(9),
      Q => \ch_reg_reg[5][4]_35\(9),
      R => '0'
    );
\ch_reg_reg[5][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => SDATA5,
      Q => \ch_reg_reg[5][5]_36\(0),
      R => '0'
    );
\ch_reg_reg[5][5][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(10),
      Q => \ch_reg_reg[5][5]_36\(10),
      R => '0'
    );
\ch_reg_reg[5][5][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(11),
      Q => \ch_reg_reg[5][5]_36\(11),
      R => '0'
    );
\ch_reg_reg[5][5][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(12),
      Q => \ch_reg_reg[5][5]_36\(12),
      R => '0'
    );
\ch_reg_reg[5][5][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(13),
      Q => \ch_reg_reg[5][5]_36\(13),
      R => '0'
    );
\ch_reg_reg[5][5][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(14),
      Q => \ch_reg_reg[5][5]_36\(14),
      R => '0'
    );
\ch_reg_reg[5][5][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(15),
      Q => \ch_reg_reg[5][5]_36\(15),
      R => '0'
    );
\ch_reg_reg[5][5][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(16),
      Q => \ch_reg_reg[5][5]_36\(16),
      R => '0'
    );
\ch_reg_reg[5][5][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(17),
      Q => \ch_reg_reg[5][5]_36\(17),
      R => '0'
    );
\ch_reg_reg[5][5][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(18),
      Q => \ch_reg_reg[5][5]_36\(18),
      R => '0'
    );
\ch_reg_reg[5][5][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(19),
      Q => \ch_reg_reg[5][5]_36\(19),
      R => '0'
    );
\ch_reg_reg[5][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(1),
      Q => \ch_reg_reg[5][5]_36\(1),
      R => '0'
    );
\ch_reg_reg[5][5][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(20),
      Q => \ch_reg_reg[5][5]_36\(20),
      R => '0'
    );
\ch_reg_reg[5][5][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(21),
      Q => \ch_reg_reg[5][5]_36\(21),
      R => '0'
    );
\ch_reg_reg[5][5][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(22),
      Q => \ch_reg_reg[5][5]_36\(22),
      R => '0'
    );
\ch_reg_reg[5][5][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(23),
      Q => \ch_reg_reg[5][5]_36\(23),
      R => '0'
    );
\ch_reg_reg[5][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(2),
      Q => \ch_reg_reg[5][5]_36\(2),
      R => '0'
    );
\ch_reg_reg[5][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(3),
      Q => \ch_reg_reg[5][5]_36\(3),
      R => '0'
    );
\ch_reg_reg[5][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(4),
      Q => \ch_reg_reg[5][5]_36\(4),
      R => '0'
    );
\ch_reg_reg[5][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(5),
      Q => \ch_reg_reg[5][5]_36\(5),
      R => '0'
    );
\ch_reg_reg[5][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(6),
      Q => \ch_reg_reg[5][5]_36\(6),
      R => '0'
    );
\ch_reg_reg[5][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(7),
      Q => \ch_reg_reg[5][5]_36\(7),
      R => '0'
    );
\ch_reg_reg[5][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(8),
      Q => \ch_reg_reg[5][5]_36\(8),
      R => '0'
    );
\ch_reg_reg[5][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_27_in(9),
      Q => \ch_reg_reg[5][5]_36\(9),
      R => '0'
    );
\ch_reg_reg[5][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => SDATA5,
      Q => \ch_reg_reg[5][6]_37\(0),
      R => '0'
    );
\ch_reg_reg[5][6][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(10),
      Q => \ch_reg_reg[5][6]_37\(10),
      R => '0'
    );
\ch_reg_reg[5][6][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(11),
      Q => \ch_reg_reg[5][6]_37\(11),
      R => '0'
    );
\ch_reg_reg[5][6][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(12),
      Q => \ch_reg_reg[5][6]_37\(12),
      R => '0'
    );
\ch_reg_reg[5][6][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(13),
      Q => \ch_reg_reg[5][6]_37\(13),
      R => '0'
    );
\ch_reg_reg[5][6][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(14),
      Q => \ch_reg_reg[5][6]_37\(14),
      R => '0'
    );
\ch_reg_reg[5][6][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(15),
      Q => \ch_reg_reg[5][6]_37\(15),
      R => '0'
    );
\ch_reg_reg[5][6][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(16),
      Q => \ch_reg_reg[5][6]_37\(16),
      R => '0'
    );
\ch_reg_reg[5][6][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(17),
      Q => \ch_reg_reg[5][6]_37\(17),
      R => '0'
    );
\ch_reg_reg[5][6][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(18),
      Q => \ch_reg_reg[5][6]_37\(18),
      R => '0'
    );
\ch_reg_reg[5][6][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(19),
      Q => \ch_reg_reg[5][6]_37\(19),
      R => '0'
    );
\ch_reg_reg[5][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(1),
      Q => \ch_reg_reg[5][6]_37\(1),
      R => '0'
    );
\ch_reg_reg[5][6][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(20),
      Q => \ch_reg_reg[5][6]_37\(20),
      R => '0'
    );
\ch_reg_reg[5][6][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(21),
      Q => \ch_reg_reg[5][6]_37\(21),
      R => '0'
    );
\ch_reg_reg[5][6][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(22),
      Q => \ch_reg_reg[5][6]_37\(22),
      R => '0'
    );
\ch_reg_reg[5][6][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(23),
      Q => \ch_reg_reg[5][6]_37\(23),
      R => '0'
    );
\ch_reg_reg[5][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(2),
      Q => \ch_reg_reg[5][6]_37\(2),
      R => '0'
    );
\ch_reg_reg[5][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(3),
      Q => \ch_reg_reg[5][6]_37\(3),
      R => '0'
    );
\ch_reg_reg[5][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(4),
      Q => \ch_reg_reg[5][6]_37\(4),
      R => '0'
    );
\ch_reg_reg[5][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(5),
      Q => \ch_reg_reg[5][6]_37\(5),
      R => '0'
    );
\ch_reg_reg[5][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(6),
      Q => \ch_reg_reg[5][6]_37\(6),
      R => '0'
    );
\ch_reg_reg[5][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(7),
      Q => \ch_reg_reg[5][6]_37\(7),
      R => '0'
    );
\ch_reg_reg[5][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(8),
      Q => \ch_reg_reg[5][6]_37\(8),
      R => '0'
    );
\ch_reg_reg[5][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_27_in(9),
      Q => \ch_reg_reg[5][6]_37\(9),
      R => '0'
    );
\ch_reg_reg[5][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => SDATA5,
      Q => \ch_reg_reg[5][7]_38\(0),
      R => '0'
    );
\ch_reg_reg[5][7][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(10),
      Q => \ch_reg_reg[5][7]_38\(10),
      R => '0'
    );
\ch_reg_reg[5][7][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(11),
      Q => \ch_reg_reg[5][7]_38\(11),
      R => '0'
    );
\ch_reg_reg[5][7][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(12),
      Q => \ch_reg_reg[5][7]_38\(12),
      R => '0'
    );
\ch_reg_reg[5][7][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(13),
      Q => \ch_reg_reg[5][7]_38\(13),
      R => '0'
    );
\ch_reg_reg[5][7][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(14),
      Q => \ch_reg_reg[5][7]_38\(14),
      R => '0'
    );
\ch_reg_reg[5][7][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(15),
      Q => \ch_reg_reg[5][7]_38\(15),
      R => '0'
    );
\ch_reg_reg[5][7][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(16),
      Q => \ch_reg_reg[5][7]_38\(16),
      R => '0'
    );
\ch_reg_reg[5][7][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(17),
      Q => \ch_reg_reg[5][7]_38\(17),
      R => '0'
    );
\ch_reg_reg[5][7][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(18),
      Q => \ch_reg_reg[5][7]_38\(18),
      R => '0'
    );
\ch_reg_reg[5][7][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(19),
      Q => \ch_reg_reg[5][7]_38\(19),
      R => '0'
    );
\ch_reg_reg[5][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(1),
      Q => \ch_reg_reg[5][7]_38\(1),
      R => '0'
    );
\ch_reg_reg[5][7][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(20),
      Q => \ch_reg_reg[5][7]_38\(20),
      R => '0'
    );
\ch_reg_reg[5][7][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(21),
      Q => \ch_reg_reg[5][7]_38\(21),
      R => '0'
    );
\ch_reg_reg[5][7][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(22),
      Q => \ch_reg_reg[5][7]_38\(22),
      R => '0'
    );
\ch_reg_reg[5][7][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(23),
      Q => \ch_reg_reg[5][7]_38\(23),
      R => '0'
    );
\ch_reg_reg[5][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(2),
      Q => \ch_reg_reg[5][7]_38\(2),
      R => '0'
    );
\ch_reg_reg[5][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(3),
      Q => \ch_reg_reg[5][7]_38\(3),
      R => '0'
    );
\ch_reg_reg[5][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(4),
      Q => \ch_reg_reg[5][7]_38\(4),
      R => '0'
    );
\ch_reg_reg[5][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(5),
      Q => \ch_reg_reg[5][7]_38\(5),
      R => '0'
    );
\ch_reg_reg[5][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(6),
      Q => \ch_reg_reg[5][7]_38\(6),
      R => '0'
    );
\ch_reg_reg[5][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(7),
      Q => \ch_reg_reg[5][7]_38\(7),
      R => '0'
    );
\ch_reg_reg[5][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(8),
      Q => \ch_reg_reg[5][7]_38\(8),
      R => '0'
    );
\ch_reg_reg[5][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_27_in(9),
      Q => \ch_reg_reg[5][7]_38\(9),
      R => '0'
    );
\ch_reg_reg[6][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => SDATA6,
      Q => \ch_reg_reg[6][0]_47\(0),
      R => '0'
    );
\ch_reg_reg[6][0][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(10),
      Q => \ch_reg_reg[6][0]_47\(10),
      R => '0'
    );
\ch_reg_reg[6][0][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(11),
      Q => \ch_reg_reg[6][0]_47\(11),
      R => '0'
    );
\ch_reg_reg[6][0][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(12),
      Q => \ch_reg_reg[6][0]_47\(12),
      R => '0'
    );
\ch_reg_reg[6][0][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(13),
      Q => \ch_reg_reg[6][0]_47\(13),
      R => '0'
    );
\ch_reg_reg[6][0][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(14),
      Q => \ch_reg_reg[6][0]_47\(14),
      R => '0'
    );
\ch_reg_reg[6][0][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(15),
      Q => \ch_reg_reg[6][0]_47\(15),
      R => '0'
    );
\ch_reg_reg[6][0][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(16),
      Q => \ch_reg_reg[6][0]_47\(16),
      R => '0'
    );
\ch_reg_reg[6][0][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(17),
      Q => \ch_reg_reg[6][0]_47\(17),
      R => '0'
    );
\ch_reg_reg[6][0][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(18),
      Q => \ch_reg_reg[6][0]_47\(18),
      R => '0'
    );
\ch_reg_reg[6][0][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(19),
      Q => \ch_reg_reg[6][0]_47\(19),
      R => '0'
    );
\ch_reg_reg[6][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(1),
      Q => \ch_reg_reg[6][0]_47\(1),
      R => '0'
    );
\ch_reg_reg[6][0][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(20),
      Q => \ch_reg_reg[6][0]_47\(20),
      R => '0'
    );
\ch_reg_reg[6][0][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(21),
      Q => \ch_reg_reg[6][0]_47\(21),
      R => '0'
    );
\ch_reg_reg[6][0][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(22),
      Q => \ch_reg_reg[6][0]_47\(22),
      R => '0'
    );
\ch_reg_reg[6][0][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(23),
      Q => \ch_reg_reg[6][0]_47\(23),
      R => '0'
    );
\ch_reg_reg[6][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(2),
      Q => \ch_reg_reg[6][0]_47\(2),
      R => '0'
    );
\ch_reg_reg[6][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(3),
      Q => \ch_reg_reg[6][0]_47\(3),
      R => '0'
    );
\ch_reg_reg[6][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(4),
      Q => \ch_reg_reg[6][0]_47\(4),
      R => '0'
    );
\ch_reg_reg[6][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(5),
      Q => \ch_reg_reg[6][0]_47\(5),
      R => '0'
    );
\ch_reg_reg[6][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(6),
      Q => \ch_reg_reg[6][0]_47\(6),
      R => '0'
    );
\ch_reg_reg[6][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(7),
      Q => \ch_reg_reg[6][0]_47\(7),
      R => '0'
    );
\ch_reg_reg[6][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(8),
      Q => \ch_reg_reg[6][0]_47\(8),
      R => '0'
    );
\ch_reg_reg[6][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_18_in(9),
      Q => \ch_reg_reg[6][0]_47\(9),
      R => '0'
    );
\ch_reg_reg[6][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => SDATA6,
      Q => \ch_reg_reg[6][1]_40\(0),
      R => '0'
    );
\ch_reg_reg[6][1][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(10),
      Q => \ch_reg_reg[6][1]_40\(10),
      R => '0'
    );
\ch_reg_reg[6][1][10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][10]_i_2_n_0\,
      I1 => \ch_reg[6][1][10]_i_3_n_0\,
      O => p_18_in(10),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(11),
      Q => \ch_reg_reg[6][1]_40\(11),
      R => '0'
    );
\ch_reg_reg[6][1][11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][11]_i_2_n_0\,
      I1 => \ch_reg[6][1][11]_i_3_n_0\,
      O => p_18_in(11),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(12),
      Q => \ch_reg_reg[6][1]_40\(12),
      R => '0'
    );
\ch_reg_reg[6][1][12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][12]_i_2_n_0\,
      I1 => \ch_reg[6][1][12]_i_3_n_0\,
      O => p_18_in(12),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(13),
      Q => \ch_reg_reg[6][1]_40\(13),
      R => '0'
    );
\ch_reg_reg[6][1][13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][13]_i_2_n_0\,
      I1 => \ch_reg[6][1][13]_i_3_n_0\,
      O => p_18_in(13),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(14),
      Q => \ch_reg_reg[6][1]_40\(14),
      R => '0'
    );
\ch_reg_reg[6][1][14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][14]_i_2_n_0\,
      I1 => \ch_reg[6][1][14]_i_3_n_0\,
      O => p_18_in(14),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(15),
      Q => \ch_reg_reg[6][1]_40\(15),
      R => '0'
    );
\ch_reg_reg[6][1][15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][15]_i_2_n_0\,
      I1 => \ch_reg[6][1][15]_i_3_n_0\,
      O => p_18_in(15),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(16),
      Q => \ch_reg_reg[6][1]_40\(16),
      R => '0'
    );
\ch_reg_reg[6][1][16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][16]_i_2_n_0\,
      I1 => \ch_reg[6][1][16]_i_3_n_0\,
      O => p_18_in(16),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(17),
      Q => \ch_reg_reg[6][1]_40\(17),
      R => '0'
    );
\ch_reg_reg[6][1][17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][17]_i_2_n_0\,
      I1 => \ch_reg[6][1][17]_i_3_n_0\,
      O => p_18_in(17),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(18),
      Q => \ch_reg_reg[6][1]_40\(18),
      R => '0'
    );
\ch_reg_reg[6][1][18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][18]_i_2_n_0\,
      I1 => \ch_reg[6][1][18]_i_3_n_0\,
      O => p_18_in(18),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(19),
      Q => \ch_reg_reg[6][1]_40\(19),
      R => '0'
    );
\ch_reg_reg[6][1][19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][19]_i_2_n_0\,
      I1 => \ch_reg[6][1][19]_i_3_n_0\,
      O => p_18_in(19),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(1),
      Q => \ch_reg_reg[6][1]_40\(1),
      R => '0'
    );
\ch_reg_reg[6][1][1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][1]_i_2_n_0\,
      I1 => \ch_reg[6][1][1]_i_3_n_0\,
      O => p_18_in(1),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(20),
      Q => \ch_reg_reg[6][1]_40\(20),
      R => '0'
    );
\ch_reg_reg[6][1][20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][20]_i_2_n_0\,
      I1 => \ch_reg[6][1][20]_i_3_n_0\,
      O => p_18_in(20),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(21),
      Q => \ch_reg_reg[6][1]_40\(21),
      R => '0'
    );
\ch_reg_reg[6][1][21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][21]_i_2_n_0\,
      I1 => \ch_reg[6][1][21]_i_3_n_0\,
      O => p_18_in(21),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(22),
      Q => \ch_reg_reg[6][1]_40\(22),
      R => '0'
    );
\ch_reg_reg[6][1][22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][22]_i_2_n_0\,
      I1 => \ch_reg[6][1][22]_i_3_n_0\,
      O => p_18_in(22),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(23),
      Q => \ch_reg_reg[6][1]_40\(23),
      R => '0'
    );
\ch_reg_reg[6][1][23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][23]_i_2_n_0\,
      I1 => \ch_reg[6][1][23]_i_3_n_0\,
      O => p_18_in(23),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(2),
      Q => \ch_reg_reg[6][1]_40\(2),
      R => '0'
    );
\ch_reg_reg[6][1][2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][2]_i_2_n_0\,
      I1 => \ch_reg[6][1][2]_i_3_n_0\,
      O => p_18_in(2),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(3),
      Q => \ch_reg_reg[6][1]_40\(3),
      R => '0'
    );
\ch_reg_reg[6][1][3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][3]_i_2_n_0\,
      I1 => \ch_reg[6][1][3]_i_3_n_0\,
      O => p_18_in(3),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(4),
      Q => \ch_reg_reg[6][1]_40\(4),
      R => '0'
    );
\ch_reg_reg[6][1][4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][4]_i_2_n_0\,
      I1 => \ch_reg[6][1][4]_i_3_n_0\,
      O => p_18_in(4),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(5),
      Q => \ch_reg_reg[6][1]_40\(5),
      R => '0'
    );
\ch_reg_reg[6][1][5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][5]_i_2_n_0\,
      I1 => \ch_reg[6][1][5]_i_3_n_0\,
      O => p_18_in(5),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(6),
      Q => \ch_reg_reg[6][1]_40\(6),
      R => '0'
    );
\ch_reg_reg[6][1][6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][6]_i_2_n_0\,
      I1 => \ch_reg[6][1][6]_i_3_n_0\,
      O => p_18_in(6),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(7),
      Q => \ch_reg_reg[6][1]_40\(7),
      R => '0'
    );
\ch_reg_reg[6][1][7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][7]_i_2_n_0\,
      I1 => \ch_reg[6][1][7]_i_3_n_0\,
      O => p_18_in(7),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(8),
      Q => \ch_reg_reg[6][1]_40\(8),
      R => '0'
    );
\ch_reg_reg[6][1][8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][8]_i_2_n_0\,
      I1 => \ch_reg[6][1][8]_i_3_n_0\,
      O => p_18_in(8),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_18_in(9),
      Q => \ch_reg_reg[6][1]_40\(9),
      R => '0'
    );
\ch_reg_reg[6][1][9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[6][1][9]_i_2_n_0\,
      I1 => \ch_reg[6][1][9]_i_3_n_0\,
      O => p_18_in(9),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[6][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => SDATA6,
      Q => \ch_reg_reg[6][2]_41\(0),
      R => '0'
    );
\ch_reg_reg[6][2][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(10),
      Q => \ch_reg_reg[6][2]_41\(10),
      R => '0'
    );
\ch_reg_reg[6][2][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(11),
      Q => \ch_reg_reg[6][2]_41\(11),
      R => '0'
    );
\ch_reg_reg[6][2][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(12),
      Q => \ch_reg_reg[6][2]_41\(12),
      R => '0'
    );
\ch_reg_reg[6][2][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(13),
      Q => \ch_reg_reg[6][2]_41\(13),
      R => '0'
    );
\ch_reg_reg[6][2][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(14),
      Q => \ch_reg_reg[6][2]_41\(14),
      R => '0'
    );
\ch_reg_reg[6][2][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(15),
      Q => \ch_reg_reg[6][2]_41\(15),
      R => '0'
    );
\ch_reg_reg[6][2][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(16),
      Q => \ch_reg_reg[6][2]_41\(16),
      R => '0'
    );
\ch_reg_reg[6][2][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(17),
      Q => \ch_reg_reg[6][2]_41\(17),
      R => '0'
    );
\ch_reg_reg[6][2][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(18),
      Q => \ch_reg_reg[6][2]_41\(18),
      R => '0'
    );
\ch_reg_reg[6][2][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(19),
      Q => \ch_reg_reg[6][2]_41\(19),
      R => '0'
    );
\ch_reg_reg[6][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(1),
      Q => \ch_reg_reg[6][2]_41\(1),
      R => '0'
    );
\ch_reg_reg[6][2][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(20),
      Q => \ch_reg_reg[6][2]_41\(20),
      R => '0'
    );
\ch_reg_reg[6][2][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(21),
      Q => \ch_reg_reg[6][2]_41\(21),
      R => '0'
    );
\ch_reg_reg[6][2][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(22),
      Q => \ch_reg_reg[6][2]_41\(22),
      R => '0'
    );
\ch_reg_reg[6][2][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(23),
      Q => \ch_reg_reg[6][2]_41\(23),
      R => '0'
    );
\ch_reg_reg[6][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(2),
      Q => \ch_reg_reg[6][2]_41\(2),
      R => '0'
    );
\ch_reg_reg[6][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(3),
      Q => \ch_reg_reg[6][2]_41\(3),
      R => '0'
    );
\ch_reg_reg[6][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(4),
      Q => \ch_reg_reg[6][2]_41\(4),
      R => '0'
    );
\ch_reg_reg[6][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(5),
      Q => \ch_reg_reg[6][2]_41\(5),
      R => '0'
    );
\ch_reg_reg[6][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(6),
      Q => \ch_reg_reg[6][2]_41\(6),
      R => '0'
    );
\ch_reg_reg[6][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(7),
      Q => \ch_reg_reg[6][2]_41\(7),
      R => '0'
    );
\ch_reg_reg[6][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(8),
      Q => \ch_reg_reg[6][2]_41\(8),
      R => '0'
    );
\ch_reg_reg[6][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_18_in(9),
      Q => \ch_reg_reg[6][2]_41\(9),
      R => '0'
    );
\ch_reg_reg[6][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => SDATA6,
      Q => \ch_reg_reg[6][3]_42\(0),
      R => '0'
    );
\ch_reg_reg[6][3][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(10),
      Q => \ch_reg_reg[6][3]_42\(10),
      R => '0'
    );
\ch_reg_reg[6][3][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(11),
      Q => \ch_reg_reg[6][3]_42\(11),
      R => '0'
    );
\ch_reg_reg[6][3][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(12),
      Q => \ch_reg_reg[6][3]_42\(12),
      R => '0'
    );
\ch_reg_reg[6][3][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(13),
      Q => \ch_reg_reg[6][3]_42\(13),
      R => '0'
    );
\ch_reg_reg[6][3][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(14),
      Q => \ch_reg_reg[6][3]_42\(14),
      R => '0'
    );
\ch_reg_reg[6][3][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(15),
      Q => \ch_reg_reg[6][3]_42\(15),
      R => '0'
    );
\ch_reg_reg[6][3][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(16),
      Q => \ch_reg_reg[6][3]_42\(16),
      R => '0'
    );
\ch_reg_reg[6][3][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(17),
      Q => \ch_reg_reg[6][3]_42\(17),
      R => '0'
    );
\ch_reg_reg[6][3][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(18),
      Q => \ch_reg_reg[6][3]_42\(18),
      R => '0'
    );
\ch_reg_reg[6][3][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(19),
      Q => \ch_reg_reg[6][3]_42\(19),
      R => '0'
    );
\ch_reg_reg[6][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(1),
      Q => \ch_reg_reg[6][3]_42\(1),
      R => '0'
    );
\ch_reg_reg[6][3][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(20),
      Q => \ch_reg_reg[6][3]_42\(20),
      R => '0'
    );
\ch_reg_reg[6][3][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(21),
      Q => \ch_reg_reg[6][3]_42\(21),
      R => '0'
    );
\ch_reg_reg[6][3][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(22),
      Q => \ch_reg_reg[6][3]_42\(22),
      R => '0'
    );
\ch_reg_reg[6][3][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(23),
      Q => \ch_reg_reg[6][3]_42\(23),
      R => '0'
    );
\ch_reg_reg[6][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(2),
      Q => \ch_reg_reg[6][3]_42\(2),
      R => '0'
    );
\ch_reg_reg[6][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(3),
      Q => \ch_reg_reg[6][3]_42\(3),
      R => '0'
    );
\ch_reg_reg[6][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(4),
      Q => \ch_reg_reg[6][3]_42\(4),
      R => '0'
    );
\ch_reg_reg[6][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(5),
      Q => \ch_reg_reg[6][3]_42\(5),
      R => '0'
    );
\ch_reg_reg[6][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(6),
      Q => \ch_reg_reg[6][3]_42\(6),
      R => '0'
    );
\ch_reg_reg[6][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(7),
      Q => \ch_reg_reg[6][3]_42\(7),
      R => '0'
    );
\ch_reg_reg[6][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(8),
      Q => \ch_reg_reg[6][3]_42\(8),
      R => '0'
    );
\ch_reg_reg[6][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_18_in(9),
      Q => \ch_reg_reg[6][3]_42\(9),
      R => '0'
    );
\ch_reg_reg[6][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => SDATA6,
      Q => \ch_reg_reg[6][4]_43\(0),
      R => '0'
    );
\ch_reg_reg[6][4][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(10),
      Q => \ch_reg_reg[6][4]_43\(10),
      R => '0'
    );
\ch_reg_reg[6][4][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(11),
      Q => \ch_reg_reg[6][4]_43\(11),
      R => '0'
    );
\ch_reg_reg[6][4][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(12),
      Q => \ch_reg_reg[6][4]_43\(12),
      R => '0'
    );
\ch_reg_reg[6][4][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(13),
      Q => \ch_reg_reg[6][4]_43\(13),
      R => '0'
    );
\ch_reg_reg[6][4][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(14),
      Q => \ch_reg_reg[6][4]_43\(14),
      R => '0'
    );
\ch_reg_reg[6][4][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(15),
      Q => \ch_reg_reg[6][4]_43\(15),
      R => '0'
    );
\ch_reg_reg[6][4][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(16),
      Q => \ch_reg_reg[6][4]_43\(16),
      R => '0'
    );
\ch_reg_reg[6][4][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(17),
      Q => \ch_reg_reg[6][4]_43\(17),
      R => '0'
    );
\ch_reg_reg[6][4][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(18),
      Q => \ch_reg_reg[6][4]_43\(18),
      R => '0'
    );
\ch_reg_reg[6][4][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(19),
      Q => \ch_reg_reg[6][4]_43\(19),
      R => '0'
    );
\ch_reg_reg[6][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(1),
      Q => \ch_reg_reg[6][4]_43\(1),
      R => '0'
    );
\ch_reg_reg[6][4][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(20),
      Q => \ch_reg_reg[6][4]_43\(20),
      R => '0'
    );
\ch_reg_reg[6][4][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(21),
      Q => \ch_reg_reg[6][4]_43\(21),
      R => '0'
    );
\ch_reg_reg[6][4][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(22),
      Q => \ch_reg_reg[6][4]_43\(22),
      R => '0'
    );
\ch_reg_reg[6][4][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(23),
      Q => \ch_reg_reg[6][4]_43\(23),
      R => '0'
    );
\ch_reg_reg[6][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(2),
      Q => \ch_reg_reg[6][4]_43\(2),
      R => '0'
    );
\ch_reg_reg[6][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(3),
      Q => \ch_reg_reg[6][4]_43\(3),
      R => '0'
    );
\ch_reg_reg[6][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(4),
      Q => \ch_reg_reg[6][4]_43\(4),
      R => '0'
    );
\ch_reg_reg[6][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(5),
      Q => \ch_reg_reg[6][4]_43\(5),
      R => '0'
    );
\ch_reg_reg[6][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(6),
      Q => \ch_reg_reg[6][4]_43\(6),
      R => '0'
    );
\ch_reg_reg[6][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(7),
      Q => \ch_reg_reg[6][4]_43\(7),
      R => '0'
    );
\ch_reg_reg[6][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(8),
      Q => \ch_reg_reg[6][4]_43\(8),
      R => '0'
    );
\ch_reg_reg[6][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_18_in(9),
      Q => \ch_reg_reg[6][4]_43\(9),
      R => '0'
    );
\ch_reg_reg[6][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => SDATA6,
      Q => \ch_reg_reg[6][5]_44\(0),
      R => '0'
    );
\ch_reg_reg[6][5][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(10),
      Q => \ch_reg_reg[6][5]_44\(10),
      R => '0'
    );
\ch_reg_reg[6][5][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(11),
      Q => \ch_reg_reg[6][5]_44\(11),
      R => '0'
    );
\ch_reg_reg[6][5][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(12),
      Q => \ch_reg_reg[6][5]_44\(12),
      R => '0'
    );
\ch_reg_reg[6][5][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(13),
      Q => \ch_reg_reg[6][5]_44\(13),
      R => '0'
    );
\ch_reg_reg[6][5][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(14),
      Q => \ch_reg_reg[6][5]_44\(14),
      R => '0'
    );
\ch_reg_reg[6][5][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(15),
      Q => \ch_reg_reg[6][5]_44\(15),
      R => '0'
    );
\ch_reg_reg[6][5][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(16),
      Q => \ch_reg_reg[6][5]_44\(16),
      R => '0'
    );
\ch_reg_reg[6][5][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(17),
      Q => \ch_reg_reg[6][5]_44\(17),
      R => '0'
    );
\ch_reg_reg[6][5][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(18),
      Q => \ch_reg_reg[6][5]_44\(18),
      R => '0'
    );
\ch_reg_reg[6][5][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(19),
      Q => \ch_reg_reg[6][5]_44\(19),
      R => '0'
    );
\ch_reg_reg[6][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(1),
      Q => \ch_reg_reg[6][5]_44\(1),
      R => '0'
    );
\ch_reg_reg[6][5][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(20),
      Q => \ch_reg_reg[6][5]_44\(20),
      R => '0'
    );
\ch_reg_reg[6][5][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(21),
      Q => \ch_reg_reg[6][5]_44\(21),
      R => '0'
    );
\ch_reg_reg[6][5][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(22),
      Q => \ch_reg_reg[6][5]_44\(22),
      R => '0'
    );
\ch_reg_reg[6][5][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(23),
      Q => \ch_reg_reg[6][5]_44\(23),
      R => '0'
    );
\ch_reg_reg[6][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(2),
      Q => \ch_reg_reg[6][5]_44\(2),
      R => '0'
    );
\ch_reg_reg[6][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(3),
      Q => \ch_reg_reg[6][5]_44\(3),
      R => '0'
    );
\ch_reg_reg[6][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(4),
      Q => \ch_reg_reg[6][5]_44\(4),
      R => '0'
    );
\ch_reg_reg[6][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(5),
      Q => \ch_reg_reg[6][5]_44\(5),
      R => '0'
    );
\ch_reg_reg[6][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(6),
      Q => \ch_reg_reg[6][5]_44\(6),
      R => '0'
    );
\ch_reg_reg[6][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(7),
      Q => \ch_reg_reg[6][5]_44\(7),
      R => '0'
    );
\ch_reg_reg[6][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(8),
      Q => \ch_reg_reg[6][5]_44\(8),
      R => '0'
    );
\ch_reg_reg[6][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_18_in(9),
      Q => \ch_reg_reg[6][5]_44\(9),
      R => '0'
    );
\ch_reg_reg[6][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => SDATA6,
      Q => \ch_reg_reg[6][6]_45\(0),
      R => '0'
    );
\ch_reg_reg[6][6][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(10),
      Q => \ch_reg_reg[6][6]_45\(10),
      R => '0'
    );
\ch_reg_reg[6][6][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(11),
      Q => \ch_reg_reg[6][6]_45\(11),
      R => '0'
    );
\ch_reg_reg[6][6][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(12),
      Q => \ch_reg_reg[6][6]_45\(12),
      R => '0'
    );
\ch_reg_reg[6][6][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(13),
      Q => \ch_reg_reg[6][6]_45\(13),
      R => '0'
    );
\ch_reg_reg[6][6][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(14),
      Q => \ch_reg_reg[6][6]_45\(14),
      R => '0'
    );
\ch_reg_reg[6][6][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(15),
      Q => \ch_reg_reg[6][6]_45\(15),
      R => '0'
    );
\ch_reg_reg[6][6][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(16),
      Q => \ch_reg_reg[6][6]_45\(16),
      R => '0'
    );
\ch_reg_reg[6][6][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(17),
      Q => \ch_reg_reg[6][6]_45\(17),
      R => '0'
    );
\ch_reg_reg[6][6][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(18),
      Q => \ch_reg_reg[6][6]_45\(18),
      R => '0'
    );
\ch_reg_reg[6][6][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(19),
      Q => \ch_reg_reg[6][6]_45\(19),
      R => '0'
    );
\ch_reg_reg[6][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(1),
      Q => \ch_reg_reg[6][6]_45\(1),
      R => '0'
    );
\ch_reg_reg[6][6][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(20),
      Q => \ch_reg_reg[6][6]_45\(20),
      R => '0'
    );
\ch_reg_reg[6][6][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(21),
      Q => \ch_reg_reg[6][6]_45\(21),
      R => '0'
    );
\ch_reg_reg[6][6][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(22),
      Q => \ch_reg_reg[6][6]_45\(22),
      R => '0'
    );
\ch_reg_reg[6][6][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(23),
      Q => \ch_reg_reg[6][6]_45\(23),
      R => '0'
    );
\ch_reg_reg[6][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(2),
      Q => \ch_reg_reg[6][6]_45\(2),
      R => '0'
    );
\ch_reg_reg[6][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(3),
      Q => \ch_reg_reg[6][6]_45\(3),
      R => '0'
    );
\ch_reg_reg[6][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(4),
      Q => \ch_reg_reg[6][6]_45\(4),
      R => '0'
    );
\ch_reg_reg[6][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(5),
      Q => \ch_reg_reg[6][6]_45\(5),
      R => '0'
    );
\ch_reg_reg[6][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(6),
      Q => \ch_reg_reg[6][6]_45\(6),
      R => '0'
    );
\ch_reg_reg[6][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(7),
      Q => \ch_reg_reg[6][6]_45\(7),
      R => '0'
    );
\ch_reg_reg[6][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(8),
      Q => \ch_reg_reg[6][6]_45\(8),
      R => '0'
    );
\ch_reg_reg[6][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_18_in(9),
      Q => \ch_reg_reg[6][6]_45\(9),
      R => '0'
    );
\ch_reg_reg[6][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => SDATA6,
      Q => \ch_reg_reg[6][7]_46\(0),
      R => '0'
    );
\ch_reg_reg[6][7][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(10),
      Q => \ch_reg_reg[6][7]_46\(10),
      R => '0'
    );
\ch_reg_reg[6][7][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(11),
      Q => \ch_reg_reg[6][7]_46\(11),
      R => '0'
    );
\ch_reg_reg[6][7][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(12),
      Q => \ch_reg_reg[6][7]_46\(12),
      R => '0'
    );
\ch_reg_reg[6][7][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(13),
      Q => \ch_reg_reg[6][7]_46\(13),
      R => '0'
    );
\ch_reg_reg[6][7][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(14),
      Q => \ch_reg_reg[6][7]_46\(14),
      R => '0'
    );
\ch_reg_reg[6][7][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(15),
      Q => \ch_reg_reg[6][7]_46\(15),
      R => '0'
    );
\ch_reg_reg[6][7][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(16),
      Q => \ch_reg_reg[6][7]_46\(16),
      R => '0'
    );
\ch_reg_reg[6][7][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(17),
      Q => \ch_reg_reg[6][7]_46\(17),
      R => '0'
    );
\ch_reg_reg[6][7][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(18),
      Q => \ch_reg_reg[6][7]_46\(18),
      R => '0'
    );
\ch_reg_reg[6][7][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(19),
      Q => \ch_reg_reg[6][7]_46\(19),
      R => '0'
    );
\ch_reg_reg[6][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(1),
      Q => \ch_reg_reg[6][7]_46\(1),
      R => '0'
    );
\ch_reg_reg[6][7][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(20),
      Q => \ch_reg_reg[6][7]_46\(20),
      R => '0'
    );
\ch_reg_reg[6][7][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(21),
      Q => \ch_reg_reg[6][7]_46\(21),
      R => '0'
    );
\ch_reg_reg[6][7][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(22),
      Q => \ch_reg_reg[6][7]_46\(22),
      R => '0'
    );
\ch_reg_reg[6][7][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(23),
      Q => \ch_reg_reg[6][7]_46\(23),
      R => '0'
    );
\ch_reg_reg[6][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(2),
      Q => \ch_reg_reg[6][7]_46\(2),
      R => '0'
    );
\ch_reg_reg[6][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(3),
      Q => \ch_reg_reg[6][7]_46\(3),
      R => '0'
    );
\ch_reg_reg[6][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(4),
      Q => \ch_reg_reg[6][7]_46\(4),
      R => '0'
    );
\ch_reg_reg[6][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(5),
      Q => \ch_reg_reg[6][7]_46\(5),
      R => '0'
    );
\ch_reg_reg[6][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(6),
      Q => \ch_reg_reg[6][7]_46\(6),
      R => '0'
    );
\ch_reg_reg[6][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(7),
      Q => \ch_reg_reg[6][7]_46\(7),
      R => '0'
    );
\ch_reg_reg[6][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(8),
      Q => \ch_reg_reg[6][7]_46\(8),
      R => '0'
    );
\ch_reg_reg[6][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_18_in(9),
      Q => \ch_reg_reg[6][7]_46\(9),
      R => '0'
    );
\ch_reg_reg[7][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => SDATA7,
      Q => \ch_reg_reg[7][0]_55\(0),
      R => '0'
    );
\ch_reg_reg[7][0][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(10),
      Q => \ch_reg_reg[7][0]_55\(10),
      R => '0'
    );
\ch_reg_reg[7][0][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(11),
      Q => \ch_reg_reg[7][0]_55\(11),
      R => '0'
    );
\ch_reg_reg[7][0][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(12),
      Q => \ch_reg_reg[7][0]_55\(12),
      R => '0'
    );
\ch_reg_reg[7][0][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(13),
      Q => \ch_reg_reg[7][0]_55\(13),
      R => '0'
    );
\ch_reg_reg[7][0][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(14),
      Q => \ch_reg_reg[7][0]_55\(14),
      R => '0'
    );
\ch_reg_reg[7][0][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(15),
      Q => \ch_reg_reg[7][0]_55\(15),
      R => '0'
    );
\ch_reg_reg[7][0][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(16),
      Q => \ch_reg_reg[7][0]_55\(16),
      R => '0'
    );
\ch_reg_reg[7][0][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(17),
      Q => \ch_reg_reg[7][0]_55\(17),
      R => '0'
    );
\ch_reg_reg[7][0][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(18),
      Q => \ch_reg_reg[7][0]_55\(18),
      R => '0'
    );
\ch_reg_reg[7][0][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(19),
      Q => \ch_reg_reg[7][0]_55\(19),
      R => '0'
    );
\ch_reg_reg[7][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(1),
      Q => \ch_reg_reg[7][0]_55\(1),
      R => '0'
    );
\ch_reg_reg[7][0][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(20),
      Q => \ch_reg_reg[7][0]_55\(20),
      R => '0'
    );
\ch_reg_reg[7][0][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(21),
      Q => \ch_reg_reg[7][0]_55\(21),
      R => '0'
    );
\ch_reg_reg[7][0][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(22),
      Q => \ch_reg_reg[7][0]_55\(22),
      R => '0'
    );
\ch_reg_reg[7][0][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(23),
      Q => \ch_reg_reg[7][0]_55\(23),
      R => '0'
    );
\ch_reg_reg[7][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(2),
      Q => \ch_reg_reg[7][0]_55\(2),
      R => '0'
    );
\ch_reg_reg[7][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(3),
      Q => \ch_reg_reg[7][0]_55\(3),
      R => '0'
    );
\ch_reg_reg[7][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(4),
      Q => \ch_reg_reg[7][0]_55\(4),
      R => '0'
    );
\ch_reg_reg[7][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(5),
      Q => \ch_reg_reg[7][0]_55\(5),
      R => '0'
    );
\ch_reg_reg[7][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(6),
      Q => \ch_reg_reg[7][0]_55\(6),
      R => '0'
    );
\ch_reg_reg[7][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(7),
      Q => \ch_reg_reg[7][0]_55\(7),
      R => '0'
    );
\ch_reg_reg[7][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(8),
      Q => \ch_reg_reg[7][0]_55\(8),
      R => '0'
    );
\ch_reg_reg[7][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_9_in(9),
      Q => \ch_reg_reg[7][0]_55\(9),
      R => '0'
    );
\ch_reg_reg[7][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => SDATA7,
      Q => \ch_reg_reg[7][1]_48\(0),
      R => '0'
    );
\ch_reg_reg[7][1][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(10),
      Q => \ch_reg_reg[7][1]_48\(10),
      R => '0'
    );
\ch_reg_reg[7][1][10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][10]_i_2_n_0\,
      I1 => \ch_reg[7][1][10]_i_3_n_0\,
      O => p_9_in(10),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(11),
      Q => \ch_reg_reg[7][1]_48\(11),
      R => '0'
    );
\ch_reg_reg[7][1][11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][11]_i_2_n_0\,
      I1 => \ch_reg[7][1][11]_i_3_n_0\,
      O => p_9_in(11),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(12),
      Q => \ch_reg_reg[7][1]_48\(12),
      R => '0'
    );
\ch_reg_reg[7][1][12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][12]_i_2_n_0\,
      I1 => \ch_reg[7][1][12]_i_3_n_0\,
      O => p_9_in(12),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(13),
      Q => \ch_reg_reg[7][1]_48\(13),
      R => '0'
    );
\ch_reg_reg[7][1][13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][13]_i_2_n_0\,
      I1 => \ch_reg[7][1][13]_i_3_n_0\,
      O => p_9_in(13),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(14),
      Q => \ch_reg_reg[7][1]_48\(14),
      R => '0'
    );
\ch_reg_reg[7][1][14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][14]_i_2_n_0\,
      I1 => \ch_reg[7][1][14]_i_3_n_0\,
      O => p_9_in(14),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(15),
      Q => \ch_reg_reg[7][1]_48\(15),
      R => '0'
    );
\ch_reg_reg[7][1][15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][15]_i_2_n_0\,
      I1 => \ch_reg[7][1][15]_i_3_n_0\,
      O => p_9_in(15),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(16),
      Q => \ch_reg_reg[7][1]_48\(16),
      R => '0'
    );
\ch_reg_reg[7][1][16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][16]_i_2_n_0\,
      I1 => \ch_reg[7][1][16]_i_3_n_0\,
      O => p_9_in(16),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(17),
      Q => \ch_reg_reg[7][1]_48\(17),
      R => '0'
    );
\ch_reg_reg[7][1][17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][17]_i_2_n_0\,
      I1 => \ch_reg[7][1][17]_i_3_n_0\,
      O => p_9_in(17),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(18),
      Q => \ch_reg_reg[7][1]_48\(18),
      R => '0'
    );
\ch_reg_reg[7][1][18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][18]_i_2_n_0\,
      I1 => \ch_reg[7][1][18]_i_3_n_0\,
      O => p_9_in(18),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(19),
      Q => \ch_reg_reg[7][1]_48\(19),
      R => '0'
    );
\ch_reg_reg[7][1][19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][19]_i_2_n_0\,
      I1 => \ch_reg[7][1][19]_i_3_n_0\,
      O => p_9_in(19),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(1),
      Q => \ch_reg_reg[7][1]_48\(1),
      R => '0'
    );
\ch_reg_reg[7][1][1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][1]_i_2_n_0\,
      I1 => \ch_reg[7][1][1]_i_3_n_0\,
      O => p_9_in(1),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(20),
      Q => \ch_reg_reg[7][1]_48\(20),
      R => '0'
    );
\ch_reg_reg[7][1][20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][20]_i_2_n_0\,
      I1 => \ch_reg[7][1][20]_i_3_n_0\,
      O => p_9_in(20),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(21),
      Q => \ch_reg_reg[7][1]_48\(21),
      R => '0'
    );
\ch_reg_reg[7][1][21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][21]_i_2_n_0\,
      I1 => \ch_reg[7][1][21]_i_3_n_0\,
      O => p_9_in(21),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(22),
      Q => \ch_reg_reg[7][1]_48\(22),
      R => '0'
    );
\ch_reg_reg[7][1][22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][22]_i_2_n_0\,
      I1 => \ch_reg[7][1][22]_i_3_n_0\,
      O => p_9_in(22),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(23),
      Q => \ch_reg_reg[7][1]_48\(23),
      R => '0'
    );
\ch_reg_reg[7][1][23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][23]_i_2_n_0\,
      I1 => \ch_reg[7][1][23]_i_3_n_0\,
      O => p_9_in(23),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(2),
      Q => \ch_reg_reg[7][1]_48\(2),
      R => '0'
    );
\ch_reg_reg[7][1][2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][2]_i_2_n_0\,
      I1 => \ch_reg[7][1][2]_i_3_n_0\,
      O => p_9_in(2),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(3),
      Q => \ch_reg_reg[7][1]_48\(3),
      R => '0'
    );
\ch_reg_reg[7][1][3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][3]_i_2_n_0\,
      I1 => \ch_reg[7][1][3]_i_3_n_0\,
      O => p_9_in(3),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(4),
      Q => \ch_reg_reg[7][1]_48\(4),
      R => '0'
    );
\ch_reg_reg[7][1][4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][4]_i_2_n_0\,
      I1 => \ch_reg[7][1][4]_i_3_n_0\,
      O => p_9_in(4),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(5),
      Q => \ch_reg_reg[7][1]_48\(5),
      R => '0'
    );
\ch_reg_reg[7][1][5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][5]_i_2_n_0\,
      I1 => \ch_reg[7][1][5]_i_3_n_0\,
      O => p_9_in(5),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(6),
      Q => \ch_reg_reg[7][1]_48\(6),
      R => '0'
    );
\ch_reg_reg[7][1][6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][6]_i_2_n_0\,
      I1 => \ch_reg[7][1][6]_i_3_n_0\,
      O => p_9_in(6),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(7),
      Q => \ch_reg_reg[7][1]_48\(7),
      R => '0'
    );
\ch_reg_reg[7][1][7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][7]_i_2_n_0\,
      I1 => \ch_reg[7][1][7]_i_3_n_0\,
      O => p_9_in(7),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(8),
      Q => \ch_reg_reg[7][1]_48\(8),
      R => '0'
    );
\ch_reg_reg[7][1][8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][8]_i_2_n_0\,
      I1 => \ch_reg[7][1][8]_i_3_n_0\,
      O => p_9_in(8),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_9_in(9),
      Q => \ch_reg_reg[7][1]_48\(9),
      R => '0'
    );
\ch_reg_reg[7][1][9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[7][1][9]_i_2_n_0\,
      I1 => \ch_reg[7][1][9]_i_3_n_0\,
      O => p_9_in(9),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[7][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => SDATA7,
      Q => \ch_reg_reg[7][2]_49\(0),
      R => '0'
    );
\ch_reg_reg[7][2][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(10),
      Q => \ch_reg_reg[7][2]_49\(10),
      R => '0'
    );
\ch_reg_reg[7][2][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(11),
      Q => \ch_reg_reg[7][2]_49\(11),
      R => '0'
    );
\ch_reg_reg[7][2][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(12),
      Q => \ch_reg_reg[7][2]_49\(12),
      R => '0'
    );
\ch_reg_reg[7][2][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(13),
      Q => \ch_reg_reg[7][2]_49\(13),
      R => '0'
    );
\ch_reg_reg[7][2][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(14),
      Q => \ch_reg_reg[7][2]_49\(14),
      R => '0'
    );
\ch_reg_reg[7][2][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(15),
      Q => \ch_reg_reg[7][2]_49\(15),
      R => '0'
    );
\ch_reg_reg[7][2][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(16),
      Q => \ch_reg_reg[7][2]_49\(16),
      R => '0'
    );
\ch_reg_reg[7][2][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(17),
      Q => \ch_reg_reg[7][2]_49\(17),
      R => '0'
    );
\ch_reg_reg[7][2][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(18),
      Q => \ch_reg_reg[7][2]_49\(18),
      R => '0'
    );
\ch_reg_reg[7][2][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(19),
      Q => \ch_reg_reg[7][2]_49\(19),
      R => '0'
    );
\ch_reg_reg[7][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(1),
      Q => \ch_reg_reg[7][2]_49\(1),
      R => '0'
    );
\ch_reg_reg[7][2][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(20),
      Q => \ch_reg_reg[7][2]_49\(20),
      R => '0'
    );
\ch_reg_reg[7][2][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(21),
      Q => \ch_reg_reg[7][2]_49\(21),
      R => '0'
    );
\ch_reg_reg[7][2][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(22),
      Q => \ch_reg_reg[7][2]_49\(22),
      R => '0'
    );
\ch_reg_reg[7][2][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(23),
      Q => \ch_reg_reg[7][2]_49\(23),
      R => '0'
    );
\ch_reg_reg[7][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(2),
      Q => \ch_reg_reg[7][2]_49\(2),
      R => '0'
    );
\ch_reg_reg[7][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(3),
      Q => \ch_reg_reg[7][2]_49\(3),
      R => '0'
    );
\ch_reg_reg[7][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(4),
      Q => \ch_reg_reg[7][2]_49\(4),
      R => '0'
    );
\ch_reg_reg[7][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(5),
      Q => \ch_reg_reg[7][2]_49\(5),
      R => '0'
    );
\ch_reg_reg[7][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(6),
      Q => \ch_reg_reg[7][2]_49\(6),
      R => '0'
    );
\ch_reg_reg[7][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(7),
      Q => \ch_reg_reg[7][2]_49\(7),
      R => '0'
    );
\ch_reg_reg[7][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(8),
      Q => \ch_reg_reg[7][2]_49\(8),
      R => '0'
    );
\ch_reg_reg[7][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_9_in(9),
      Q => \ch_reg_reg[7][2]_49\(9),
      R => '0'
    );
\ch_reg_reg[7][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => SDATA7,
      Q => \ch_reg_reg[7][3]_50\(0),
      R => '0'
    );
\ch_reg_reg[7][3][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(10),
      Q => \ch_reg_reg[7][3]_50\(10),
      R => '0'
    );
\ch_reg_reg[7][3][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(11),
      Q => \ch_reg_reg[7][3]_50\(11),
      R => '0'
    );
\ch_reg_reg[7][3][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(12),
      Q => \ch_reg_reg[7][3]_50\(12),
      R => '0'
    );
\ch_reg_reg[7][3][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(13),
      Q => \ch_reg_reg[7][3]_50\(13),
      R => '0'
    );
\ch_reg_reg[7][3][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(14),
      Q => \ch_reg_reg[7][3]_50\(14),
      R => '0'
    );
\ch_reg_reg[7][3][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(15),
      Q => \ch_reg_reg[7][3]_50\(15),
      R => '0'
    );
\ch_reg_reg[7][3][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(16),
      Q => \ch_reg_reg[7][3]_50\(16),
      R => '0'
    );
\ch_reg_reg[7][3][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(17),
      Q => \ch_reg_reg[7][3]_50\(17),
      R => '0'
    );
\ch_reg_reg[7][3][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(18),
      Q => \ch_reg_reg[7][3]_50\(18),
      R => '0'
    );
\ch_reg_reg[7][3][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(19),
      Q => \ch_reg_reg[7][3]_50\(19),
      R => '0'
    );
\ch_reg_reg[7][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(1),
      Q => \ch_reg_reg[7][3]_50\(1),
      R => '0'
    );
\ch_reg_reg[7][3][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(20),
      Q => \ch_reg_reg[7][3]_50\(20),
      R => '0'
    );
\ch_reg_reg[7][3][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(21),
      Q => \ch_reg_reg[7][3]_50\(21),
      R => '0'
    );
\ch_reg_reg[7][3][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(22),
      Q => \ch_reg_reg[7][3]_50\(22),
      R => '0'
    );
\ch_reg_reg[7][3][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(23),
      Q => \ch_reg_reg[7][3]_50\(23),
      R => '0'
    );
\ch_reg_reg[7][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(2),
      Q => \ch_reg_reg[7][3]_50\(2),
      R => '0'
    );
\ch_reg_reg[7][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(3),
      Q => \ch_reg_reg[7][3]_50\(3),
      R => '0'
    );
\ch_reg_reg[7][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(4),
      Q => \ch_reg_reg[7][3]_50\(4),
      R => '0'
    );
\ch_reg_reg[7][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(5),
      Q => \ch_reg_reg[7][3]_50\(5),
      R => '0'
    );
\ch_reg_reg[7][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(6),
      Q => \ch_reg_reg[7][3]_50\(6),
      R => '0'
    );
\ch_reg_reg[7][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(7),
      Q => \ch_reg_reg[7][3]_50\(7),
      R => '0'
    );
\ch_reg_reg[7][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(8),
      Q => \ch_reg_reg[7][3]_50\(8),
      R => '0'
    );
\ch_reg_reg[7][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_9_in(9),
      Q => \ch_reg_reg[7][3]_50\(9),
      R => '0'
    );
\ch_reg_reg[7][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => SDATA7,
      Q => \ch_reg_reg[7][4]_51\(0),
      R => '0'
    );
\ch_reg_reg[7][4][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(10),
      Q => \ch_reg_reg[7][4]_51\(10),
      R => '0'
    );
\ch_reg_reg[7][4][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(11),
      Q => \ch_reg_reg[7][4]_51\(11),
      R => '0'
    );
\ch_reg_reg[7][4][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(12),
      Q => \ch_reg_reg[7][4]_51\(12),
      R => '0'
    );
\ch_reg_reg[7][4][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(13),
      Q => \ch_reg_reg[7][4]_51\(13),
      R => '0'
    );
\ch_reg_reg[7][4][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(14),
      Q => \ch_reg_reg[7][4]_51\(14),
      R => '0'
    );
\ch_reg_reg[7][4][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(15),
      Q => \ch_reg_reg[7][4]_51\(15),
      R => '0'
    );
\ch_reg_reg[7][4][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(16),
      Q => \ch_reg_reg[7][4]_51\(16),
      R => '0'
    );
\ch_reg_reg[7][4][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(17),
      Q => \ch_reg_reg[7][4]_51\(17),
      R => '0'
    );
\ch_reg_reg[7][4][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(18),
      Q => \ch_reg_reg[7][4]_51\(18),
      R => '0'
    );
\ch_reg_reg[7][4][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(19),
      Q => \ch_reg_reg[7][4]_51\(19),
      R => '0'
    );
\ch_reg_reg[7][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(1),
      Q => \ch_reg_reg[7][4]_51\(1),
      R => '0'
    );
\ch_reg_reg[7][4][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(20),
      Q => \ch_reg_reg[7][4]_51\(20),
      R => '0'
    );
\ch_reg_reg[7][4][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(21),
      Q => \ch_reg_reg[7][4]_51\(21),
      R => '0'
    );
\ch_reg_reg[7][4][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(22),
      Q => \ch_reg_reg[7][4]_51\(22),
      R => '0'
    );
\ch_reg_reg[7][4][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(23),
      Q => \ch_reg_reg[7][4]_51\(23),
      R => '0'
    );
\ch_reg_reg[7][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(2),
      Q => \ch_reg_reg[7][4]_51\(2),
      R => '0'
    );
\ch_reg_reg[7][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(3),
      Q => \ch_reg_reg[7][4]_51\(3),
      R => '0'
    );
\ch_reg_reg[7][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(4),
      Q => \ch_reg_reg[7][4]_51\(4),
      R => '0'
    );
\ch_reg_reg[7][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(5),
      Q => \ch_reg_reg[7][4]_51\(5),
      R => '0'
    );
\ch_reg_reg[7][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(6),
      Q => \ch_reg_reg[7][4]_51\(6),
      R => '0'
    );
\ch_reg_reg[7][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(7),
      Q => \ch_reg_reg[7][4]_51\(7),
      R => '0'
    );
\ch_reg_reg[7][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(8),
      Q => \ch_reg_reg[7][4]_51\(8),
      R => '0'
    );
\ch_reg_reg[7][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_9_in(9),
      Q => \ch_reg_reg[7][4]_51\(9),
      R => '0'
    );
\ch_reg_reg[7][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => SDATA7,
      Q => \ch_reg_reg[7][5]_52\(0),
      R => '0'
    );
\ch_reg_reg[7][5][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(10),
      Q => \ch_reg_reg[7][5]_52\(10),
      R => '0'
    );
\ch_reg_reg[7][5][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(11),
      Q => \ch_reg_reg[7][5]_52\(11),
      R => '0'
    );
\ch_reg_reg[7][5][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(12),
      Q => \ch_reg_reg[7][5]_52\(12),
      R => '0'
    );
\ch_reg_reg[7][5][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(13),
      Q => \ch_reg_reg[7][5]_52\(13),
      R => '0'
    );
\ch_reg_reg[7][5][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(14),
      Q => \ch_reg_reg[7][5]_52\(14),
      R => '0'
    );
\ch_reg_reg[7][5][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(15),
      Q => \ch_reg_reg[7][5]_52\(15),
      R => '0'
    );
\ch_reg_reg[7][5][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(16),
      Q => \ch_reg_reg[7][5]_52\(16),
      R => '0'
    );
\ch_reg_reg[7][5][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(17),
      Q => \ch_reg_reg[7][5]_52\(17),
      R => '0'
    );
\ch_reg_reg[7][5][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(18),
      Q => \ch_reg_reg[7][5]_52\(18),
      R => '0'
    );
\ch_reg_reg[7][5][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(19),
      Q => \ch_reg_reg[7][5]_52\(19),
      R => '0'
    );
\ch_reg_reg[7][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(1),
      Q => \ch_reg_reg[7][5]_52\(1),
      R => '0'
    );
\ch_reg_reg[7][5][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(20),
      Q => \ch_reg_reg[7][5]_52\(20),
      R => '0'
    );
\ch_reg_reg[7][5][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(21),
      Q => \ch_reg_reg[7][5]_52\(21),
      R => '0'
    );
\ch_reg_reg[7][5][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(22),
      Q => \ch_reg_reg[7][5]_52\(22),
      R => '0'
    );
\ch_reg_reg[7][5][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(23),
      Q => \ch_reg_reg[7][5]_52\(23),
      R => '0'
    );
\ch_reg_reg[7][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(2),
      Q => \ch_reg_reg[7][5]_52\(2),
      R => '0'
    );
\ch_reg_reg[7][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(3),
      Q => \ch_reg_reg[7][5]_52\(3),
      R => '0'
    );
\ch_reg_reg[7][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(4),
      Q => \ch_reg_reg[7][5]_52\(4),
      R => '0'
    );
\ch_reg_reg[7][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(5),
      Q => \ch_reg_reg[7][5]_52\(5),
      R => '0'
    );
\ch_reg_reg[7][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(6),
      Q => \ch_reg_reg[7][5]_52\(6),
      R => '0'
    );
\ch_reg_reg[7][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(7),
      Q => \ch_reg_reg[7][5]_52\(7),
      R => '0'
    );
\ch_reg_reg[7][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(8),
      Q => \ch_reg_reg[7][5]_52\(8),
      R => '0'
    );
\ch_reg_reg[7][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_9_in(9),
      Q => \ch_reg_reg[7][5]_52\(9),
      R => '0'
    );
\ch_reg_reg[7][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => SDATA7,
      Q => \ch_reg_reg[7][6]_53\(0),
      R => '0'
    );
\ch_reg_reg[7][6][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(10),
      Q => \ch_reg_reg[7][6]_53\(10),
      R => '0'
    );
\ch_reg_reg[7][6][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(11),
      Q => \ch_reg_reg[7][6]_53\(11),
      R => '0'
    );
\ch_reg_reg[7][6][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(12),
      Q => \ch_reg_reg[7][6]_53\(12),
      R => '0'
    );
\ch_reg_reg[7][6][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(13),
      Q => \ch_reg_reg[7][6]_53\(13),
      R => '0'
    );
\ch_reg_reg[7][6][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(14),
      Q => \ch_reg_reg[7][6]_53\(14),
      R => '0'
    );
\ch_reg_reg[7][6][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(15),
      Q => \ch_reg_reg[7][6]_53\(15),
      R => '0'
    );
\ch_reg_reg[7][6][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(16),
      Q => \ch_reg_reg[7][6]_53\(16),
      R => '0'
    );
\ch_reg_reg[7][6][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(17),
      Q => \ch_reg_reg[7][6]_53\(17),
      R => '0'
    );
\ch_reg_reg[7][6][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(18),
      Q => \ch_reg_reg[7][6]_53\(18),
      R => '0'
    );
\ch_reg_reg[7][6][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(19),
      Q => \ch_reg_reg[7][6]_53\(19),
      R => '0'
    );
\ch_reg_reg[7][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(1),
      Q => \ch_reg_reg[7][6]_53\(1),
      R => '0'
    );
\ch_reg_reg[7][6][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(20),
      Q => \ch_reg_reg[7][6]_53\(20),
      R => '0'
    );
\ch_reg_reg[7][6][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(21),
      Q => \ch_reg_reg[7][6]_53\(21),
      R => '0'
    );
\ch_reg_reg[7][6][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(22),
      Q => \ch_reg_reg[7][6]_53\(22),
      R => '0'
    );
\ch_reg_reg[7][6][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(23),
      Q => \ch_reg_reg[7][6]_53\(23),
      R => '0'
    );
\ch_reg_reg[7][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(2),
      Q => \ch_reg_reg[7][6]_53\(2),
      R => '0'
    );
\ch_reg_reg[7][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(3),
      Q => \ch_reg_reg[7][6]_53\(3),
      R => '0'
    );
\ch_reg_reg[7][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(4),
      Q => \ch_reg_reg[7][6]_53\(4),
      R => '0'
    );
\ch_reg_reg[7][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(5),
      Q => \ch_reg_reg[7][6]_53\(5),
      R => '0'
    );
\ch_reg_reg[7][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(6),
      Q => \ch_reg_reg[7][6]_53\(6),
      R => '0'
    );
\ch_reg_reg[7][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(7),
      Q => \ch_reg_reg[7][6]_53\(7),
      R => '0'
    );
\ch_reg_reg[7][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(8),
      Q => \ch_reg_reg[7][6]_53\(8),
      R => '0'
    );
\ch_reg_reg[7][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_9_in(9),
      Q => \ch_reg_reg[7][6]_53\(9),
      R => '0'
    );
\ch_reg_reg[7][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => SDATA7,
      Q => \ch_reg_reg[7][7]_54\(0),
      R => '0'
    );
\ch_reg_reg[7][7][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(10),
      Q => \ch_reg_reg[7][7]_54\(10),
      R => '0'
    );
\ch_reg_reg[7][7][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(11),
      Q => \ch_reg_reg[7][7]_54\(11),
      R => '0'
    );
\ch_reg_reg[7][7][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(12),
      Q => \ch_reg_reg[7][7]_54\(12),
      R => '0'
    );
\ch_reg_reg[7][7][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(13),
      Q => \ch_reg_reg[7][7]_54\(13),
      R => '0'
    );
\ch_reg_reg[7][7][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(14),
      Q => \ch_reg_reg[7][7]_54\(14),
      R => '0'
    );
\ch_reg_reg[7][7][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(15),
      Q => \ch_reg_reg[7][7]_54\(15),
      R => '0'
    );
\ch_reg_reg[7][7][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(16),
      Q => \ch_reg_reg[7][7]_54\(16),
      R => '0'
    );
\ch_reg_reg[7][7][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(17),
      Q => \ch_reg_reg[7][7]_54\(17),
      R => '0'
    );
\ch_reg_reg[7][7][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(18),
      Q => \ch_reg_reg[7][7]_54\(18),
      R => '0'
    );
\ch_reg_reg[7][7][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(19),
      Q => \ch_reg_reg[7][7]_54\(19),
      R => '0'
    );
\ch_reg_reg[7][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(1),
      Q => \ch_reg_reg[7][7]_54\(1),
      R => '0'
    );
\ch_reg_reg[7][7][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(20),
      Q => \ch_reg_reg[7][7]_54\(20),
      R => '0'
    );
\ch_reg_reg[7][7][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(21),
      Q => \ch_reg_reg[7][7]_54\(21),
      R => '0'
    );
\ch_reg_reg[7][7][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(22),
      Q => \ch_reg_reg[7][7]_54\(22),
      R => '0'
    );
\ch_reg_reg[7][7][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(23),
      Q => \ch_reg_reg[7][7]_54\(23),
      R => '0'
    );
\ch_reg_reg[7][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(2),
      Q => \ch_reg_reg[7][7]_54\(2),
      R => '0'
    );
\ch_reg_reg[7][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(3),
      Q => \ch_reg_reg[7][7]_54\(3),
      R => '0'
    );
\ch_reg_reg[7][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(4),
      Q => \ch_reg_reg[7][7]_54\(4),
      R => '0'
    );
\ch_reg_reg[7][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(5),
      Q => \ch_reg_reg[7][7]_54\(5),
      R => '0'
    );
\ch_reg_reg[7][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(6),
      Q => \ch_reg_reg[7][7]_54\(6),
      R => '0'
    );
\ch_reg_reg[7][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(7),
      Q => \ch_reg_reg[7][7]_54\(7),
      R => '0'
    );
\ch_reg_reg[7][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(8),
      Q => \ch_reg_reg[7][7]_54\(8),
      R => '0'
    );
\ch_reg_reg[7][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_9_in(9),
      Q => \ch_reg_reg[7][7]_54\(9),
      R => '0'
    );
\ch_reg_reg[8][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => SDATA8,
      Q => \ch_reg_reg[8][0]_63\(0),
      R => '0'
    );
\ch_reg_reg[8][0][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(10),
      Q => \ch_reg_reg[8][0]_63\(10),
      R => '0'
    );
\ch_reg_reg[8][0][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(11),
      Q => \ch_reg_reg[8][0]_63\(11),
      R => '0'
    );
\ch_reg_reg[8][0][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(12),
      Q => \ch_reg_reg[8][0]_63\(12),
      R => '0'
    );
\ch_reg_reg[8][0][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(13),
      Q => \ch_reg_reg[8][0]_63\(13),
      R => '0'
    );
\ch_reg_reg[8][0][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(14),
      Q => \ch_reg_reg[8][0]_63\(14),
      R => '0'
    );
\ch_reg_reg[8][0][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(15),
      Q => \ch_reg_reg[8][0]_63\(15),
      R => '0'
    );
\ch_reg_reg[8][0][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(16),
      Q => \ch_reg_reg[8][0]_63\(16),
      R => '0'
    );
\ch_reg_reg[8][0][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(17),
      Q => \ch_reg_reg[8][0]_63\(17),
      R => '0'
    );
\ch_reg_reg[8][0][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(18),
      Q => \ch_reg_reg[8][0]_63\(18),
      R => '0'
    );
\ch_reg_reg[8][0][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(19),
      Q => \ch_reg_reg[8][0]_63\(19),
      R => '0'
    );
\ch_reg_reg[8][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(1),
      Q => \ch_reg_reg[8][0]_63\(1),
      R => '0'
    );
\ch_reg_reg[8][0][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(20),
      Q => \ch_reg_reg[8][0]_63\(20),
      R => '0'
    );
\ch_reg_reg[8][0][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(21),
      Q => \ch_reg_reg[8][0]_63\(21),
      R => '0'
    );
\ch_reg_reg[8][0][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(22),
      Q => \ch_reg_reg[8][0]_63\(22),
      R => '0'
    );
\ch_reg_reg[8][0][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(23),
      Q => \ch_reg_reg[8][0]_63\(23),
      R => '0'
    );
\ch_reg_reg[8][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(2),
      Q => \ch_reg_reg[8][0]_63\(2),
      R => '0'
    );
\ch_reg_reg[8][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(3),
      Q => \ch_reg_reg[8][0]_63\(3),
      R => '0'
    );
\ch_reg_reg[8][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(4),
      Q => \ch_reg_reg[8][0]_63\(4),
      R => '0'
    );
\ch_reg_reg[8][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(5),
      Q => \ch_reg_reg[8][0]_63\(5),
      R => '0'
    );
\ch_reg_reg[8][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(6),
      Q => \ch_reg_reg[8][0]_63\(6),
      R => '0'
    );
\ch_reg_reg[8][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(7),
      Q => \ch_reg_reg[8][0]_63\(7),
      R => '0'
    );
\ch_reg_reg[8][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(8),
      Q => \ch_reg_reg[8][0]_63\(8),
      R => '0'
    );
\ch_reg_reg[8][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][0][23]_i_1_n_0\,
      D => p_0_in_64(9),
      Q => \ch_reg_reg[8][0]_63\(9),
      R => '0'
    );
\ch_reg_reg[8][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => SDATA8,
      Q => \ch_reg_reg[8][1]_56\(0),
      R => '0'
    );
\ch_reg_reg[8][1][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(10),
      Q => \ch_reg_reg[8][1]_56\(10),
      R => '0'
    );
\ch_reg_reg[8][1][10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][10]_i_2_n_0\,
      I1 => \ch_reg[8][1][10]_i_3_n_0\,
      O => p_0_in_64(10),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(11),
      Q => \ch_reg_reg[8][1]_56\(11),
      R => '0'
    );
\ch_reg_reg[8][1][11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][11]_i_2_n_0\,
      I1 => \ch_reg[8][1][11]_i_3_n_0\,
      O => p_0_in_64(11),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(12),
      Q => \ch_reg_reg[8][1]_56\(12),
      R => '0'
    );
\ch_reg_reg[8][1][12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][12]_i_2_n_0\,
      I1 => \ch_reg[8][1][12]_i_3_n_0\,
      O => p_0_in_64(12),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(13),
      Q => \ch_reg_reg[8][1]_56\(13),
      R => '0'
    );
\ch_reg_reg[8][1][13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][13]_i_2_n_0\,
      I1 => \ch_reg[8][1][13]_i_3_n_0\,
      O => p_0_in_64(13),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(14),
      Q => \ch_reg_reg[8][1]_56\(14),
      R => '0'
    );
\ch_reg_reg[8][1][14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][14]_i_2_n_0\,
      I1 => \ch_reg[8][1][14]_i_3_n_0\,
      O => p_0_in_64(14),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(15),
      Q => \ch_reg_reg[8][1]_56\(15),
      R => '0'
    );
\ch_reg_reg[8][1][15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][15]_i_2_n_0\,
      I1 => \ch_reg[8][1][15]_i_3_n_0\,
      O => p_0_in_64(15),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(16),
      Q => \ch_reg_reg[8][1]_56\(16),
      R => '0'
    );
\ch_reg_reg[8][1][16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][16]_i_2_n_0\,
      I1 => \ch_reg[8][1][16]_i_3_n_0\,
      O => p_0_in_64(16),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(17),
      Q => \ch_reg_reg[8][1]_56\(17),
      R => '0'
    );
\ch_reg_reg[8][1][17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][17]_i_2_n_0\,
      I1 => \ch_reg[8][1][17]_i_3_n_0\,
      O => p_0_in_64(17),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(18),
      Q => \ch_reg_reg[8][1]_56\(18),
      R => '0'
    );
\ch_reg_reg[8][1][18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][18]_i_2_n_0\,
      I1 => \ch_reg[8][1][18]_i_3_n_0\,
      O => p_0_in_64(18),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(19),
      Q => \ch_reg_reg[8][1]_56\(19),
      R => '0'
    );
\ch_reg_reg[8][1][19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][19]_i_2_n_0\,
      I1 => \ch_reg[8][1][19]_i_3_n_0\,
      O => p_0_in_64(19),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(1),
      Q => \ch_reg_reg[8][1]_56\(1),
      R => '0'
    );
\ch_reg_reg[8][1][1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][1]_i_2_n_0\,
      I1 => \ch_reg[8][1][1]_i_3_n_0\,
      O => p_0_in_64(1),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(20),
      Q => \ch_reg_reg[8][1]_56\(20),
      R => '0'
    );
\ch_reg_reg[8][1][20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][20]_i_2_n_0\,
      I1 => \ch_reg[8][1][20]_i_3_n_0\,
      O => p_0_in_64(20),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(21),
      Q => \ch_reg_reg[8][1]_56\(21),
      R => '0'
    );
\ch_reg_reg[8][1][21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][21]_i_2_n_0\,
      I1 => \ch_reg[8][1][21]_i_3_n_0\,
      O => p_0_in_64(21),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(22),
      Q => \ch_reg_reg[8][1]_56\(22),
      R => '0'
    );
\ch_reg_reg[8][1][22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][22]_i_2_n_0\,
      I1 => \ch_reg[8][1][22]_i_3_n_0\,
      O => p_0_in_64(22),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(23),
      Q => \ch_reg_reg[8][1]_56\(23),
      R => '0'
    );
\ch_reg_reg[8][1][23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][23]_i_2_n_0\,
      I1 => \ch_reg[8][1][23]_i_3_n_0\,
      O => p_0_in_64(23),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(2),
      Q => \ch_reg_reg[8][1]_56\(2),
      R => '0'
    );
\ch_reg_reg[8][1][2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][2]_i_2_n_0\,
      I1 => \ch_reg[8][1][2]_i_3_n_0\,
      O => p_0_in_64(2),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(3),
      Q => \ch_reg_reg[8][1]_56\(3),
      R => '0'
    );
\ch_reg_reg[8][1][3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][3]_i_2_n_0\,
      I1 => \ch_reg[8][1][3]_i_3_n_0\,
      O => p_0_in_64(3),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(4),
      Q => \ch_reg_reg[8][1]_56\(4),
      R => '0'
    );
\ch_reg_reg[8][1][4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][4]_i_2_n_0\,
      I1 => \ch_reg[8][1][4]_i_3_n_0\,
      O => p_0_in_64(4),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(5),
      Q => \ch_reg_reg[8][1]_56\(5),
      R => '0'
    );
\ch_reg_reg[8][1][5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][5]_i_2_n_0\,
      I1 => \ch_reg[8][1][5]_i_3_n_0\,
      O => p_0_in_64(5),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(6),
      Q => \ch_reg_reg[8][1]_56\(6),
      R => '0'
    );
\ch_reg_reg[8][1][6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][6]_i_2_n_0\,
      I1 => \ch_reg[8][1][6]_i_3_n_0\,
      O => p_0_in_64(6),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(7),
      Q => \ch_reg_reg[8][1]_56\(7),
      R => '0'
    );
\ch_reg_reg[8][1][7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][7]_i_2_n_0\,
      I1 => \ch_reg[8][1][7]_i_3_n_0\,
      O => p_0_in_64(7),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(8),
      Q => \ch_reg_reg[8][1]_56\(8),
      R => '0'
    );
\ch_reg_reg[8][1][8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][8]_i_2_n_0\,
      I1 => \ch_reg[8][1][8]_i_3_n_0\,
      O => p_0_in_64(8),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][1][23]_i_1_n_0\,
      D => p_0_in_64(9),
      Q => \ch_reg_reg[8][1]_56\(9),
      R => '0'
    );
\ch_reg_reg[8][1][9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ch_reg[8][1][9]_i_2_n_0\,
      I1 => \ch_reg[8][1][9]_i_3_n_0\,
      O => p_0_in_64(9),
      S => \^bit_cnt\(5)
    );
\ch_reg_reg[8][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => SDATA8,
      Q => \ch_reg_reg[8][2]_57\(0),
      R => '0'
    );
\ch_reg_reg[8][2][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(10),
      Q => \ch_reg_reg[8][2]_57\(10),
      R => '0'
    );
\ch_reg_reg[8][2][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(11),
      Q => \ch_reg_reg[8][2]_57\(11),
      R => '0'
    );
\ch_reg_reg[8][2][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(12),
      Q => \ch_reg_reg[8][2]_57\(12),
      R => '0'
    );
\ch_reg_reg[8][2][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(13),
      Q => \ch_reg_reg[8][2]_57\(13),
      R => '0'
    );
\ch_reg_reg[8][2][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(14),
      Q => \ch_reg_reg[8][2]_57\(14),
      R => '0'
    );
\ch_reg_reg[8][2][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(15),
      Q => \ch_reg_reg[8][2]_57\(15),
      R => '0'
    );
\ch_reg_reg[8][2][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(16),
      Q => \ch_reg_reg[8][2]_57\(16),
      R => '0'
    );
\ch_reg_reg[8][2][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(17),
      Q => \ch_reg_reg[8][2]_57\(17),
      R => '0'
    );
\ch_reg_reg[8][2][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(18),
      Q => \ch_reg_reg[8][2]_57\(18),
      R => '0'
    );
\ch_reg_reg[8][2][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(19),
      Q => \ch_reg_reg[8][2]_57\(19),
      R => '0'
    );
\ch_reg_reg[8][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(1),
      Q => \ch_reg_reg[8][2]_57\(1),
      R => '0'
    );
\ch_reg_reg[8][2][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(20),
      Q => \ch_reg_reg[8][2]_57\(20),
      R => '0'
    );
\ch_reg_reg[8][2][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(21),
      Q => \ch_reg_reg[8][2]_57\(21),
      R => '0'
    );
\ch_reg_reg[8][2][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(22),
      Q => \ch_reg_reg[8][2]_57\(22),
      R => '0'
    );
\ch_reg_reg[8][2][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(23),
      Q => \ch_reg_reg[8][2]_57\(23),
      R => '0'
    );
\ch_reg_reg[8][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(2),
      Q => \ch_reg_reg[8][2]_57\(2),
      R => '0'
    );
\ch_reg_reg[8][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(3),
      Q => \ch_reg_reg[8][2]_57\(3),
      R => '0'
    );
\ch_reg_reg[8][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(4),
      Q => \ch_reg_reg[8][2]_57\(4),
      R => '0'
    );
\ch_reg_reg[8][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(5),
      Q => \ch_reg_reg[8][2]_57\(5),
      R => '0'
    );
\ch_reg_reg[8][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(6),
      Q => \ch_reg_reg[8][2]_57\(6),
      R => '0'
    );
\ch_reg_reg[8][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(7),
      Q => \ch_reg_reg[8][2]_57\(7),
      R => '0'
    );
\ch_reg_reg[8][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(8),
      Q => \ch_reg_reg[8][2]_57\(8),
      R => '0'
    );
\ch_reg_reg[8][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][2][23]_i_1_n_0\,
      D => p_0_in_64(9),
      Q => \ch_reg_reg[8][2]_57\(9),
      R => '0'
    );
\ch_reg_reg[8][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => SDATA8,
      Q => \ch_reg_reg[8][3]_58\(0),
      R => '0'
    );
\ch_reg_reg[8][3][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(10),
      Q => \ch_reg_reg[8][3]_58\(10),
      R => '0'
    );
\ch_reg_reg[8][3][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(11),
      Q => \ch_reg_reg[8][3]_58\(11),
      R => '0'
    );
\ch_reg_reg[8][3][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(12),
      Q => \ch_reg_reg[8][3]_58\(12),
      R => '0'
    );
\ch_reg_reg[8][3][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(13),
      Q => \ch_reg_reg[8][3]_58\(13),
      R => '0'
    );
\ch_reg_reg[8][3][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(14),
      Q => \ch_reg_reg[8][3]_58\(14),
      R => '0'
    );
\ch_reg_reg[8][3][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(15),
      Q => \ch_reg_reg[8][3]_58\(15),
      R => '0'
    );
\ch_reg_reg[8][3][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(16),
      Q => \ch_reg_reg[8][3]_58\(16),
      R => '0'
    );
\ch_reg_reg[8][3][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(17),
      Q => \ch_reg_reg[8][3]_58\(17),
      R => '0'
    );
\ch_reg_reg[8][3][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(18),
      Q => \ch_reg_reg[8][3]_58\(18),
      R => '0'
    );
\ch_reg_reg[8][3][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(19),
      Q => \ch_reg_reg[8][3]_58\(19),
      R => '0'
    );
\ch_reg_reg[8][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(1),
      Q => \ch_reg_reg[8][3]_58\(1),
      R => '0'
    );
\ch_reg_reg[8][3][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(20),
      Q => \ch_reg_reg[8][3]_58\(20),
      R => '0'
    );
\ch_reg_reg[8][3][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(21),
      Q => \ch_reg_reg[8][3]_58\(21),
      R => '0'
    );
\ch_reg_reg[8][3][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(22),
      Q => \ch_reg_reg[8][3]_58\(22),
      R => '0'
    );
\ch_reg_reg[8][3][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(23),
      Q => \ch_reg_reg[8][3]_58\(23),
      R => '0'
    );
\ch_reg_reg[8][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(2),
      Q => \ch_reg_reg[8][3]_58\(2),
      R => '0'
    );
\ch_reg_reg[8][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(3),
      Q => \ch_reg_reg[8][3]_58\(3),
      R => '0'
    );
\ch_reg_reg[8][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(4),
      Q => \ch_reg_reg[8][3]_58\(4),
      R => '0'
    );
\ch_reg_reg[8][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(5),
      Q => \ch_reg_reg[8][3]_58\(5),
      R => '0'
    );
\ch_reg_reg[8][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(6),
      Q => \ch_reg_reg[8][3]_58\(6),
      R => '0'
    );
\ch_reg_reg[8][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(7),
      Q => \ch_reg_reg[8][3]_58\(7),
      R => '0'
    );
\ch_reg_reg[8][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(8),
      Q => \ch_reg_reg[8][3]_58\(8),
      R => '0'
    );
\ch_reg_reg[8][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][3][23]_i_1_n_0\,
      D => p_0_in_64(9),
      Q => \ch_reg_reg[8][3]_58\(9),
      R => '0'
    );
\ch_reg_reg[8][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => SDATA8,
      Q => \ch_reg_reg[8][4]_59\(0),
      R => '0'
    );
\ch_reg_reg[8][4][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(10),
      Q => \ch_reg_reg[8][4]_59\(10),
      R => '0'
    );
\ch_reg_reg[8][4][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(11),
      Q => \ch_reg_reg[8][4]_59\(11),
      R => '0'
    );
\ch_reg_reg[8][4][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(12),
      Q => \ch_reg_reg[8][4]_59\(12),
      R => '0'
    );
\ch_reg_reg[8][4][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(13),
      Q => \ch_reg_reg[8][4]_59\(13),
      R => '0'
    );
\ch_reg_reg[8][4][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(14),
      Q => \ch_reg_reg[8][4]_59\(14),
      R => '0'
    );
\ch_reg_reg[8][4][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(15),
      Q => \ch_reg_reg[8][4]_59\(15),
      R => '0'
    );
\ch_reg_reg[8][4][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(16),
      Q => \ch_reg_reg[8][4]_59\(16),
      R => '0'
    );
\ch_reg_reg[8][4][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(17),
      Q => \ch_reg_reg[8][4]_59\(17),
      R => '0'
    );
\ch_reg_reg[8][4][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(18),
      Q => \ch_reg_reg[8][4]_59\(18),
      R => '0'
    );
\ch_reg_reg[8][4][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(19),
      Q => \ch_reg_reg[8][4]_59\(19),
      R => '0'
    );
\ch_reg_reg[8][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(1),
      Q => \ch_reg_reg[8][4]_59\(1),
      R => '0'
    );
\ch_reg_reg[8][4][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(20),
      Q => \ch_reg_reg[8][4]_59\(20),
      R => '0'
    );
\ch_reg_reg[8][4][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(21),
      Q => \ch_reg_reg[8][4]_59\(21),
      R => '0'
    );
\ch_reg_reg[8][4][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(22),
      Q => \ch_reg_reg[8][4]_59\(22),
      R => '0'
    );
\ch_reg_reg[8][4][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(23),
      Q => \ch_reg_reg[8][4]_59\(23),
      R => '0'
    );
\ch_reg_reg[8][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(2),
      Q => \ch_reg_reg[8][4]_59\(2),
      R => '0'
    );
\ch_reg_reg[8][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(3),
      Q => \ch_reg_reg[8][4]_59\(3),
      R => '0'
    );
\ch_reg_reg[8][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(4),
      Q => \ch_reg_reg[8][4]_59\(4),
      R => '0'
    );
\ch_reg_reg[8][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(5),
      Q => \ch_reg_reg[8][4]_59\(5),
      R => '0'
    );
\ch_reg_reg[8][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(6),
      Q => \ch_reg_reg[8][4]_59\(6),
      R => '0'
    );
\ch_reg_reg[8][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(7),
      Q => \ch_reg_reg[8][4]_59\(7),
      R => '0'
    );
\ch_reg_reg[8][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(8),
      Q => \ch_reg_reg[8][4]_59\(8),
      R => '0'
    );
\ch_reg_reg[8][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][4][23]_i_1_n_0\,
      D => p_0_in_64(9),
      Q => \ch_reg_reg[8][4]_59\(9),
      R => '0'
    );
\ch_reg_reg[8][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => SDATA8,
      Q => \ch_reg_reg[8][5]_60\(0),
      R => '0'
    );
\ch_reg_reg[8][5][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(10),
      Q => \ch_reg_reg[8][5]_60\(10),
      R => '0'
    );
\ch_reg_reg[8][5][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(11),
      Q => \ch_reg_reg[8][5]_60\(11),
      R => '0'
    );
\ch_reg_reg[8][5][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(12),
      Q => \ch_reg_reg[8][5]_60\(12),
      R => '0'
    );
\ch_reg_reg[8][5][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(13),
      Q => \ch_reg_reg[8][5]_60\(13),
      R => '0'
    );
\ch_reg_reg[8][5][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(14),
      Q => \ch_reg_reg[8][5]_60\(14),
      R => '0'
    );
\ch_reg_reg[8][5][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(15),
      Q => \ch_reg_reg[8][5]_60\(15),
      R => '0'
    );
\ch_reg_reg[8][5][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(16),
      Q => \ch_reg_reg[8][5]_60\(16),
      R => '0'
    );
\ch_reg_reg[8][5][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(17),
      Q => \ch_reg_reg[8][5]_60\(17),
      R => '0'
    );
\ch_reg_reg[8][5][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(18),
      Q => \ch_reg_reg[8][5]_60\(18),
      R => '0'
    );
\ch_reg_reg[8][5][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(19),
      Q => \ch_reg_reg[8][5]_60\(19),
      R => '0'
    );
\ch_reg_reg[8][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(1),
      Q => \ch_reg_reg[8][5]_60\(1),
      R => '0'
    );
\ch_reg_reg[8][5][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(20),
      Q => \ch_reg_reg[8][5]_60\(20),
      R => '0'
    );
\ch_reg_reg[8][5][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(21),
      Q => \ch_reg_reg[8][5]_60\(21),
      R => '0'
    );
\ch_reg_reg[8][5][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(22),
      Q => \ch_reg_reg[8][5]_60\(22),
      R => '0'
    );
\ch_reg_reg[8][5][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(23),
      Q => \ch_reg_reg[8][5]_60\(23),
      R => '0'
    );
\ch_reg_reg[8][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(2),
      Q => \ch_reg_reg[8][5]_60\(2),
      R => '0'
    );
\ch_reg_reg[8][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(3),
      Q => \ch_reg_reg[8][5]_60\(3),
      R => '0'
    );
\ch_reg_reg[8][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(4),
      Q => \ch_reg_reg[8][5]_60\(4),
      R => '0'
    );
\ch_reg_reg[8][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(5),
      Q => \ch_reg_reg[8][5]_60\(5),
      R => '0'
    );
\ch_reg_reg[8][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(6),
      Q => \ch_reg_reg[8][5]_60\(6),
      R => '0'
    );
\ch_reg_reg[8][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(7),
      Q => \ch_reg_reg[8][5]_60\(7),
      R => '0'
    );
\ch_reg_reg[8][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(8),
      Q => \ch_reg_reg[8][5]_60\(8),
      R => '0'
    );
\ch_reg_reg[8][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][5][23]_i_1_n_0\,
      D => p_0_in_64(9),
      Q => \ch_reg_reg[8][5]_60\(9),
      R => '0'
    );
\ch_reg_reg[8][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => SDATA8,
      Q => \ch_reg_reg[8][6]_61\(0),
      R => '0'
    );
\ch_reg_reg[8][6][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(10),
      Q => \ch_reg_reg[8][6]_61\(10),
      R => '0'
    );
\ch_reg_reg[8][6][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(11),
      Q => \ch_reg_reg[8][6]_61\(11),
      R => '0'
    );
\ch_reg_reg[8][6][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(12),
      Q => \ch_reg_reg[8][6]_61\(12),
      R => '0'
    );
\ch_reg_reg[8][6][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(13),
      Q => \ch_reg_reg[8][6]_61\(13),
      R => '0'
    );
\ch_reg_reg[8][6][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(14),
      Q => \ch_reg_reg[8][6]_61\(14),
      R => '0'
    );
\ch_reg_reg[8][6][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(15),
      Q => \ch_reg_reg[8][6]_61\(15),
      R => '0'
    );
\ch_reg_reg[8][6][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(16),
      Q => \ch_reg_reg[8][6]_61\(16),
      R => '0'
    );
\ch_reg_reg[8][6][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(17),
      Q => \ch_reg_reg[8][6]_61\(17),
      R => '0'
    );
\ch_reg_reg[8][6][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(18),
      Q => \ch_reg_reg[8][6]_61\(18),
      R => '0'
    );
\ch_reg_reg[8][6][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(19),
      Q => \ch_reg_reg[8][6]_61\(19),
      R => '0'
    );
\ch_reg_reg[8][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(1),
      Q => \ch_reg_reg[8][6]_61\(1),
      R => '0'
    );
\ch_reg_reg[8][6][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(20),
      Q => \ch_reg_reg[8][6]_61\(20),
      R => '0'
    );
\ch_reg_reg[8][6][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(21),
      Q => \ch_reg_reg[8][6]_61\(21),
      R => '0'
    );
\ch_reg_reg[8][6][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(22),
      Q => \ch_reg_reg[8][6]_61\(22),
      R => '0'
    );
\ch_reg_reg[8][6][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(23),
      Q => \ch_reg_reg[8][6]_61\(23),
      R => '0'
    );
\ch_reg_reg[8][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(2),
      Q => \ch_reg_reg[8][6]_61\(2),
      R => '0'
    );
\ch_reg_reg[8][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(3),
      Q => \ch_reg_reg[8][6]_61\(3),
      R => '0'
    );
\ch_reg_reg[8][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(4),
      Q => \ch_reg_reg[8][6]_61\(4),
      R => '0'
    );
\ch_reg_reg[8][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(5),
      Q => \ch_reg_reg[8][6]_61\(5),
      R => '0'
    );
\ch_reg_reg[8][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(6),
      Q => \ch_reg_reg[8][6]_61\(6),
      R => '0'
    );
\ch_reg_reg[8][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(7),
      Q => \ch_reg_reg[8][6]_61\(7),
      R => '0'
    );
\ch_reg_reg[8][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(8),
      Q => \ch_reg_reg[8][6]_61\(8),
      R => '0'
    );
\ch_reg_reg[8][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][6][23]_i_1_n_0\,
      D => p_0_in_64(9),
      Q => \ch_reg_reg[8][6]_61\(9),
      R => '0'
    );
\ch_reg_reg[8][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => SDATA8,
      Q => \ch_reg_reg[8][7]_62\(0),
      R => '0'
    );
\ch_reg_reg[8][7][10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(10),
      Q => \ch_reg_reg[8][7]_62\(10),
      R => '0'
    );
\ch_reg_reg[8][7][11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(11),
      Q => \ch_reg_reg[8][7]_62\(11),
      R => '0'
    );
\ch_reg_reg[8][7][12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(12),
      Q => \ch_reg_reg[8][7]_62\(12),
      R => '0'
    );
\ch_reg_reg[8][7][13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(13),
      Q => \ch_reg_reg[8][7]_62\(13),
      R => '0'
    );
\ch_reg_reg[8][7][14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(14),
      Q => \ch_reg_reg[8][7]_62\(14),
      R => '0'
    );
\ch_reg_reg[8][7][15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(15),
      Q => \ch_reg_reg[8][7]_62\(15),
      R => '0'
    );
\ch_reg_reg[8][7][16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(16),
      Q => \ch_reg_reg[8][7]_62\(16),
      R => '0'
    );
\ch_reg_reg[8][7][17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(17),
      Q => \ch_reg_reg[8][7]_62\(17),
      R => '0'
    );
\ch_reg_reg[8][7][18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(18),
      Q => \ch_reg_reg[8][7]_62\(18),
      R => '0'
    );
\ch_reg_reg[8][7][19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(19),
      Q => \ch_reg_reg[8][7]_62\(19),
      R => '0'
    );
\ch_reg_reg[8][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(1),
      Q => \ch_reg_reg[8][7]_62\(1),
      R => '0'
    );
\ch_reg_reg[8][7][20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(20),
      Q => \ch_reg_reg[8][7]_62\(20),
      R => '0'
    );
\ch_reg_reg[8][7][21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(21),
      Q => \ch_reg_reg[8][7]_62\(21),
      R => '0'
    );
\ch_reg_reg[8][7][22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(22),
      Q => \ch_reg_reg[8][7]_62\(22),
      R => '0'
    );
\ch_reg_reg[8][7][23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(23),
      Q => \ch_reg_reg[8][7]_62\(23),
      R => '0'
    );
\ch_reg_reg[8][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(2),
      Q => \ch_reg_reg[8][7]_62\(2),
      R => '0'
    );
\ch_reg_reg[8][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(3),
      Q => \ch_reg_reg[8][7]_62\(3),
      R => '0'
    );
\ch_reg_reg[8][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(4),
      Q => \ch_reg_reg[8][7]_62\(4),
      R => '0'
    );
\ch_reg_reg[8][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(5),
      Q => \ch_reg_reg[8][7]_62\(5),
      R => '0'
    );
\ch_reg_reg[8][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(6),
      Q => \ch_reg_reg[8][7]_62\(6),
      R => '0'
    );
\ch_reg_reg[8][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(7),
      Q => \ch_reg_reg[8][7]_62\(7),
      R => '0'
    );
\ch_reg_reg[8][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(8),
      Q => \ch_reg_reg[8][7]_62\(8),
      R => '0'
    );
\ch_reg_reg[8][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ch_reg[1][7][23]_i_1_n_0\,
      D => p_0_in_64(9),
      Q => \ch_reg_reg[8][7]_62\(9),
      R => '0'
    );
fsync_48K_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \^bclk_reg_0\,
      I1 => fsync_48K_i_4_n_0,
      I2 => fsync_48K_i_5_n_0,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      O => bclk_fall_tick
    );
fsync_48K_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bclk_div_cnt_reg_n_0_[9]\,
      I1 => \bclk_div_cnt_reg_n_0_[29]\,
      I2 => \bclk_div_cnt_reg_n_0_[26]\,
      I3 => \bclk_div_cnt_reg_n_0_[18]\,
      O => fsync_48K_i_10_n_0
    );
fsync_48K_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bclk_div_cnt_reg_n_0_[28]\,
      I1 => \bclk_div_cnt_reg_n_0_[16]\,
      I2 => \bclk_div_cnt_reg_n_0_[15]\,
      I3 => \bclk_div_cnt_reg_n_0_[4]\,
      O => fsync_48K_i_11_n_0
    );
fsync_48K_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bclk_div_cnt_reg_n_0_[17]\,
      I1 => \bclk_div_cnt_reg_n_0_[5]\,
      I2 => \bclk_div_cnt_reg_n_0_[22]\,
      I3 => \bclk_div_cnt_reg_n_0_[7]\,
      O => fsync_48K_i_12_n_0
    );
fsync_48K_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \bclk_cnt_reg_n_0_[7]\,
      I1 => fsync_48K_i_8_n_0,
      I2 => \bclk_cnt_reg_n_0_[6]\,
      O => fsync_48K
    );
fsync_48K_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_rst_n,
      O => fsync_48K_i_3_n_0
    );
fsync_48K_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \bclk_div_cnt_reg_n_0_[12]\,
      I1 => \bclk_div_cnt_reg_n_0_[10]\,
      I2 => \bclk_div_cnt_reg_n_0_[6]\,
      I3 => \bclk_div_cnt_reg_n_0_[23]\,
      I4 => fsync_48K_i_9_n_0,
      O => fsync_48K_i_4_n_0
    );
fsync_48K_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \bclk_div_cnt_reg_n_0_[1]\,
      I1 => \bclk_div_cnt_reg_n_0_[24]\,
      I2 => \bclk_div_cnt_reg_n_0_[13]\,
      I3 => \bclk_div_cnt_reg_n_0_[11]\,
      I4 => fsync_48K_i_10_n_0,
      O => fsync_48K_i_5_n_0
    );
fsync_48K_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \bclk_div_cnt_reg_n_0_[20]\,
      I1 => \bclk_div_cnt_reg_n_0_[21]\,
      I2 => \bclk_div_cnt_reg_n_0_[8]\,
      I3 => \bclk_div_cnt_reg_n_0_[25]\,
      I4 => fsync_48K_i_11_n_0,
      O => fsync_48K_i_6_n_0
    );
fsync_48K_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \bclk_div_cnt_reg_n_0_[0]\,
      I1 => \bclk_div_cnt_reg_n_0_[31]\,
      I2 => \bclk_div_cnt_reg_n_0_[19]\,
      I3 => \bclk_div_cnt_reg_n_0_[27]\,
      I4 => fsync_48K_i_12_n_0,
      O => fsync_48K_i_7_n_0
    );
fsync_48K_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \bclk_cnt_reg_n_0_[4]\,
      I1 => \bclk_cnt_reg_n_0_[2]\,
      I2 => \bclk_cnt_reg_n_0_[0]\,
      I3 => \bclk_cnt_reg_n_0_[1]\,
      I4 => \bclk_cnt_reg_n_0_[3]\,
      I5 => \bclk_cnt_reg_n_0_[5]\,
      O => fsync_48K_i_8_n_0
    );
fsync_48K_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \bclk_div_cnt_reg_n_0_[2]\,
      I1 => \bclk_div_cnt_reg_n_0_[14]\,
      I2 => \bclk_div_cnt_reg_n_0_[30]\,
      I3 => \bclk_div_cnt_reg_n_0_[3]\,
      O => fsync_48K_i_9_n_0
    );
fsync_48K_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => bclk_fall_tick,
      CLR => fsync_48K_i_3_n_0,
      D => fsync_48K,
      Q => \^fsync1\
    );
\fsync_wait_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fsync_wait_cnt_reg__0\(0),
      O => p_0_in(0)
    );
\fsync_wait_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \fsync_wait_cnt_reg__0\(0),
      I1 => \fsync_wait_cnt_reg__0\(1),
      O => p_0_in(1)
    );
\fsync_wait_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \fsync_wait_cnt_reg__0\(2),
      I1 => \fsync_wait_cnt_reg__0\(0),
      I2 => \fsync_wait_cnt_reg__0\(1),
      O => p_0_in(2)
    );
\fsync_wait_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \fsync_wait_cnt_reg__0\(3),
      I1 => \fsync_wait_cnt_reg__0\(1),
      I2 => \fsync_wait_cnt_reg__0\(0),
      I3 => \fsync_wait_cnt_reg__0\(2),
      O => p_0_in(3)
    );
\fsync_wait_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \fsync_wait_cnt_reg__0\(4),
      I1 => \fsync_wait_cnt_reg__0\(2),
      I2 => \fsync_wait_cnt_reg__0\(0),
      I3 => \fsync_wait_cnt_reg__0\(1),
      I4 => \fsync_wait_cnt_reg__0\(3),
      O => p_0_in(4)
    );
\fsync_wait_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \fsync_wait_cnt_reg__0\(5),
      I1 => \fsync_wait_cnt_reg__0\(3),
      I2 => \fsync_wait_cnt_reg__0\(1),
      I3 => \fsync_wait_cnt_reg__0\(0),
      I4 => \fsync_wait_cnt_reg__0\(2),
      I5 => \fsync_wait_cnt_reg__0\(4),
      O => p_0_in(5)
    );
\fsync_wait_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \fsync_wait_cnt[7]_i_3_n_0\,
      I1 => \fsync_wait_cnt_reg__0\(6),
      O => p_0_in(6)
    );
\fsync_wait_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => fsync_48K,
      I1 => \^bclk_reg_0\,
      I2 => \ch_reg[1][1][23]_i_4_n_0\,
      I3 => fsync_48K_i_6_n_0,
      I4 => fsync_48K_i_7_n_0,
      I5 => \fsync_wait_cnt_reg__0\(7),
      O => fsync_wait_cnt
    );
\fsync_wait_cnt[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \fsync_wait_cnt[7]_i_3_n_0\,
      I1 => \fsync_wait_cnt_reg__0\(6),
      O => p_0_in(7)
    );
\fsync_wait_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \fsync_wait_cnt_reg__0\(4),
      I1 => \fsync_wait_cnt_reg__0\(2),
      I2 => \fsync_wait_cnt_reg__0\(0),
      I3 => \fsync_wait_cnt_reg__0\(1),
      I4 => \fsync_wait_cnt_reg__0\(3),
      I5 => \fsync_wait_cnt_reg__0\(5),
      O => \fsync_wait_cnt[7]_i_3_n_0\
    );
\fsync_wait_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => fsync_wait_cnt,
      CLR => fsync_48K_i_3_n_0,
      D => p_0_in(0),
      Q => \fsync_wait_cnt_reg__0\(0)
    );
\fsync_wait_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => fsync_wait_cnt,
      CLR => fsync_48K_i_3_n_0,
      D => p_0_in(1),
      Q => \fsync_wait_cnt_reg__0\(1)
    );
\fsync_wait_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => fsync_wait_cnt,
      CLR => fsync_48K_i_3_n_0,
      D => p_0_in(2),
      Q => \fsync_wait_cnt_reg__0\(2)
    );
\fsync_wait_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => fsync_wait_cnt,
      CLR => fsync_48K_i_3_n_0,
      D => p_0_in(3),
      Q => \fsync_wait_cnt_reg__0\(3)
    );
\fsync_wait_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => fsync_wait_cnt,
      CLR => fsync_48K_i_3_n_0,
      D => p_0_in(4),
      Q => \fsync_wait_cnt_reg__0\(4)
    );
\fsync_wait_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => fsync_wait_cnt,
      CLR => fsync_48K_i_3_n_0,
      D => p_0_in(5),
      Q => \fsync_wait_cnt_reg__0\(5)
    );
\fsync_wait_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => fsync_wait_cnt,
      CLR => fsync_48K_i_3_n_0,
      D => p_0_in(6),
      Q => \fsync_wait_cnt_reg__0\(6)
    );
\fsync_wait_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => fsync_wait_cnt,
      CLR => fsync_48K_i_3_n_0,
      D => p_0_in(7),
      Q => \fsync_wait_cnt_reg__0\(7)
    );
\led_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => burst_cnt(0),
      I1 => burst_cnt(2),
      I2 => burst_cnt(1),
      I3 => m_axis_tready,
      I4 => \^m_axis_tvalid_reg_0\,
      O => led_cnt
    );
\led_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => led_cnt_reg(0),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[0]_i_3_n_0\
    );
\led_cnt[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => led_cnt_reg(3),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[0]_i_4_n_0\
    );
\led_cnt[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => led_cnt_reg(2),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[0]_i_5_n_0\
    );
\led_cnt[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => led_cnt_reg(1),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[0]_i_6_n_0\
    );
\led_cnt[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001511"
    )
        port map (
      I0 => led_cnt_reg(0),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[0]_i_7_n_0\
    );
\led_cnt[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => led_cnt_reg(14),
      I1 => led_cnt_reg(13),
      I2 => pl_work_i_3_n_0,
      I3 => led_cnt_reg(15),
      O => \led_cnt[12]_i_2_n_0\
    );
\led_cnt[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => led_cnt_reg(14),
      I1 => led_cnt_reg(13),
      I2 => led_cnt_reg(15),
      O => \led_cnt[12]_i_3_n_0\
    );
\led_cnt[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => led_cnt_reg(12),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[12]_i_4_n_0\
    );
\led_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => led_cnt_reg(7),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[4]_i_2_n_0\
    );
\led_cnt[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => led_cnt_reg(6),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[4]_i_3_n_0\
    );
\led_cnt[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => led_cnt_reg(5),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[4]_i_4_n_0\
    );
\led_cnt[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => led_cnt_reg(4),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[4]_i_5_n_0\
    );
\led_cnt[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => led_cnt_reg(11),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[8]_i_2_n_0\
    );
\led_cnt[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => led_cnt_reg(10),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[8]_i_3_n_0\
    );
\led_cnt[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => led_cnt_reg(9),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[8]_i_4_n_0\
    );
\led_cnt[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002A22"
    )
        port map (
      I0 => led_cnt_reg(8),
      I1 => led_cnt_reg(14),
      I2 => led_cnt_reg(13),
      I3 => pl_work_i_3_n_0,
      I4 => led_cnt_reg(15),
      O => \led_cnt[8]_i_5_n_0\
    );
\led_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[0]_i_2_n_7\,
      Q => led_cnt_reg(0)
    );
\led_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \led_cnt_reg[0]_i_2_n_0\,
      CO(2) => \led_cnt_reg[0]_i_2_n_1\,
      CO(1) => \led_cnt_reg[0]_i_2_n_2\,
      CO(0) => \led_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \led_cnt[0]_i_3_n_0\,
      O(3) => \led_cnt_reg[0]_i_2_n_4\,
      O(2) => \led_cnt_reg[0]_i_2_n_5\,
      O(1) => \led_cnt_reg[0]_i_2_n_6\,
      O(0) => \led_cnt_reg[0]_i_2_n_7\,
      S(3) => \led_cnt[0]_i_4_n_0\,
      S(2) => \led_cnt[0]_i_5_n_0\,
      S(1) => \led_cnt[0]_i_6_n_0\,
      S(0) => \led_cnt[0]_i_7_n_0\
    );
\led_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[8]_i_1_n_5\,
      Q => led_cnt_reg(10)
    );
\led_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[8]_i_1_n_4\,
      Q => led_cnt_reg(11)
    );
\led_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[12]_i_1_n_7\,
      Q => led_cnt_reg(12)
    );
\led_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_cnt_reg[8]_i_1_n_0\,
      CO(3) => \led_cnt_reg[12]_i_1_n_0\,
      CO(2) => \NLW_led_cnt_reg[12]_i_1_CO_UNCONNECTED\(2),
      CO(1) => \led_cnt_reg[12]_i_1_n_2\,
      CO(0) => \led_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_led_cnt_reg[12]_i_1_O_UNCONNECTED\(3),
      O(2) => \led_cnt_reg[12]_i_1_n_5\,
      O(1) => \led_cnt_reg[12]_i_1_n_6\,
      O(0) => \led_cnt_reg[12]_i_1_n_7\,
      S(3) => '1',
      S(2) => \led_cnt[12]_i_2_n_0\,
      S(1) => \led_cnt[12]_i_3_n_0\,
      S(0) => \led_cnt[12]_i_4_n_0\
    );
\led_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[12]_i_1_n_6\,
      Q => led_cnt_reg(13)
    );
\led_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[12]_i_1_n_5\,
      Q => led_cnt_reg(14)
    );
\led_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[12]_i_1_n_0\,
      Q => led_cnt_reg(15)
    );
\led_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[0]_i_2_n_6\,
      Q => led_cnt_reg(1)
    );
\led_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[0]_i_2_n_5\,
      Q => led_cnt_reg(2)
    );
\led_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[0]_i_2_n_4\,
      Q => led_cnt_reg(3)
    );
\led_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[4]_i_1_n_7\,
      Q => led_cnt_reg(4)
    );
\led_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_cnt_reg[0]_i_2_n_0\,
      CO(3) => \led_cnt_reg[4]_i_1_n_0\,
      CO(2) => \led_cnt_reg[4]_i_1_n_1\,
      CO(1) => \led_cnt_reg[4]_i_1_n_2\,
      CO(0) => \led_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \led_cnt_reg[4]_i_1_n_4\,
      O(2) => \led_cnt_reg[4]_i_1_n_5\,
      O(1) => \led_cnt_reg[4]_i_1_n_6\,
      O(0) => \led_cnt_reg[4]_i_1_n_7\,
      S(3) => \led_cnt[4]_i_2_n_0\,
      S(2) => \led_cnt[4]_i_3_n_0\,
      S(1) => \led_cnt[4]_i_4_n_0\,
      S(0) => \led_cnt[4]_i_5_n_0\
    );
\led_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[4]_i_1_n_6\,
      Q => led_cnt_reg(5)
    );
\led_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[4]_i_1_n_5\,
      Q => led_cnt_reg(6)
    );
\led_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[4]_i_1_n_4\,
      Q => led_cnt_reg(7)
    );
\led_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[8]_i_1_n_7\,
      Q => led_cnt_reg(8)
    );
\led_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_cnt_reg[4]_i_1_n_0\,
      CO(3) => \led_cnt_reg[8]_i_1_n_0\,
      CO(2) => \led_cnt_reg[8]_i_1_n_1\,
      CO(1) => \led_cnt_reg[8]_i_1_n_2\,
      CO(0) => \led_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \led_cnt_reg[8]_i_1_n_4\,
      O(2) => \led_cnt_reg[8]_i_1_n_5\,
      O(1) => \led_cnt_reg[8]_i_1_n_6\,
      O(0) => \led_cnt_reg[8]_i_1_n_7\,
      S(3) => \led_cnt[8]_i_2_n_0\,
      S(2) => \led_cnt[8]_i_3_n_0\,
      S(1) => \led_cnt[8]_i_4_n_0\,
      S(0) => \led_cnt[8]_i_5_n_0\
    );
\led_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => led_cnt,
      CLR => pl_work_i_2_n_0,
      D => \led_cnt_reg[8]_i_1_n_6\,
      Q => led_cnt_reg(9)
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[0]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[0]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(8),
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(8),
      I1 => \ch_reg_reg[1][6]_5\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(8),
      O => \m_axis_tdata[0]_i_2_n_0\
    );
\m_axis_tdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(8),
      I1 => \ch_reg_reg[1][2]_1\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(8),
      O => \m_axis_tdata[0]_i_3_n_0\
    );
\m_axis_tdata[100]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[100]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[100]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(12),
      O => \m_axis_tdata[100]_i_1_n_0\
    );
\m_axis_tdata[100]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(12),
      I1 => \ch_reg_reg[7][6]_53\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(12),
      O => \m_axis_tdata[100]_i_2_n_0\
    );
\m_axis_tdata[100]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(12),
      I1 => \ch_reg_reg[7][2]_49\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(12),
      O => \m_axis_tdata[100]_i_3_n_0\
    );
\m_axis_tdata[101]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[101]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[101]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(13),
      O => \m_axis_tdata[101]_i_1_n_0\
    );
\m_axis_tdata[101]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(13),
      I1 => \ch_reg_reg[7][6]_53\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(13),
      O => \m_axis_tdata[101]_i_2_n_0\
    );
\m_axis_tdata[101]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(13),
      I1 => \ch_reg_reg[7][2]_49\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(13),
      O => \m_axis_tdata[101]_i_3_n_0\
    );
\m_axis_tdata[102]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[102]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[102]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(14),
      O => \m_axis_tdata[102]_i_1_n_0\
    );
\m_axis_tdata[102]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(14),
      I1 => \ch_reg_reg[7][6]_53\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(14),
      O => \m_axis_tdata[102]_i_2_n_0\
    );
\m_axis_tdata[102]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(14),
      I1 => \ch_reg_reg[7][2]_49\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(14),
      O => \m_axis_tdata[102]_i_3_n_0\
    );
\m_axis_tdata[103]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[103]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[103]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(15),
      O => \m_axis_tdata[103]_i_1_n_0\
    );
\m_axis_tdata[103]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(15),
      I1 => \ch_reg_reg[7][6]_53\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(15),
      O => \m_axis_tdata[103]_i_2_n_0\
    );
\m_axis_tdata[103]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(15),
      I1 => \ch_reg_reg[7][2]_49\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(15),
      O => \m_axis_tdata[103]_i_3_n_0\
    );
\m_axis_tdata[104]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[104]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[104]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(16),
      O => \m_axis_tdata[104]_i_1_n_0\
    );
\m_axis_tdata[104]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(16),
      I1 => \ch_reg_reg[7][6]_53\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(16),
      O => \m_axis_tdata[104]_i_2_n_0\
    );
\m_axis_tdata[104]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(16),
      I1 => \ch_reg_reg[7][2]_49\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(16),
      O => \m_axis_tdata[104]_i_3_n_0\
    );
\m_axis_tdata[105]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[105]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[105]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(17),
      O => \m_axis_tdata[105]_i_1_n_0\
    );
\m_axis_tdata[105]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(17),
      I1 => \ch_reg_reg[7][6]_53\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(17),
      O => \m_axis_tdata[105]_i_2_n_0\
    );
\m_axis_tdata[105]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(17),
      I1 => \ch_reg_reg[7][2]_49\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(17),
      O => \m_axis_tdata[105]_i_3_n_0\
    );
\m_axis_tdata[106]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[106]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[106]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(18),
      O => \m_axis_tdata[106]_i_1_n_0\
    );
\m_axis_tdata[106]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(18),
      I1 => \ch_reg_reg[7][6]_53\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(18),
      O => \m_axis_tdata[106]_i_2_n_0\
    );
\m_axis_tdata[106]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(18),
      I1 => \ch_reg_reg[7][2]_49\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(18),
      O => \m_axis_tdata[106]_i_3_n_0\
    );
\m_axis_tdata[107]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[107]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[107]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(19),
      O => \m_axis_tdata[107]_i_1_n_0\
    );
\m_axis_tdata[107]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(19),
      I1 => \ch_reg_reg[7][6]_53\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(19),
      O => \m_axis_tdata[107]_i_2_n_0\
    );
\m_axis_tdata[107]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(19),
      I1 => \ch_reg_reg[7][2]_49\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(19),
      O => \m_axis_tdata[107]_i_3_n_0\
    );
\m_axis_tdata[108]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[108]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[108]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(20),
      O => \m_axis_tdata[108]_i_1_n_0\
    );
\m_axis_tdata[108]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(20),
      I1 => \ch_reg_reg[7][6]_53\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(20),
      O => \m_axis_tdata[108]_i_2_n_0\
    );
\m_axis_tdata[108]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(20),
      I1 => \ch_reg_reg[7][2]_49\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(20),
      O => \m_axis_tdata[108]_i_3_n_0\
    );
\m_axis_tdata[109]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[109]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[109]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(21),
      O => \m_axis_tdata[109]_i_1_n_0\
    );
\m_axis_tdata[109]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(21),
      I1 => \ch_reg_reg[7][6]_53\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(21),
      O => \m_axis_tdata[109]_i_2_n_0\
    );
\m_axis_tdata[109]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(21),
      I1 => \ch_reg_reg[7][2]_49\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(21),
      O => \m_axis_tdata[109]_i_3_n_0\
    );
\m_axis_tdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[10]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[10]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(18),
      O => \m_axis_tdata[10]_i_1_n_0\
    );
\m_axis_tdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(18),
      I1 => \ch_reg_reg[1][6]_5\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(18),
      O => \m_axis_tdata[10]_i_2_n_0\
    );
\m_axis_tdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(18),
      I1 => \ch_reg_reg[1][2]_1\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(18),
      O => \m_axis_tdata[10]_i_3_n_0\
    );
\m_axis_tdata[110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[110]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[110]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(22),
      O => \m_axis_tdata[110]_i_1_n_0\
    );
\m_axis_tdata[110]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(22),
      I1 => \ch_reg_reg[7][6]_53\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(22),
      O => \m_axis_tdata[110]_i_2_n_0\
    );
\m_axis_tdata[110]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(22),
      I1 => \ch_reg_reg[7][2]_49\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(22),
      O => \m_axis_tdata[110]_i_3_n_0\
    );
\m_axis_tdata[111]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[111]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[111]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(23),
      O => \m_axis_tdata[111]_i_1_n_0\
    );
\m_axis_tdata[111]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(23),
      I1 => \ch_reg_reg[7][6]_53\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(23),
      O => \m_axis_tdata[111]_i_2_n_0\
    );
\m_axis_tdata[111]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(23),
      I1 => \ch_reg_reg[7][2]_49\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(23),
      O => \m_axis_tdata[111]_i_3_n_0\
    );
\m_axis_tdata[112]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[112]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[112]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(8),
      O => \m_axis_tdata[112]_i_1_n_0\
    );
\m_axis_tdata[112]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(8),
      I1 => \ch_reg_reg[8][6]_61\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(8),
      O => \m_axis_tdata[112]_i_2_n_0\
    );
\m_axis_tdata[112]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(8),
      I1 => \ch_reg_reg[8][2]_57\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(8),
      O => \m_axis_tdata[112]_i_3_n_0\
    );
\m_axis_tdata[113]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[113]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[113]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(9),
      O => \m_axis_tdata[113]_i_1_n_0\
    );
\m_axis_tdata[113]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(9),
      I1 => \ch_reg_reg[8][6]_61\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(9),
      O => \m_axis_tdata[113]_i_2_n_0\
    );
\m_axis_tdata[113]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(9),
      I1 => \ch_reg_reg[8][2]_57\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(9),
      O => \m_axis_tdata[113]_i_3_n_0\
    );
\m_axis_tdata[114]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[114]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[114]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(10),
      O => \m_axis_tdata[114]_i_1_n_0\
    );
\m_axis_tdata[114]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(10),
      I1 => \ch_reg_reg[8][6]_61\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(10),
      O => \m_axis_tdata[114]_i_2_n_0\
    );
\m_axis_tdata[114]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(10),
      I1 => \ch_reg_reg[8][2]_57\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(10),
      O => \m_axis_tdata[114]_i_3_n_0\
    );
\m_axis_tdata[115]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[115]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[115]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(11),
      O => \m_axis_tdata[115]_i_1_n_0\
    );
\m_axis_tdata[115]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(11),
      I1 => \ch_reg_reg[8][6]_61\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(11),
      O => \m_axis_tdata[115]_i_2_n_0\
    );
\m_axis_tdata[115]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(11),
      I1 => \ch_reg_reg[8][2]_57\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(11),
      O => \m_axis_tdata[115]_i_3_n_0\
    );
\m_axis_tdata[116]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[116]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[116]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(12),
      O => \m_axis_tdata[116]_i_1_n_0\
    );
\m_axis_tdata[116]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(12),
      I1 => \ch_reg_reg[8][6]_61\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(12),
      O => \m_axis_tdata[116]_i_2_n_0\
    );
\m_axis_tdata[116]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(12),
      I1 => \ch_reg_reg[8][2]_57\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(12),
      O => \m_axis_tdata[116]_i_3_n_0\
    );
\m_axis_tdata[117]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[117]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[117]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(13),
      O => \m_axis_tdata[117]_i_1_n_0\
    );
\m_axis_tdata[117]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(13),
      I1 => \ch_reg_reg[8][6]_61\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(13),
      O => \m_axis_tdata[117]_i_2_n_0\
    );
\m_axis_tdata[117]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(13),
      I1 => \ch_reg_reg[8][2]_57\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(13),
      O => \m_axis_tdata[117]_i_3_n_0\
    );
\m_axis_tdata[118]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[118]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[118]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(14),
      O => \m_axis_tdata[118]_i_1_n_0\
    );
\m_axis_tdata[118]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(14),
      I1 => \ch_reg_reg[8][6]_61\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(14),
      O => \m_axis_tdata[118]_i_2_n_0\
    );
\m_axis_tdata[118]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(14),
      I1 => \ch_reg_reg[8][2]_57\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(14),
      O => \m_axis_tdata[118]_i_3_n_0\
    );
\m_axis_tdata[119]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[119]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[119]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(15),
      O => \m_axis_tdata[119]_i_1_n_0\
    );
\m_axis_tdata[119]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(15),
      I1 => \ch_reg_reg[8][6]_61\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(15),
      O => \m_axis_tdata[119]_i_2_n_0\
    );
\m_axis_tdata[119]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(15),
      I1 => \ch_reg_reg[8][2]_57\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(15),
      O => \m_axis_tdata[119]_i_3_n_0\
    );
\m_axis_tdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[11]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[11]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(19),
      O => \m_axis_tdata[11]_i_1_n_0\
    );
\m_axis_tdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(19),
      I1 => \ch_reg_reg[1][6]_5\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(19),
      O => \m_axis_tdata[11]_i_2_n_0\
    );
\m_axis_tdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(19),
      I1 => \ch_reg_reg[1][2]_1\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(19),
      O => \m_axis_tdata[11]_i_3_n_0\
    );
\m_axis_tdata[120]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[120]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[120]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(16),
      O => \m_axis_tdata[120]_i_1_n_0\
    );
\m_axis_tdata[120]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(16),
      I1 => \ch_reg_reg[8][6]_61\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(16),
      O => \m_axis_tdata[120]_i_2_n_0\
    );
\m_axis_tdata[120]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(16),
      I1 => \ch_reg_reg[8][2]_57\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(16),
      O => \m_axis_tdata[120]_i_3_n_0\
    );
\m_axis_tdata[121]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[121]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[121]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(17),
      O => \m_axis_tdata[121]_i_1_n_0\
    );
\m_axis_tdata[121]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(17),
      I1 => \ch_reg_reg[8][6]_61\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(17),
      O => \m_axis_tdata[121]_i_2_n_0\
    );
\m_axis_tdata[121]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(17),
      I1 => \ch_reg_reg[8][2]_57\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(17),
      O => \m_axis_tdata[121]_i_3_n_0\
    );
\m_axis_tdata[122]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[122]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[122]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(18),
      O => \m_axis_tdata[122]_i_1_n_0\
    );
\m_axis_tdata[122]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(18),
      I1 => \ch_reg_reg[8][6]_61\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(18),
      O => \m_axis_tdata[122]_i_2_n_0\
    );
\m_axis_tdata[122]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(18),
      I1 => \ch_reg_reg[8][2]_57\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(18),
      O => \m_axis_tdata[122]_i_3_n_0\
    );
\m_axis_tdata[123]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[123]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[123]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(19),
      O => \m_axis_tdata[123]_i_1_n_0\
    );
\m_axis_tdata[123]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(19),
      I1 => \ch_reg_reg[8][6]_61\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(19),
      O => \m_axis_tdata[123]_i_2_n_0\
    );
\m_axis_tdata[123]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(19),
      I1 => \ch_reg_reg[8][2]_57\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(19),
      O => \m_axis_tdata[123]_i_3_n_0\
    );
\m_axis_tdata[124]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[124]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[124]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(20),
      O => \m_axis_tdata[124]_i_1_n_0\
    );
\m_axis_tdata[124]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(20),
      I1 => \ch_reg_reg[8][6]_61\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(20),
      O => \m_axis_tdata[124]_i_2_n_0\
    );
\m_axis_tdata[124]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(20),
      I1 => \ch_reg_reg[8][2]_57\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(20),
      O => \m_axis_tdata[124]_i_3_n_0\
    );
\m_axis_tdata[125]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[125]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[125]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(21),
      O => \m_axis_tdata[125]_i_1_n_0\
    );
\m_axis_tdata[125]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(21),
      I1 => \ch_reg_reg[8][6]_61\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(21),
      O => \m_axis_tdata[125]_i_2_n_0\
    );
\m_axis_tdata[125]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(21),
      I1 => \ch_reg_reg[8][2]_57\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(21),
      O => \m_axis_tdata[125]_i_3_n_0\
    );
\m_axis_tdata[126]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[126]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[126]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(22),
      O => \m_axis_tdata[126]_i_1_n_0\
    );
\m_axis_tdata[126]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(22),
      I1 => \ch_reg_reg[8][6]_61\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(22),
      O => \m_axis_tdata[126]_i_2_n_0\
    );
\m_axis_tdata[126]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(22),
      I1 => \ch_reg_reg[8][2]_57\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(22),
      O => \m_axis_tdata[126]_i_3_n_0\
    );
\m_axis_tdata[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_0\,
      I1 => burst_start_d2,
      I2 => burst_start_d1,
      O => \m_axis_tdata[127]_i_1_n_0\
    );
\m_axis_tdata[127]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[127]_i_3_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[127]_i_4_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[8][0]_63\(23),
      O => \m_axis_tdata[127]_i_2_n_0\
    );
\m_axis_tdata[127]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][7]_62\(23),
      I1 => \ch_reg_reg[8][6]_61\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][5]_60\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][4]_59\(23),
      O => \m_axis_tdata[127]_i_3_n_0\
    );
\m_axis_tdata[127]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[8][3]_58\(23),
      I1 => \ch_reg_reg[8][2]_57\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[8][1]_56\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[8][0]_63\(23),
      O => \m_axis_tdata[127]_i_4_n_0\
    );
\m_axis_tdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[12]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[12]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(20),
      O => \m_axis_tdata[12]_i_1_n_0\
    );
\m_axis_tdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(20),
      I1 => \ch_reg_reg[1][6]_5\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(20),
      O => \m_axis_tdata[12]_i_2_n_0\
    );
\m_axis_tdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(20),
      I1 => \ch_reg_reg[1][2]_1\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(20),
      O => \m_axis_tdata[12]_i_3_n_0\
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[13]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[13]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(21),
      O => \m_axis_tdata[13]_i_1_n_0\
    );
\m_axis_tdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(21),
      I1 => \ch_reg_reg[1][6]_5\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(21),
      O => \m_axis_tdata[13]_i_2_n_0\
    );
\m_axis_tdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(21),
      I1 => \ch_reg_reg[1][2]_1\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(21),
      O => \m_axis_tdata[13]_i_3_n_0\
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[14]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[14]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(22),
      O => \m_axis_tdata[14]_i_1_n_0\
    );
\m_axis_tdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(22),
      I1 => \ch_reg_reg[1][6]_5\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(22),
      O => \m_axis_tdata[14]_i_2_n_0\
    );
\m_axis_tdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(22),
      I1 => \ch_reg_reg[1][2]_1\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(22),
      O => \m_axis_tdata[14]_i_3_n_0\
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[15]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[15]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(23),
      O => \m_axis_tdata[15]_i_1_n_0\
    );
\m_axis_tdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(23),
      I1 => \ch_reg_reg[1][6]_5\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(23),
      O => \m_axis_tdata[15]_i_2_n_0\
    );
\m_axis_tdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(23),
      I1 => \ch_reg_reg[1][2]_1\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(23),
      O => \m_axis_tdata[15]_i_3_n_0\
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[16]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(8),
      O => \m_axis_tdata[16]_i_1_n_0\
    );
\m_axis_tdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(8),
      I1 => \ch_reg_reg[2][6]_13\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(8),
      O => \m_axis_tdata[16]_i_2_n_0\
    );
\m_axis_tdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(8),
      I1 => \ch_reg_reg[2][2]_9\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(8),
      O => \m_axis_tdata[16]_i_3_n_0\
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[17]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[17]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(9),
      O => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(9),
      I1 => \ch_reg_reg[2][6]_13\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(9),
      O => \m_axis_tdata[17]_i_2_n_0\
    );
\m_axis_tdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(9),
      I1 => \ch_reg_reg[2][2]_9\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(9),
      O => \m_axis_tdata[17]_i_3_n_0\
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[18]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(10),
      O => \m_axis_tdata[18]_i_1_n_0\
    );
\m_axis_tdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(10),
      I1 => \ch_reg_reg[2][6]_13\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(10),
      O => \m_axis_tdata[18]_i_2_n_0\
    );
\m_axis_tdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(10),
      I1 => \ch_reg_reg[2][2]_9\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(10),
      O => \m_axis_tdata[18]_i_3_n_0\
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[19]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[19]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(11),
      O => \m_axis_tdata[19]_i_1_n_0\
    );
\m_axis_tdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(11),
      I1 => \ch_reg_reg[2][6]_13\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(11),
      O => \m_axis_tdata[19]_i_2_n_0\
    );
\m_axis_tdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(11),
      I1 => \ch_reg_reg[2][2]_9\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(11),
      O => \m_axis_tdata[19]_i_3_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[1]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[1]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(9),
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(9),
      I1 => \ch_reg_reg[1][6]_5\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(9),
      O => \m_axis_tdata[1]_i_2_n_0\
    );
\m_axis_tdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(9),
      I1 => \ch_reg_reg[1][2]_1\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(9),
      O => \m_axis_tdata[1]_i_3_n_0\
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[20]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[20]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(12),
      O => \m_axis_tdata[20]_i_1_n_0\
    );
\m_axis_tdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(12),
      I1 => \ch_reg_reg[2][6]_13\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(12),
      O => \m_axis_tdata[20]_i_2_n_0\
    );
\m_axis_tdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(12),
      I1 => \ch_reg_reg[2][2]_9\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(12),
      O => \m_axis_tdata[20]_i_3_n_0\
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[21]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(13),
      O => \m_axis_tdata[21]_i_1_n_0\
    );
\m_axis_tdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(13),
      I1 => \ch_reg_reg[2][6]_13\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(13),
      O => \m_axis_tdata[21]_i_2_n_0\
    );
\m_axis_tdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(13),
      I1 => \ch_reg_reg[2][2]_9\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(13),
      O => \m_axis_tdata[21]_i_3_n_0\
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[22]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[22]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(14),
      O => \m_axis_tdata[22]_i_1_n_0\
    );
\m_axis_tdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(14),
      I1 => \ch_reg_reg[2][6]_13\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(14),
      O => \m_axis_tdata[22]_i_2_n_0\
    );
\m_axis_tdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(14),
      I1 => \ch_reg_reg[2][2]_9\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(14),
      O => \m_axis_tdata[22]_i_3_n_0\
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[23]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[23]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(15),
      O => \m_axis_tdata[23]_i_1_n_0\
    );
\m_axis_tdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(15),
      I1 => \ch_reg_reg[2][6]_13\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(15),
      O => \m_axis_tdata[23]_i_2_n_0\
    );
\m_axis_tdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(15),
      I1 => \ch_reg_reg[2][2]_9\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(15),
      O => \m_axis_tdata[23]_i_3_n_0\
    );
\m_axis_tdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[24]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[24]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(16),
      O => \m_axis_tdata[24]_i_1_n_0\
    );
\m_axis_tdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(16),
      I1 => \ch_reg_reg[2][6]_13\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(16),
      O => \m_axis_tdata[24]_i_2_n_0\
    );
\m_axis_tdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(16),
      I1 => \ch_reg_reg[2][2]_9\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(16),
      O => \m_axis_tdata[24]_i_3_n_0\
    );
\m_axis_tdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[25]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[25]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(17),
      O => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(17),
      I1 => \ch_reg_reg[2][6]_13\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(17),
      O => \m_axis_tdata[25]_i_2_n_0\
    );
\m_axis_tdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(17),
      I1 => \ch_reg_reg[2][2]_9\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(17),
      O => \m_axis_tdata[25]_i_3_n_0\
    );
\m_axis_tdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[26]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[26]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(18),
      O => \m_axis_tdata[26]_i_1_n_0\
    );
\m_axis_tdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(18),
      I1 => \ch_reg_reg[2][6]_13\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(18),
      O => \m_axis_tdata[26]_i_2_n_0\
    );
\m_axis_tdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(18),
      I1 => \ch_reg_reg[2][2]_9\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(18),
      O => \m_axis_tdata[26]_i_3_n_0\
    );
\m_axis_tdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[27]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[27]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(19),
      O => \m_axis_tdata[27]_i_1_n_0\
    );
\m_axis_tdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(19),
      I1 => \ch_reg_reg[2][6]_13\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(19),
      O => \m_axis_tdata[27]_i_2_n_0\
    );
\m_axis_tdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(19),
      I1 => \ch_reg_reg[2][2]_9\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(19),
      O => \m_axis_tdata[27]_i_3_n_0\
    );
\m_axis_tdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[28]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[28]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(20),
      O => \m_axis_tdata[28]_i_1_n_0\
    );
\m_axis_tdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(20),
      I1 => \ch_reg_reg[2][6]_13\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(20),
      O => \m_axis_tdata[28]_i_2_n_0\
    );
\m_axis_tdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(20),
      I1 => \ch_reg_reg[2][2]_9\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(20),
      O => \m_axis_tdata[28]_i_3_n_0\
    );
\m_axis_tdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[29]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[29]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(21),
      O => \m_axis_tdata[29]_i_1_n_0\
    );
\m_axis_tdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(21),
      I1 => \ch_reg_reg[2][6]_13\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(21),
      O => \m_axis_tdata[29]_i_2_n_0\
    );
\m_axis_tdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(21),
      I1 => \ch_reg_reg[2][2]_9\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(21),
      O => \m_axis_tdata[29]_i_3_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[2]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[2]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(10),
      O => \m_axis_tdata[2]_i_1_n_0\
    );
\m_axis_tdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(10),
      I1 => \ch_reg_reg[1][6]_5\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(10),
      O => \m_axis_tdata[2]_i_2_n_0\
    );
\m_axis_tdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(10),
      I1 => \ch_reg_reg[1][2]_1\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(10),
      O => \m_axis_tdata[2]_i_3_n_0\
    );
\m_axis_tdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[30]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[30]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(22),
      O => \m_axis_tdata[30]_i_1_n_0\
    );
\m_axis_tdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(22),
      I1 => \ch_reg_reg[2][6]_13\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(22),
      O => \m_axis_tdata[30]_i_2_n_0\
    );
\m_axis_tdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(22),
      I1 => \ch_reg_reg[2][2]_9\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(22),
      O => \m_axis_tdata[30]_i_3_n_0\
    );
\m_axis_tdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[31]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[31]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[2][0]_15\(23),
      O => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][7]_14\(23),
      I1 => \ch_reg_reg[2][6]_13\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][5]_12\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][4]_11\(23),
      O => \m_axis_tdata[31]_i_2_n_0\
    );
\m_axis_tdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[2][3]_10\(23),
      I1 => \ch_reg_reg[2][2]_9\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[2][1]_8\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[2][0]_15\(23),
      O => \m_axis_tdata[31]_i_3_n_0\
    );
\m_axis_tdata[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[32]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[32]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(8),
      O => \m_axis_tdata[32]_i_1_n_0\
    );
\m_axis_tdata[32]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(8),
      I1 => \ch_reg_reg[3][6]_21\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(8),
      O => \m_axis_tdata[32]_i_2_n_0\
    );
\m_axis_tdata[32]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(8),
      I1 => \ch_reg_reg[3][2]_17\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(8),
      O => \m_axis_tdata[32]_i_3_n_0\
    );
\m_axis_tdata[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[33]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[33]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(9),
      O => \m_axis_tdata[33]_i_1_n_0\
    );
\m_axis_tdata[33]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(9),
      I1 => \ch_reg_reg[3][6]_21\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(9),
      O => \m_axis_tdata[33]_i_2_n_0\
    );
\m_axis_tdata[33]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(9),
      I1 => \ch_reg_reg[3][2]_17\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(9),
      O => \m_axis_tdata[33]_i_3_n_0\
    );
\m_axis_tdata[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[34]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[34]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(10),
      O => \m_axis_tdata[34]_i_1_n_0\
    );
\m_axis_tdata[34]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(10),
      I1 => \ch_reg_reg[3][6]_21\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(10),
      O => \m_axis_tdata[34]_i_2_n_0\
    );
\m_axis_tdata[34]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(10),
      I1 => \ch_reg_reg[3][2]_17\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(10),
      O => \m_axis_tdata[34]_i_3_n_0\
    );
\m_axis_tdata[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[35]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[35]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(11),
      O => \m_axis_tdata[35]_i_1_n_0\
    );
\m_axis_tdata[35]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(11),
      I1 => \ch_reg_reg[3][6]_21\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(11),
      O => \m_axis_tdata[35]_i_2_n_0\
    );
\m_axis_tdata[35]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(11),
      I1 => \ch_reg_reg[3][2]_17\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(11),
      O => \m_axis_tdata[35]_i_3_n_0\
    );
\m_axis_tdata[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[36]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[36]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(12),
      O => \m_axis_tdata[36]_i_1_n_0\
    );
\m_axis_tdata[36]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(12),
      I1 => \ch_reg_reg[3][6]_21\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(12),
      O => \m_axis_tdata[36]_i_2_n_0\
    );
\m_axis_tdata[36]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(12),
      I1 => \ch_reg_reg[3][2]_17\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(12),
      O => \m_axis_tdata[36]_i_3_n_0\
    );
\m_axis_tdata[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[37]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[37]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(13),
      O => \m_axis_tdata[37]_i_1_n_0\
    );
\m_axis_tdata[37]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(13),
      I1 => \ch_reg_reg[3][6]_21\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(13),
      O => \m_axis_tdata[37]_i_2_n_0\
    );
\m_axis_tdata[37]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(13),
      I1 => \ch_reg_reg[3][2]_17\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(13),
      O => \m_axis_tdata[37]_i_3_n_0\
    );
\m_axis_tdata[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[38]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[38]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(14),
      O => \m_axis_tdata[38]_i_1_n_0\
    );
\m_axis_tdata[38]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(14),
      I1 => \ch_reg_reg[3][6]_21\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(14),
      O => \m_axis_tdata[38]_i_2_n_0\
    );
\m_axis_tdata[38]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(14),
      I1 => \ch_reg_reg[3][2]_17\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(14),
      O => \m_axis_tdata[38]_i_3_n_0\
    );
\m_axis_tdata[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[39]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[39]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(15),
      O => \m_axis_tdata[39]_i_1_n_0\
    );
\m_axis_tdata[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(15),
      I1 => \ch_reg_reg[3][6]_21\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(15),
      O => \m_axis_tdata[39]_i_2_n_0\
    );
\m_axis_tdata[39]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(15),
      I1 => \ch_reg_reg[3][2]_17\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(15),
      O => \m_axis_tdata[39]_i_3_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[3]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[3]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(11),
      O => \m_axis_tdata[3]_i_1_n_0\
    );
\m_axis_tdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(11),
      I1 => \ch_reg_reg[1][6]_5\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(11),
      O => \m_axis_tdata[3]_i_2_n_0\
    );
\m_axis_tdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(11),
      I1 => \ch_reg_reg[1][2]_1\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(11),
      O => \m_axis_tdata[3]_i_3_n_0\
    );
\m_axis_tdata[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[40]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[40]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(16),
      O => \m_axis_tdata[40]_i_1_n_0\
    );
\m_axis_tdata[40]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(16),
      I1 => \ch_reg_reg[3][6]_21\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(16),
      O => \m_axis_tdata[40]_i_2_n_0\
    );
\m_axis_tdata[40]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(16),
      I1 => \ch_reg_reg[3][2]_17\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(16),
      O => \m_axis_tdata[40]_i_3_n_0\
    );
\m_axis_tdata[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[41]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[41]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(17),
      O => \m_axis_tdata[41]_i_1_n_0\
    );
\m_axis_tdata[41]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(17),
      I1 => \ch_reg_reg[3][6]_21\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(17),
      O => \m_axis_tdata[41]_i_2_n_0\
    );
\m_axis_tdata[41]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(17),
      I1 => \ch_reg_reg[3][2]_17\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(17),
      O => \m_axis_tdata[41]_i_3_n_0\
    );
\m_axis_tdata[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[42]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[42]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(18),
      O => \m_axis_tdata[42]_i_1_n_0\
    );
\m_axis_tdata[42]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(18),
      I1 => \ch_reg_reg[3][6]_21\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(18),
      O => \m_axis_tdata[42]_i_2_n_0\
    );
\m_axis_tdata[42]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(18),
      I1 => \ch_reg_reg[3][2]_17\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(18),
      O => \m_axis_tdata[42]_i_3_n_0\
    );
\m_axis_tdata[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[43]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[43]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(19),
      O => \m_axis_tdata[43]_i_1_n_0\
    );
\m_axis_tdata[43]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(19),
      I1 => \ch_reg_reg[3][6]_21\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(19),
      O => \m_axis_tdata[43]_i_2_n_0\
    );
\m_axis_tdata[43]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(19),
      I1 => \ch_reg_reg[3][2]_17\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(19),
      O => \m_axis_tdata[43]_i_3_n_0\
    );
\m_axis_tdata[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[44]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[44]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(20),
      O => \m_axis_tdata[44]_i_1_n_0\
    );
\m_axis_tdata[44]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(20),
      I1 => \ch_reg_reg[3][6]_21\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(20),
      O => \m_axis_tdata[44]_i_2_n_0\
    );
\m_axis_tdata[44]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(20),
      I1 => \ch_reg_reg[3][2]_17\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(20),
      O => \m_axis_tdata[44]_i_3_n_0\
    );
\m_axis_tdata[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[45]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[45]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(21),
      O => \m_axis_tdata[45]_i_1_n_0\
    );
\m_axis_tdata[45]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(21),
      I1 => \ch_reg_reg[3][6]_21\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(21),
      O => \m_axis_tdata[45]_i_2_n_0\
    );
\m_axis_tdata[45]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(21),
      I1 => \ch_reg_reg[3][2]_17\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(21),
      O => \m_axis_tdata[45]_i_3_n_0\
    );
\m_axis_tdata[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[46]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[46]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(22),
      O => \m_axis_tdata[46]_i_1_n_0\
    );
\m_axis_tdata[46]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(22),
      I1 => \ch_reg_reg[3][6]_21\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(22),
      O => \m_axis_tdata[46]_i_2_n_0\
    );
\m_axis_tdata[46]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(22),
      I1 => \ch_reg_reg[3][2]_17\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(22),
      O => \m_axis_tdata[46]_i_3_n_0\
    );
\m_axis_tdata[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[47]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[47]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[3][0]_23\(23),
      O => \m_axis_tdata[47]_i_1_n_0\
    );
\m_axis_tdata[47]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][7]_22\(23),
      I1 => \ch_reg_reg[3][6]_21\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][5]_20\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][4]_19\(23),
      O => \m_axis_tdata[47]_i_2_n_0\
    );
\m_axis_tdata[47]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[3][3]_18\(23),
      I1 => \ch_reg_reg[3][2]_17\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[3][1]_16\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[3][0]_23\(23),
      O => \m_axis_tdata[47]_i_3_n_0\
    );
\m_axis_tdata[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[48]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[48]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(8),
      O => \m_axis_tdata[48]_i_1_n_0\
    );
\m_axis_tdata[48]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(8),
      I1 => \ch_reg_reg[4][6]_29\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(8),
      O => \m_axis_tdata[48]_i_2_n_0\
    );
\m_axis_tdata[48]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(8),
      I1 => \ch_reg_reg[4][2]_25\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(8),
      O => \m_axis_tdata[48]_i_3_n_0\
    );
\m_axis_tdata[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[49]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[49]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(9),
      O => \m_axis_tdata[49]_i_1_n_0\
    );
\m_axis_tdata[49]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(9),
      I1 => \ch_reg_reg[4][6]_29\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(9),
      O => \m_axis_tdata[49]_i_2_n_0\
    );
\m_axis_tdata[49]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(9),
      I1 => \ch_reg_reg[4][2]_25\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(9),
      O => \m_axis_tdata[49]_i_3_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[4]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[4]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(12),
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(12),
      I1 => \ch_reg_reg[1][6]_5\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(12),
      O => \m_axis_tdata[4]_i_2_n_0\
    );
\m_axis_tdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(12),
      I1 => \ch_reg_reg[1][2]_1\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(12),
      O => \m_axis_tdata[4]_i_3_n_0\
    );
\m_axis_tdata[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[50]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[50]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(10),
      O => \m_axis_tdata[50]_i_1_n_0\
    );
\m_axis_tdata[50]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(10),
      I1 => \ch_reg_reg[4][6]_29\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(10),
      O => \m_axis_tdata[50]_i_2_n_0\
    );
\m_axis_tdata[50]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(10),
      I1 => \ch_reg_reg[4][2]_25\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(10),
      O => \m_axis_tdata[50]_i_3_n_0\
    );
\m_axis_tdata[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[51]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[51]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(11),
      O => \m_axis_tdata[51]_i_1_n_0\
    );
\m_axis_tdata[51]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(11),
      I1 => \ch_reg_reg[4][6]_29\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(11),
      O => \m_axis_tdata[51]_i_2_n_0\
    );
\m_axis_tdata[51]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(11),
      I1 => \ch_reg_reg[4][2]_25\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(11),
      O => \m_axis_tdata[51]_i_3_n_0\
    );
\m_axis_tdata[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[52]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[52]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(12),
      O => \m_axis_tdata[52]_i_1_n_0\
    );
\m_axis_tdata[52]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(12),
      I1 => \ch_reg_reg[4][6]_29\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(12),
      O => \m_axis_tdata[52]_i_2_n_0\
    );
\m_axis_tdata[52]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(12),
      I1 => \ch_reg_reg[4][2]_25\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(12),
      O => \m_axis_tdata[52]_i_3_n_0\
    );
\m_axis_tdata[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[53]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[53]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(13),
      O => \m_axis_tdata[53]_i_1_n_0\
    );
\m_axis_tdata[53]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(13),
      I1 => \ch_reg_reg[4][6]_29\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(13),
      O => \m_axis_tdata[53]_i_2_n_0\
    );
\m_axis_tdata[53]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(13),
      I1 => \ch_reg_reg[4][2]_25\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(13),
      O => \m_axis_tdata[53]_i_3_n_0\
    );
\m_axis_tdata[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[54]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[54]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(14),
      O => \m_axis_tdata[54]_i_1_n_0\
    );
\m_axis_tdata[54]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(14),
      I1 => \ch_reg_reg[4][6]_29\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(14),
      O => \m_axis_tdata[54]_i_2_n_0\
    );
\m_axis_tdata[54]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(14),
      I1 => \ch_reg_reg[4][2]_25\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(14),
      O => \m_axis_tdata[54]_i_3_n_0\
    );
\m_axis_tdata[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[55]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[55]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(15),
      O => \m_axis_tdata[55]_i_1_n_0\
    );
\m_axis_tdata[55]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(15),
      I1 => \ch_reg_reg[4][6]_29\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(15),
      O => \m_axis_tdata[55]_i_2_n_0\
    );
\m_axis_tdata[55]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(15),
      I1 => \ch_reg_reg[4][2]_25\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(15),
      O => \m_axis_tdata[55]_i_3_n_0\
    );
\m_axis_tdata[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[56]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[56]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(16),
      O => \m_axis_tdata[56]_i_1_n_0\
    );
\m_axis_tdata[56]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(16),
      I1 => \ch_reg_reg[4][6]_29\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(16),
      O => \m_axis_tdata[56]_i_2_n_0\
    );
\m_axis_tdata[56]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(16),
      I1 => \ch_reg_reg[4][2]_25\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(16),
      O => \m_axis_tdata[56]_i_3_n_0\
    );
\m_axis_tdata[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[57]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[57]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(17),
      O => \m_axis_tdata[57]_i_1_n_0\
    );
\m_axis_tdata[57]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(17),
      I1 => \ch_reg_reg[4][6]_29\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(17),
      O => \m_axis_tdata[57]_i_2_n_0\
    );
\m_axis_tdata[57]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(17),
      I1 => \ch_reg_reg[4][2]_25\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(17),
      O => \m_axis_tdata[57]_i_3_n_0\
    );
\m_axis_tdata[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[58]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[58]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(18),
      O => \m_axis_tdata[58]_i_1_n_0\
    );
\m_axis_tdata[58]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(18),
      I1 => \ch_reg_reg[4][6]_29\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(18),
      O => \m_axis_tdata[58]_i_2_n_0\
    );
\m_axis_tdata[58]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(18),
      I1 => \ch_reg_reg[4][2]_25\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(18),
      O => \m_axis_tdata[58]_i_3_n_0\
    );
\m_axis_tdata[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[59]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[59]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(19),
      O => \m_axis_tdata[59]_i_1_n_0\
    );
\m_axis_tdata[59]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(19),
      I1 => \ch_reg_reg[4][6]_29\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(19),
      O => \m_axis_tdata[59]_i_2_n_0\
    );
\m_axis_tdata[59]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(19),
      I1 => \ch_reg_reg[4][2]_25\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(19),
      O => \m_axis_tdata[59]_i_3_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[5]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[5]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(13),
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(13),
      I1 => \ch_reg_reg[1][6]_5\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(13),
      O => \m_axis_tdata[5]_i_2_n_0\
    );
\m_axis_tdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(13),
      I1 => \ch_reg_reg[1][2]_1\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(13),
      O => \m_axis_tdata[5]_i_3_n_0\
    );
\m_axis_tdata[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[60]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[60]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(20),
      O => \m_axis_tdata[60]_i_1_n_0\
    );
\m_axis_tdata[60]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(20),
      I1 => \ch_reg_reg[4][6]_29\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(20),
      O => \m_axis_tdata[60]_i_2_n_0\
    );
\m_axis_tdata[60]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(20),
      I1 => \ch_reg_reg[4][2]_25\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(20),
      O => \m_axis_tdata[60]_i_3_n_0\
    );
\m_axis_tdata[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[61]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[61]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(21),
      O => \m_axis_tdata[61]_i_1_n_0\
    );
\m_axis_tdata[61]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(21),
      I1 => \ch_reg_reg[4][6]_29\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(21),
      O => \m_axis_tdata[61]_i_2_n_0\
    );
\m_axis_tdata[61]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(21),
      I1 => \ch_reg_reg[4][2]_25\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(21),
      O => \m_axis_tdata[61]_i_3_n_0\
    );
\m_axis_tdata[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[62]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[62]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(22),
      O => \m_axis_tdata[62]_i_1_n_0\
    );
\m_axis_tdata[62]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(22),
      I1 => \ch_reg_reg[4][6]_29\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(22),
      O => \m_axis_tdata[62]_i_2_n_0\
    );
\m_axis_tdata[62]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(22),
      I1 => \ch_reg_reg[4][2]_25\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(22),
      O => \m_axis_tdata[62]_i_3_n_0\
    );
\m_axis_tdata[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[63]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[63]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[4][0]_31\(23),
      O => \m_axis_tdata[63]_i_1_n_0\
    );
\m_axis_tdata[63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][7]_30\(23),
      I1 => \ch_reg_reg[4][6]_29\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][5]_28\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][4]_27\(23),
      O => \m_axis_tdata[63]_i_2_n_0\
    );
\m_axis_tdata[63]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[4][3]_26\(23),
      I1 => \ch_reg_reg[4][2]_25\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[4][1]_24\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[4][0]_31\(23),
      O => \m_axis_tdata[63]_i_3_n_0\
    );
\m_axis_tdata[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[64]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[64]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(8),
      O => \m_axis_tdata[64]_i_1_n_0\
    );
\m_axis_tdata[64]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(8),
      I1 => \ch_reg_reg[5][6]_37\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(8),
      O => \m_axis_tdata[64]_i_2_n_0\
    );
\m_axis_tdata[64]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(8),
      I1 => \ch_reg_reg[5][2]_33\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(8),
      O => \m_axis_tdata[64]_i_3_n_0\
    );
\m_axis_tdata[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[65]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[65]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(9),
      O => \m_axis_tdata[65]_i_1_n_0\
    );
\m_axis_tdata[65]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(9),
      I1 => \ch_reg_reg[5][6]_37\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(9),
      O => \m_axis_tdata[65]_i_2_n_0\
    );
\m_axis_tdata[65]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(9),
      I1 => \ch_reg_reg[5][2]_33\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(9),
      O => \m_axis_tdata[65]_i_3_n_0\
    );
\m_axis_tdata[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[66]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[66]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(10),
      O => \m_axis_tdata[66]_i_1_n_0\
    );
\m_axis_tdata[66]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(10),
      I1 => \ch_reg_reg[5][6]_37\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(10),
      O => \m_axis_tdata[66]_i_2_n_0\
    );
\m_axis_tdata[66]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(10),
      I1 => \ch_reg_reg[5][2]_33\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(10),
      O => \m_axis_tdata[66]_i_3_n_0\
    );
\m_axis_tdata[67]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[67]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[67]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(11),
      O => \m_axis_tdata[67]_i_1_n_0\
    );
\m_axis_tdata[67]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(11),
      I1 => \ch_reg_reg[5][6]_37\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(11),
      O => \m_axis_tdata[67]_i_2_n_0\
    );
\m_axis_tdata[67]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(11),
      I1 => \ch_reg_reg[5][2]_33\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(11),
      O => \m_axis_tdata[67]_i_3_n_0\
    );
\m_axis_tdata[68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[68]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[68]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(12),
      O => \m_axis_tdata[68]_i_1_n_0\
    );
\m_axis_tdata[68]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(12),
      I1 => \ch_reg_reg[5][6]_37\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(12),
      O => \m_axis_tdata[68]_i_2_n_0\
    );
\m_axis_tdata[68]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(12),
      I1 => \ch_reg_reg[5][2]_33\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(12),
      O => \m_axis_tdata[68]_i_3_n_0\
    );
\m_axis_tdata[69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[69]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[69]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(13),
      O => \m_axis_tdata[69]_i_1_n_0\
    );
\m_axis_tdata[69]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(13),
      I1 => \ch_reg_reg[5][6]_37\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(13),
      O => \m_axis_tdata[69]_i_2_n_0\
    );
\m_axis_tdata[69]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(13),
      I1 => \ch_reg_reg[5][2]_33\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(13),
      O => \m_axis_tdata[69]_i_3_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[6]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[6]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(14),
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(14),
      I1 => \ch_reg_reg[1][6]_5\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(14),
      O => \m_axis_tdata[6]_i_2_n_0\
    );
\m_axis_tdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(14),
      I1 => \ch_reg_reg[1][2]_1\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(14),
      O => \m_axis_tdata[6]_i_3_n_0\
    );
\m_axis_tdata[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[70]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[70]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(14),
      O => \m_axis_tdata[70]_i_1_n_0\
    );
\m_axis_tdata[70]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(14),
      I1 => \ch_reg_reg[5][6]_37\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(14),
      O => \m_axis_tdata[70]_i_2_n_0\
    );
\m_axis_tdata[70]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(14),
      I1 => \ch_reg_reg[5][2]_33\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(14),
      O => \m_axis_tdata[70]_i_3_n_0\
    );
\m_axis_tdata[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[71]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[71]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(15),
      O => \m_axis_tdata[71]_i_1_n_0\
    );
\m_axis_tdata[71]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(15),
      I1 => \ch_reg_reg[5][6]_37\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(15),
      O => \m_axis_tdata[71]_i_2_n_0\
    );
\m_axis_tdata[71]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(15),
      I1 => \ch_reg_reg[5][2]_33\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(15),
      O => \m_axis_tdata[71]_i_3_n_0\
    );
\m_axis_tdata[72]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[72]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[72]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(16),
      O => \m_axis_tdata[72]_i_1_n_0\
    );
\m_axis_tdata[72]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(16),
      I1 => \ch_reg_reg[5][6]_37\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(16),
      O => \m_axis_tdata[72]_i_2_n_0\
    );
\m_axis_tdata[72]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(16),
      I1 => \ch_reg_reg[5][2]_33\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(16),
      O => \m_axis_tdata[72]_i_3_n_0\
    );
\m_axis_tdata[73]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[73]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[73]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(17),
      O => \m_axis_tdata[73]_i_1_n_0\
    );
\m_axis_tdata[73]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(17),
      I1 => \ch_reg_reg[5][6]_37\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(17),
      O => \m_axis_tdata[73]_i_2_n_0\
    );
\m_axis_tdata[73]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(17),
      I1 => \ch_reg_reg[5][2]_33\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(17),
      O => \m_axis_tdata[73]_i_3_n_0\
    );
\m_axis_tdata[74]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[74]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[74]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(18),
      O => \m_axis_tdata[74]_i_1_n_0\
    );
\m_axis_tdata[74]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(18),
      I1 => \ch_reg_reg[5][6]_37\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(18),
      O => \m_axis_tdata[74]_i_2_n_0\
    );
\m_axis_tdata[74]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(18),
      I1 => \ch_reg_reg[5][2]_33\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(18),
      O => \m_axis_tdata[74]_i_3_n_0\
    );
\m_axis_tdata[75]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[75]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[75]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(19),
      O => \m_axis_tdata[75]_i_1_n_0\
    );
\m_axis_tdata[75]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(19),
      I1 => \ch_reg_reg[5][6]_37\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(19),
      O => \m_axis_tdata[75]_i_2_n_0\
    );
\m_axis_tdata[75]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(19),
      I1 => \ch_reg_reg[5][2]_33\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(19),
      O => \m_axis_tdata[75]_i_3_n_0\
    );
\m_axis_tdata[76]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[76]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[76]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(20),
      O => \m_axis_tdata[76]_i_1_n_0\
    );
\m_axis_tdata[76]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(20),
      I1 => \ch_reg_reg[5][6]_37\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(20),
      O => \m_axis_tdata[76]_i_2_n_0\
    );
\m_axis_tdata[76]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(20),
      I1 => \ch_reg_reg[5][2]_33\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(20),
      O => \m_axis_tdata[76]_i_3_n_0\
    );
\m_axis_tdata[77]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[77]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[77]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(21),
      O => \m_axis_tdata[77]_i_1_n_0\
    );
\m_axis_tdata[77]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(21),
      I1 => \ch_reg_reg[5][6]_37\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(21),
      O => \m_axis_tdata[77]_i_2_n_0\
    );
\m_axis_tdata[77]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(21),
      I1 => \ch_reg_reg[5][2]_33\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(21),
      O => \m_axis_tdata[77]_i_3_n_0\
    );
\m_axis_tdata[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[78]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[78]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(22),
      O => \m_axis_tdata[78]_i_1_n_0\
    );
\m_axis_tdata[78]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(22),
      I1 => \ch_reg_reg[5][6]_37\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(22),
      O => \m_axis_tdata[78]_i_2_n_0\
    );
\m_axis_tdata[78]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(22),
      I1 => \ch_reg_reg[5][2]_33\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(22),
      O => \m_axis_tdata[78]_i_3_n_0\
    );
\m_axis_tdata[79]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[79]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[79]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[5][0]_39\(23),
      O => \m_axis_tdata[79]_i_1_n_0\
    );
\m_axis_tdata[79]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][7]_38\(23),
      I1 => \ch_reg_reg[5][6]_37\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][5]_36\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][4]_35\(23),
      O => \m_axis_tdata[79]_i_2_n_0\
    );
\m_axis_tdata[79]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[5][3]_34\(23),
      I1 => \ch_reg_reg[5][2]_33\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[5][1]_32\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[5][0]_39\(23),
      O => \m_axis_tdata[79]_i_3_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[7]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(15),
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(15),
      I1 => \ch_reg_reg[1][6]_5\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(15),
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(15),
      I1 => \ch_reg_reg[1][2]_1\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(15),
      O => \m_axis_tdata[7]_i_3_n_0\
    );
\m_axis_tdata[80]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[80]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[80]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(8),
      O => \m_axis_tdata[80]_i_1_n_0\
    );
\m_axis_tdata[80]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(8),
      I1 => \ch_reg_reg[6][6]_45\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(8),
      O => \m_axis_tdata[80]_i_2_n_0\
    );
\m_axis_tdata[80]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(8),
      I1 => \ch_reg_reg[6][2]_41\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(8),
      O => \m_axis_tdata[80]_i_3_n_0\
    );
\m_axis_tdata[81]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[81]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[81]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(9),
      O => \m_axis_tdata[81]_i_1_n_0\
    );
\m_axis_tdata[81]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(9),
      I1 => \ch_reg_reg[6][6]_45\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(9),
      O => \m_axis_tdata[81]_i_2_n_0\
    );
\m_axis_tdata[81]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(9),
      I1 => \ch_reg_reg[6][2]_41\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(9),
      O => \m_axis_tdata[81]_i_3_n_0\
    );
\m_axis_tdata[82]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[82]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[82]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(10),
      O => \m_axis_tdata[82]_i_1_n_0\
    );
\m_axis_tdata[82]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(10),
      I1 => \ch_reg_reg[6][6]_45\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(10),
      O => \m_axis_tdata[82]_i_2_n_0\
    );
\m_axis_tdata[82]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(10),
      I1 => \ch_reg_reg[6][2]_41\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(10),
      O => \m_axis_tdata[82]_i_3_n_0\
    );
\m_axis_tdata[83]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[83]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[83]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(11),
      O => \m_axis_tdata[83]_i_1_n_0\
    );
\m_axis_tdata[83]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(11),
      I1 => \ch_reg_reg[6][6]_45\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(11),
      O => \m_axis_tdata[83]_i_2_n_0\
    );
\m_axis_tdata[83]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(11),
      I1 => \ch_reg_reg[6][2]_41\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(11),
      O => \m_axis_tdata[83]_i_3_n_0\
    );
\m_axis_tdata[84]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[84]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[84]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(12),
      O => \m_axis_tdata[84]_i_1_n_0\
    );
\m_axis_tdata[84]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(12),
      I1 => \ch_reg_reg[6][6]_45\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(12),
      O => \m_axis_tdata[84]_i_2_n_0\
    );
\m_axis_tdata[84]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(12),
      I1 => \ch_reg_reg[6][2]_41\(12),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(12),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(12),
      O => \m_axis_tdata[84]_i_3_n_0\
    );
\m_axis_tdata[85]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[85]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[85]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(13),
      O => \m_axis_tdata[85]_i_1_n_0\
    );
\m_axis_tdata[85]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(13),
      I1 => \ch_reg_reg[6][6]_45\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(13),
      O => \m_axis_tdata[85]_i_2_n_0\
    );
\m_axis_tdata[85]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(13),
      I1 => \ch_reg_reg[6][2]_41\(13),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(13),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(13),
      O => \m_axis_tdata[85]_i_3_n_0\
    );
\m_axis_tdata[86]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[86]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[86]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(14),
      O => \m_axis_tdata[86]_i_1_n_0\
    );
\m_axis_tdata[86]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(14),
      I1 => \ch_reg_reg[6][6]_45\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(14),
      O => \m_axis_tdata[86]_i_2_n_0\
    );
\m_axis_tdata[86]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(14),
      I1 => \ch_reg_reg[6][2]_41\(14),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(14),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(14),
      O => \m_axis_tdata[86]_i_3_n_0\
    );
\m_axis_tdata[87]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[87]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[87]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(15),
      O => \m_axis_tdata[87]_i_1_n_0\
    );
\m_axis_tdata[87]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(15),
      I1 => \ch_reg_reg[6][6]_45\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(15),
      O => \m_axis_tdata[87]_i_2_n_0\
    );
\m_axis_tdata[87]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(15),
      I1 => \ch_reg_reg[6][2]_41\(15),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(15),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(15),
      O => \m_axis_tdata[87]_i_3_n_0\
    );
\m_axis_tdata[88]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[88]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[88]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(16),
      O => \m_axis_tdata[88]_i_1_n_0\
    );
\m_axis_tdata[88]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(16),
      I1 => \ch_reg_reg[6][6]_45\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(16),
      O => \m_axis_tdata[88]_i_2_n_0\
    );
\m_axis_tdata[88]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(16),
      I1 => \ch_reg_reg[6][2]_41\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(16),
      O => \m_axis_tdata[88]_i_3_n_0\
    );
\m_axis_tdata[89]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[89]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[89]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(17),
      O => \m_axis_tdata[89]_i_1_n_0\
    );
\m_axis_tdata[89]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(17),
      I1 => \ch_reg_reg[6][6]_45\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(17),
      O => \m_axis_tdata[89]_i_2_n_0\
    );
\m_axis_tdata[89]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(17),
      I1 => \ch_reg_reg[6][2]_41\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(17),
      O => \m_axis_tdata[89]_i_3_n_0\
    );
\m_axis_tdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[8]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[8]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(16),
      O => \m_axis_tdata[8]_i_1_n_0\
    );
\m_axis_tdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(16),
      I1 => \ch_reg_reg[1][6]_5\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(16),
      O => \m_axis_tdata[8]_i_2_n_0\
    );
\m_axis_tdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(16),
      I1 => \ch_reg_reg[1][2]_1\(16),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(16),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(16),
      O => \m_axis_tdata[8]_i_3_n_0\
    );
\m_axis_tdata[90]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[90]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[90]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(18),
      O => \m_axis_tdata[90]_i_1_n_0\
    );
\m_axis_tdata[90]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(18),
      I1 => \ch_reg_reg[6][6]_45\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(18),
      O => \m_axis_tdata[90]_i_2_n_0\
    );
\m_axis_tdata[90]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(18),
      I1 => \ch_reg_reg[6][2]_41\(18),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(18),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(18),
      O => \m_axis_tdata[90]_i_3_n_0\
    );
\m_axis_tdata[91]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[91]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[91]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(19),
      O => \m_axis_tdata[91]_i_1_n_0\
    );
\m_axis_tdata[91]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(19),
      I1 => \ch_reg_reg[6][6]_45\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(19),
      O => \m_axis_tdata[91]_i_2_n_0\
    );
\m_axis_tdata[91]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(19),
      I1 => \ch_reg_reg[6][2]_41\(19),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(19),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(19),
      O => \m_axis_tdata[91]_i_3_n_0\
    );
\m_axis_tdata[92]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[92]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[92]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(20),
      O => \m_axis_tdata[92]_i_1_n_0\
    );
\m_axis_tdata[92]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(20),
      I1 => \ch_reg_reg[6][6]_45\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(20),
      O => \m_axis_tdata[92]_i_2_n_0\
    );
\m_axis_tdata[92]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(20),
      I1 => \ch_reg_reg[6][2]_41\(20),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(20),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(20),
      O => \m_axis_tdata[92]_i_3_n_0\
    );
\m_axis_tdata[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[93]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[93]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(21),
      O => \m_axis_tdata[93]_i_1_n_0\
    );
\m_axis_tdata[93]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(21),
      I1 => \ch_reg_reg[6][6]_45\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(21),
      O => \m_axis_tdata[93]_i_2_n_0\
    );
\m_axis_tdata[93]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(21),
      I1 => \ch_reg_reg[6][2]_41\(21),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(21),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(21),
      O => \m_axis_tdata[93]_i_3_n_0\
    );
\m_axis_tdata[94]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[94]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[94]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(22),
      O => \m_axis_tdata[94]_i_1_n_0\
    );
\m_axis_tdata[94]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(22),
      I1 => \ch_reg_reg[6][6]_45\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(22),
      O => \m_axis_tdata[94]_i_2_n_0\
    );
\m_axis_tdata[94]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(22),
      I1 => \ch_reg_reg[6][2]_41\(22),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(22),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(22),
      O => \m_axis_tdata[94]_i_3_n_0\
    );
\m_axis_tdata[95]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[95]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[95]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[6][0]_47\(23),
      O => \m_axis_tdata[95]_i_1_n_0\
    );
\m_axis_tdata[95]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][7]_46\(23),
      I1 => \ch_reg_reg[6][6]_45\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][5]_44\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][4]_43\(23),
      O => \m_axis_tdata[95]_i_2_n_0\
    );
\m_axis_tdata[95]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[6][3]_42\(23),
      I1 => \ch_reg_reg[6][2]_41\(23),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[6][1]_40\(23),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[6][0]_47\(23),
      O => \m_axis_tdata[95]_i_3_n_0\
    );
\m_axis_tdata[96]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[96]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[96]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(8),
      O => \m_axis_tdata[96]_i_1_n_0\
    );
\m_axis_tdata[96]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(8),
      I1 => \ch_reg_reg[7][6]_53\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(8),
      O => \m_axis_tdata[96]_i_2_n_0\
    );
\m_axis_tdata[96]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(8),
      I1 => \ch_reg_reg[7][2]_49\(8),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(8),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(8),
      O => \m_axis_tdata[96]_i_3_n_0\
    );
\m_axis_tdata[97]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[97]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[97]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(9),
      O => \m_axis_tdata[97]_i_1_n_0\
    );
\m_axis_tdata[97]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(9),
      I1 => \ch_reg_reg[7][6]_53\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(9),
      O => \m_axis_tdata[97]_i_2_n_0\
    );
\m_axis_tdata[97]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(9),
      I1 => \ch_reg_reg[7][2]_49\(9),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(9),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(9),
      O => \m_axis_tdata[97]_i_3_n_0\
    );
\m_axis_tdata[98]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[98]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[98]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(10),
      O => \m_axis_tdata[98]_i_1_n_0\
    );
\m_axis_tdata[98]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(10),
      I1 => \ch_reg_reg[7][6]_53\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(10),
      O => \m_axis_tdata[98]_i_2_n_0\
    );
\m_axis_tdata[98]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(10),
      I1 => \ch_reg_reg[7][2]_49\(10),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(10),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(10),
      O => \m_axis_tdata[98]_i_3_n_0\
    );
\m_axis_tdata[99]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[99]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[99]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[7][0]_55\(11),
      O => \m_axis_tdata[99]_i_1_n_0\
    );
\m_axis_tdata[99]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][7]_54\(11),
      I1 => \ch_reg_reg[7][6]_53\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][5]_52\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][4]_51\(11),
      O => \m_axis_tdata[99]_i_2_n_0\
    );
\m_axis_tdata[99]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[7][3]_50\(11),
      I1 => \ch_reg_reg[7][2]_49\(11),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[7][1]_48\(11),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[7][0]_55\(11),
      O => \m_axis_tdata[99]_i_3_n_0\
    );
\m_axis_tdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \m_axis_tdata[9]_i_2_n_0\,
      I1 => burst_cnt(2),
      I2 => \m_axis_tdata[9]_i_3_n_0\,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => \ch_reg_reg[1][0]_7\(17),
      O => \m_axis_tdata[9]_i_1_n_0\
    );
\m_axis_tdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][7]_6\(17),
      I1 => \ch_reg_reg[1][6]_5\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][5]_4\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][4]_3\(17),
      O => \m_axis_tdata[9]_i_2_n_0\
    );
\m_axis_tdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \ch_reg_reg[1][3]_2\(17),
      I1 => \ch_reg_reg[1][2]_1\(17),
      I2 => burst_cnt(1),
      I3 => \ch_reg_reg[1][1]_0\(17),
      I4 => burst_cnt(0),
      I5 => \ch_reg_reg[1][0]_7\(17),
      O => \m_axis_tdata[9]_i_3_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => m_axis_tdata(0)
    );
\m_axis_tdata_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[100]_i_1_n_0\,
      Q => m_axis_tdata(100)
    );
\m_axis_tdata_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[101]_i_1_n_0\,
      Q => m_axis_tdata(101)
    );
\m_axis_tdata_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[102]_i_1_n_0\,
      Q => m_axis_tdata(102)
    );
\m_axis_tdata_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[103]_i_1_n_0\,
      Q => m_axis_tdata(103)
    );
\m_axis_tdata_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[104]_i_1_n_0\,
      Q => m_axis_tdata(104)
    );
\m_axis_tdata_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[105]_i_1_n_0\,
      Q => m_axis_tdata(105)
    );
\m_axis_tdata_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[106]_i_1_n_0\,
      Q => m_axis_tdata(106)
    );
\m_axis_tdata_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[107]_i_1_n_0\,
      Q => m_axis_tdata(107)
    );
\m_axis_tdata_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[108]_i_1_n_0\,
      Q => m_axis_tdata(108)
    );
\m_axis_tdata_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[109]_i_1_n_0\,
      Q => m_axis_tdata(109)
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[10]_i_1_n_0\,
      Q => m_axis_tdata(10)
    );
\m_axis_tdata_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[110]_i_1_n_0\,
      Q => m_axis_tdata(110)
    );
\m_axis_tdata_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[111]_i_1_n_0\,
      Q => m_axis_tdata(111)
    );
\m_axis_tdata_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[112]_i_1_n_0\,
      Q => m_axis_tdata(112)
    );
\m_axis_tdata_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[113]_i_1_n_0\,
      Q => m_axis_tdata(113)
    );
\m_axis_tdata_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[114]_i_1_n_0\,
      Q => m_axis_tdata(114)
    );
\m_axis_tdata_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[115]_i_1_n_0\,
      Q => m_axis_tdata(115)
    );
\m_axis_tdata_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[116]_i_1_n_0\,
      Q => m_axis_tdata(116)
    );
\m_axis_tdata_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[117]_i_1_n_0\,
      Q => m_axis_tdata(117)
    );
\m_axis_tdata_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[118]_i_1_n_0\,
      Q => m_axis_tdata(118)
    );
\m_axis_tdata_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[119]_i_1_n_0\,
      Q => m_axis_tdata(119)
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[11]_i_1_n_0\,
      Q => m_axis_tdata(11)
    );
\m_axis_tdata_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[120]_i_1_n_0\,
      Q => m_axis_tdata(120)
    );
\m_axis_tdata_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[121]_i_1_n_0\,
      Q => m_axis_tdata(121)
    );
\m_axis_tdata_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[122]_i_1_n_0\,
      Q => m_axis_tdata(122)
    );
\m_axis_tdata_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[123]_i_1_n_0\,
      Q => m_axis_tdata(123)
    );
\m_axis_tdata_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[124]_i_1_n_0\,
      Q => m_axis_tdata(124)
    );
\m_axis_tdata_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[125]_i_1_n_0\,
      Q => m_axis_tdata(125)
    );
\m_axis_tdata_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[126]_i_1_n_0\,
      Q => m_axis_tdata(126)
    );
\m_axis_tdata_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[127]_i_2_n_0\,
      Q => m_axis_tdata(127)
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[12]_i_1_n_0\,
      Q => m_axis_tdata(12)
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[13]_i_1_n_0\,
      Q => m_axis_tdata(13)
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[14]_i_1_n_0\,
      Q => m_axis_tdata(14)
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[15]_i_1_n_0\,
      Q => m_axis_tdata(15)
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[16]_i_1_n_0\,
      Q => m_axis_tdata(16)
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[17]_i_1_n_0\,
      Q => m_axis_tdata(17)
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[18]_i_1_n_0\,
      Q => m_axis_tdata(18)
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[19]_i_1_n_0\,
      Q => m_axis_tdata(19)
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => m_axis_tdata(1)
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[20]_i_1_n_0\,
      Q => m_axis_tdata(20)
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[21]_i_1_n_0\,
      Q => m_axis_tdata(21)
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[22]_i_1_n_0\,
      Q => m_axis_tdata(22)
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[23]_i_1_n_0\,
      Q => m_axis_tdata(23)
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[24]_i_1_n_0\,
      Q => m_axis_tdata(24)
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[25]_i_1_n_0\,
      Q => m_axis_tdata(25)
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[26]_i_1_n_0\,
      Q => m_axis_tdata(26)
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[27]_i_1_n_0\,
      Q => m_axis_tdata(27)
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[28]_i_1_n_0\,
      Q => m_axis_tdata(28)
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[29]_i_1_n_0\,
      Q => m_axis_tdata(29)
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[2]_i_1_n_0\,
      Q => m_axis_tdata(2)
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[30]_i_1_n_0\,
      Q => m_axis_tdata(30)
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[31]_i_1_n_0\,
      Q => m_axis_tdata(31)
    );
\m_axis_tdata_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[32]_i_1_n_0\,
      Q => m_axis_tdata(32)
    );
\m_axis_tdata_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[33]_i_1_n_0\,
      Q => m_axis_tdata(33)
    );
\m_axis_tdata_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[34]_i_1_n_0\,
      Q => m_axis_tdata(34)
    );
\m_axis_tdata_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[35]_i_1_n_0\,
      Q => m_axis_tdata(35)
    );
\m_axis_tdata_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[36]_i_1_n_0\,
      Q => m_axis_tdata(36)
    );
\m_axis_tdata_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[37]_i_1_n_0\,
      Q => m_axis_tdata(37)
    );
\m_axis_tdata_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[38]_i_1_n_0\,
      Q => m_axis_tdata(38)
    );
\m_axis_tdata_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[39]_i_1_n_0\,
      Q => m_axis_tdata(39)
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[3]_i_1_n_0\,
      Q => m_axis_tdata(3)
    );
\m_axis_tdata_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[40]_i_1_n_0\,
      Q => m_axis_tdata(40)
    );
\m_axis_tdata_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[41]_i_1_n_0\,
      Q => m_axis_tdata(41)
    );
\m_axis_tdata_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[42]_i_1_n_0\,
      Q => m_axis_tdata(42)
    );
\m_axis_tdata_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[43]_i_1_n_0\,
      Q => m_axis_tdata(43)
    );
\m_axis_tdata_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[44]_i_1_n_0\,
      Q => m_axis_tdata(44)
    );
\m_axis_tdata_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[45]_i_1_n_0\,
      Q => m_axis_tdata(45)
    );
\m_axis_tdata_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[46]_i_1_n_0\,
      Q => m_axis_tdata(46)
    );
\m_axis_tdata_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[47]_i_1_n_0\,
      Q => m_axis_tdata(47)
    );
\m_axis_tdata_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[48]_i_1_n_0\,
      Q => m_axis_tdata(48)
    );
\m_axis_tdata_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[49]_i_1_n_0\,
      Q => m_axis_tdata(49)
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[4]_i_1_n_0\,
      Q => m_axis_tdata(4)
    );
\m_axis_tdata_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[50]_i_1_n_0\,
      Q => m_axis_tdata(50)
    );
\m_axis_tdata_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[51]_i_1_n_0\,
      Q => m_axis_tdata(51)
    );
\m_axis_tdata_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[52]_i_1_n_0\,
      Q => m_axis_tdata(52)
    );
\m_axis_tdata_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[53]_i_1_n_0\,
      Q => m_axis_tdata(53)
    );
\m_axis_tdata_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[54]_i_1_n_0\,
      Q => m_axis_tdata(54)
    );
\m_axis_tdata_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[55]_i_1_n_0\,
      Q => m_axis_tdata(55)
    );
\m_axis_tdata_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[56]_i_1_n_0\,
      Q => m_axis_tdata(56)
    );
\m_axis_tdata_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[57]_i_1_n_0\,
      Q => m_axis_tdata(57)
    );
\m_axis_tdata_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[58]_i_1_n_0\,
      Q => m_axis_tdata(58)
    );
\m_axis_tdata_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[59]_i_1_n_0\,
      Q => m_axis_tdata(59)
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[5]_i_1_n_0\,
      Q => m_axis_tdata(5)
    );
\m_axis_tdata_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[60]_i_1_n_0\,
      Q => m_axis_tdata(60)
    );
\m_axis_tdata_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[61]_i_1_n_0\,
      Q => m_axis_tdata(61)
    );
\m_axis_tdata_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[62]_i_1_n_0\,
      Q => m_axis_tdata(62)
    );
\m_axis_tdata_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[63]_i_1_n_0\,
      Q => m_axis_tdata(63)
    );
\m_axis_tdata_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[64]_i_1_n_0\,
      Q => m_axis_tdata(64)
    );
\m_axis_tdata_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[65]_i_1_n_0\,
      Q => m_axis_tdata(65)
    );
\m_axis_tdata_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[66]_i_1_n_0\,
      Q => m_axis_tdata(66)
    );
\m_axis_tdata_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[67]_i_1_n_0\,
      Q => m_axis_tdata(67)
    );
\m_axis_tdata_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[68]_i_1_n_0\,
      Q => m_axis_tdata(68)
    );
\m_axis_tdata_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[69]_i_1_n_0\,
      Q => m_axis_tdata(69)
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[6]_i_1_n_0\,
      Q => m_axis_tdata(6)
    );
\m_axis_tdata_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[70]_i_1_n_0\,
      Q => m_axis_tdata(70)
    );
\m_axis_tdata_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[71]_i_1_n_0\,
      Q => m_axis_tdata(71)
    );
\m_axis_tdata_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[72]_i_1_n_0\,
      Q => m_axis_tdata(72)
    );
\m_axis_tdata_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[73]_i_1_n_0\,
      Q => m_axis_tdata(73)
    );
\m_axis_tdata_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[74]_i_1_n_0\,
      Q => m_axis_tdata(74)
    );
\m_axis_tdata_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[75]_i_1_n_0\,
      Q => m_axis_tdata(75)
    );
\m_axis_tdata_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[76]_i_1_n_0\,
      Q => m_axis_tdata(76)
    );
\m_axis_tdata_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[77]_i_1_n_0\,
      Q => m_axis_tdata(77)
    );
\m_axis_tdata_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[78]_i_1_n_0\,
      Q => m_axis_tdata(78)
    );
\m_axis_tdata_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[79]_i_1_n_0\,
      Q => m_axis_tdata(79)
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[7]_i_1_n_0\,
      Q => m_axis_tdata(7)
    );
\m_axis_tdata_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[80]_i_1_n_0\,
      Q => m_axis_tdata(80)
    );
\m_axis_tdata_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[81]_i_1_n_0\,
      Q => m_axis_tdata(81)
    );
\m_axis_tdata_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[82]_i_1_n_0\,
      Q => m_axis_tdata(82)
    );
\m_axis_tdata_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[83]_i_1_n_0\,
      Q => m_axis_tdata(83)
    );
\m_axis_tdata_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[84]_i_1_n_0\,
      Q => m_axis_tdata(84)
    );
\m_axis_tdata_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[85]_i_1_n_0\,
      Q => m_axis_tdata(85)
    );
\m_axis_tdata_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[86]_i_1_n_0\,
      Q => m_axis_tdata(86)
    );
\m_axis_tdata_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[87]_i_1_n_0\,
      Q => m_axis_tdata(87)
    );
\m_axis_tdata_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[88]_i_1_n_0\,
      Q => m_axis_tdata(88)
    );
\m_axis_tdata_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[89]_i_1_n_0\,
      Q => m_axis_tdata(89)
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[8]_i_1_n_0\,
      Q => m_axis_tdata(8)
    );
\m_axis_tdata_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[90]_i_1_n_0\,
      Q => m_axis_tdata(90)
    );
\m_axis_tdata_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[91]_i_1_n_0\,
      Q => m_axis_tdata(91)
    );
\m_axis_tdata_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[92]_i_1_n_0\,
      Q => m_axis_tdata(92)
    );
\m_axis_tdata_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[93]_i_1_n_0\,
      Q => m_axis_tdata(93)
    );
\m_axis_tdata_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[94]_i_1_n_0\,
      Q => m_axis_tdata(94)
    );
\m_axis_tdata_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[95]_i_1_n_0\,
      Q => m_axis_tdata(95)
    );
\m_axis_tdata_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[96]_i_1_n_0\,
      Q => m_axis_tdata(96)
    );
\m_axis_tdata_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[97]_i_1_n_0\,
      Q => m_axis_tdata(97)
    );
\m_axis_tdata_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[98]_i_1_n_0\,
      Q => m_axis_tdata(98)
    );
\m_axis_tdata_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[99]_i_1_n_0\,
      Q => m_axis_tdata(99)
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \m_axis_tdata[127]_i_1_n_0\,
      CLR => pl_work_i_2_n_0,
      D => \m_axis_tdata[9]_i_1_n_0\,
      Q => m_axis_tdata(9)
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74774444"
    )
        port map (
      I0 => burst_cnt(0),
      I1 => m_axis_tlast_i_2_n_0,
      I2 => burst_start_d2,
      I3 => burst_start_d1,
      I4 => \^m_axis_tlast\,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_0\,
      I1 => m_axis_tready,
      I2 => burst_cnt(1),
      I3 => burst_cnt(2),
      O => m_axis_tlast_i_2_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => pl_work_i_2_n_0,
      D => m_axis_tlast_i_1_n_0,
      Q => \^m_axis_tlast\
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5510"
    )
        port map (
      I0 => led_cnt,
      I1 => burst_start_d2,
      I2 => burst_start_d1,
      I3 => \^m_axis_tvalid_reg_0\,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => pl_work_i_2_n_0,
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid_reg_0\
    );
pcm_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF08000000"
    )
        port map (
      I0 => fsync_48K,
      I1 => \^bclk_reg_0\,
      I2 => \ch_reg[1][1][23]_i_4_n_0\,
      I3 => pcm_valid_i_2_n_0,
      I4 => pcm_valid0,
      I5 => pcm_valid,
      O => pcm_valid_i_1_n_0
    );
pcm_valid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => fsync_48K_i_11_n_0,
      I1 => pcm_valid_i_4_n_0,
      I2 => fsync_48K_i_12_n_0,
      I3 => pcm_valid_i_5_n_0,
      O => pcm_valid_i_2_n_0
    );
pcm_valid_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \fsync_wait_cnt_reg__0\(7),
      I1 => \fsync_wait_cnt[7]_i_3_n_0\,
      I2 => \fsync_wait_cnt_reg__0\(6),
      O => pcm_valid0
    );
pcm_valid_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \bclk_div_cnt_reg_n_0_[25]\,
      I1 => \bclk_div_cnt_reg_n_0_[8]\,
      I2 => \bclk_div_cnt_reg_n_0_[21]\,
      I3 => \bclk_div_cnt_reg_n_0_[20]\,
      O => pcm_valid_i_4_n_0
    );
pcm_valid_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bclk_div_cnt_reg_n_0_[27]\,
      I1 => \bclk_div_cnt_reg_n_0_[19]\,
      I2 => \bclk_div_cnt_reg_n_0_[31]\,
      I3 => \bclk_div_cnt_reg_n_0_[0]\,
      O => pcm_valid_i_5_n_0
    );
pcm_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => fsync_48K_i_3_n_0,
      D => pcm_valid_i_1_n_0,
      Q => pcm_valid
    );
pl_work_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0455FFFFFBAA0000"
    )
        port map (
      I0 => led_cnt_reg(15),
      I1 => pl_work_i_3_n_0,
      I2 => led_cnt_reg(13),
      I3 => led_cnt_reg(14),
      I4 => led_cnt,
      I5 => \^pl_work\,
      O => pl_work_i_1_n_0
    );
pl_work_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_rst_n,
      O => pl_work_i_2_n_0
    );
pl_work_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABFFFFFF"
    )
        port map (
      I0 => pl_work_i_4_n_0,
      I1 => pl_work_i_5_n_0,
      I2 => led_cnt_reg(6),
      I3 => led_cnt_reg(7),
      I4 => led_cnt_reg(8),
      I5 => led_cnt_reg(9),
      O => pl_work_i_3_n_0
    );
pl_work_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => led_cnt_reg(12),
      I1 => led_cnt_reg(10),
      I2 => led_cnt_reg(11),
      O => pl_work_i_4_n_0
    );
pl_work_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => led_cnt_reg(0),
      I1 => led_cnt_reg(3),
      I2 => led_cnt_reg(2),
      I3 => led_cnt_reg(1),
      I4 => led_cnt_reg(5),
      I5 => led_cnt_reg(4),
      O => pl_work_i_5_n_0
    );
pl_work_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => pl_work_i_2_n_0,
      D => pl_work_i_1_n_0,
      Q => \^pl_work\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_ADAU7118_0_0 is
  port (
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    pl_work : out STD_LOGIC;
    LED_75K : out STD_LOGIC;
    LED_192K : out STD_LOGIC;
    SDATA1 : in STD_LOGIC;
    SDATA2 : in STD_LOGIC;
    SDATA3 : in STD_LOGIC;
    SDATA4 : in STD_LOGIC;
    SDATA5 : in STD_LOGIC;
    SDATA6 : in STD_LOGIC;
    SDATA7 : in STD_LOGIC;
    SDATA8 : in STD_LOGIC;
    FSYNC1 : out STD_LOGIC;
    FSYNC2 : out STD_LOGIC;
    FSYNC3 : out STD_LOGIC;
    FSYNC4 : out STD_LOGIC;
    FSYNC5 : out STD_LOGIC;
    FSYNC6 : out STD_LOGIC;
    FSYNC7 : out STD_LOGIC;
    FSYNC8 : out STD_LOGIC;
    BCLK1 : out STD_LOGIC;
    BCLK2 : out STD_LOGIC;
    BCLK3 : out STD_LOGIC;
    BCLK4 : out STD_LOGIC;
    BCLK5 : out STD_LOGIC;
    BCLK6 : out STD_LOGIC;
    BCLK7 : out STD_LOGIC;
    BCLK8 : out STD_LOGIC;
    ADAU7118_1_CH0_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH1_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH2_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH3_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH4_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH5_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH6_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    ADAU7118_1_CH7_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    BIT_cnt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of System_ADAU7118_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of System_ADAU7118_0_0 : entity is "System_ADAU7118_0_0,ADAU7118,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of System_ADAU7118_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of System_ADAU7118_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of System_ADAU7118_0_0 : entity is "ADAU7118,Vivado 2018.3";
end System_ADAU7118_0_0;

architecture STRUCTURE of System_ADAU7118_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^bclk8\ : STD_LOGIC;
  signal \^fsync8\ : STD_LOGIC;
  signal \^sys_rst_n\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 196595744, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, ASSOCIATED_BUSIF m_axis, FREQ_HZ 196595744, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_rst_n : signal is "xilinx.com:signal:reset:1.0 sys_rst_n RST";
  attribute X_INTERFACE_PARAMETER of sys_rst_n : signal is "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
begin
  BCLK1 <= \^bclk8\;
  BCLK2 <= \^bclk8\;
  BCLK3 <= \^bclk8\;
  BCLK4 <= \^bclk8\;
  BCLK5 <= \^bclk8\;
  BCLK6 <= \^bclk8\;
  BCLK7 <= \^bclk8\;
  BCLK8 <= \^bclk8\;
  FSYNC1 <= \^fsync8\;
  FSYNC2 <= \^fsync8\;
  FSYNC3 <= \^fsync8\;
  FSYNC4 <= \^fsync8\;
  FSYNC5 <= \^fsync8\;
  FSYNC6 <= \^fsync8\;
  FSYNC7 <= \^fsync8\;
  FSYNC8 <= \^fsync8\;
  LED_192K <= \<const0>\;
  LED_75K <= \^sys_rst_n\;
  \^sys_rst_n\ <= sys_rst_n;
  m_axis_tkeep(15) <= \<const1>\;
  m_axis_tkeep(14) <= \<const1>\;
  m_axis_tkeep(13) <= \<const1>\;
  m_axis_tkeep(12) <= \<const1>\;
  m_axis_tkeep(11) <= \<const1>\;
  m_axis_tkeep(10) <= \<const1>\;
  m_axis_tkeep(9) <= \<const1>\;
  m_axis_tkeep(8) <= \<const1>\;
  m_axis_tkeep(7) <= \<const1>\;
  m_axis_tkeep(6) <= \<const1>\;
  m_axis_tkeep(5) <= \<const1>\;
  m_axis_tkeep(4) <= \<const1>\;
  m_axis_tkeep(3) <= \<const1>\;
  m_axis_tkeep(2) <= \<const1>\;
  m_axis_tkeep(1) <= \<const1>\;
  m_axis_tkeep(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.System_ADAU7118_0_0_ADAU7118
     port map (
      ADAU7118_1_CH0_o(23 downto 0) => ADAU7118_1_CH0_o(23 downto 0),
      ADAU7118_1_CH1_o(23 downto 0) => ADAU7118_1_CH1_o(23 downto 0),
      ADAU7118_1_CH2_o(23 downto 0) => ADAU7118_1_CH2_o(23 downto 0),
      ADAU7118_1_CH3_o(23 downto 0) => ADAU7118_1_CH3_o(23 downto 0),
      ADAU7118_1_CH4_o(23 downto 0) => ADAU7118_1_CH4_o(23 downto 0),
      ADAU7118_1_CH5_o(23 downto 0) => ADAU7118_1_CH5_o(23 downto 0),
      ADAU7118_1_CH6_o(23 downto 0) => ADAU7118_1_CH6_o(23 downto 0),
      ADAU7118_1_CH7_o(23 downto 0) => ADAU7118_1_CH7_o(23 downto 0),
      BCLK_reg_0 => \^bclk8\,
      BIT_cnt(13 downto 5) => BIT_cnt(15 downto 7),
      BIT_cnt(4 downto 0) => BIT_cnt(4 downto 0),
      \BIT_cnt_reg[6]_rep_0\(1 downto 0) => BIT_cnt(6 downto 5),
      FSYNC1 => \^fsync8\,
      SDATA1 => SDATA1,
      SDATA2 => SDATA2,
      SDATA3 => SDATA3,
      SDATA4 => SDATA4,
      SDATA5 => SDATA5,
      SDATA6 => SDATA6,
      SDATA7 => SDATA7,
      SDATA8 => SDATA8,
      m_axis_tdata(127 downto 0) => m_axis_tdata(127 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid_reg_0 => m_axis_tvalid,
      pl_work => pl_work,
      sys_clk => sys_clk,
      sys_rst_n => \^sys_rst_n\
    );
end STRUCTURE;
