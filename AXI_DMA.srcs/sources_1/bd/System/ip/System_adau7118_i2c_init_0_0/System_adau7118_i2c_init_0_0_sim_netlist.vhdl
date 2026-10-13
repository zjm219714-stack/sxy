-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 10 10:12:50 2026
-- Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Ruanjian/Vivado/zynq_chengxu/ZYNQ_7015/ZYNQ_7020_yuntu/AXI_DMA.srcs/sources_1/bd/System/ip/System_adau7118_i2c_init_0_0/System_adau7118_i2c_init_0_0_sim_netlist.vhdl
-- Design      : System_adau7118_i2c_init_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_adau7118_i2c_init_0_0_I2C_driver is
  port (
    rst_n_0 : out STD_LOGIC;
    scl : out STD_LOGIC;
    i2c_done : out STD_LOGIC;
    \FSM_sequential_state_reg[3]\ : out STD_LOGIC;
    sda : inout STD_LOGIC;
    \data_wr_t_reg[6]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \data_wr_t_reg[0]_0\ : in STD_LOGIC;
    init_error_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    init_error_reg_0 : in STD_LOGIC;
    init_error : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    \addr_t_reg[2]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_wr_t_reg[7]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of System_adau7118_i2c_init_0_0_I2C_driver : entity is "I2C_driver";
end System_adau7118_i2c_init_0_0_I2C_driver;

architecture STRUCTURE of System_adau7118_i2c_init_0_0_I2C_driver is
  signal addr_t : STD_LOGIC;
  signal \addr_t_reg_n_0_[1]\ : STD_LOGIC;
  signal \addr_t_reg_n_0_[2]\ : STD_LOGIC;
  signal clk_cnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \clk_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal clk_cnt_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal cnt : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal cur_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \cur_state[7]_i_2_n_0\ : STD_LOGIC;
  signal \cur_state_reg_n_0_[7]\ : STD_LOGIC;
  signal data_wr_t : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal done : STD_LOGIC;
  signal done_0 : STD_LOGIC;
  signal done_i_2_n_0 : STD_LOGIC;
  signal done_i_3_n_0 : STD_LOGIC;
  signal done_i_4_n_0 : STD_LOGIC;
  signal dri_clk_i_1_n_0 : STD_LOGIC;
  signal dri_clk_i_2_n_0 : STD_LOGIC;
  signal dri_clk_reg_n_0 : STD_LOGIC;
  signal i2c_ack : STD_LOGIC;
  signal i2c_ack_i_1_n_0 : STD_LOGIC;
  signal i2c_ack_i_2_n_0 : STD_LOGIC;
  signal i2c_ack_i_3_n_0 : STD_LOGIC;
  signal i2c_ack_i_4_n_0 : STD_LOGIC;
  signal i2c_ack_i_5_n_0 : STD_LOGIC;
  signal \^i2c_done\ : STD_LOGIC;
  signal i2c_done_i_1_n_0 : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rst_n_0\ : STD_LOGIC;
  signal \^scl\ : STD_LOGIC;
  signal scl_i_1_n_0 : STD_LOGIC;
  signal scl_i_3_n_0 : STD_LOGIC;
  signal scl_i_4_n_0 : STD_LOGIC;
  signal scl_i_5_n_0 : STD_LOGIC;
  signal sda_dir_i_1_n_0 : STD_LOGIC;
  signal sda_dir_i_2_n_0 : STD_LOGIC;
  signal sda_dir_i_3_n_0 : STD_LOGIC;
  signal sda_dir_i_4_n_0 : STD_LOGIC;
  signal sda_dir_reg_n_0 : STD_LOGIC;
  signal sda_out_i_10_n_0 : STD_LOGIC;
  signal sda_out_i_11_n_0 : STD_LOGIC;
  signal sda_out_i_12_n_0 : STD_LOGIC;
  signal sda_out_i_13_n_0 : STD_LOGIC;
  signal sda_out_i_14_n_0 : STD_LOGIC;
  signal sda_out_i_15_n_0 : STD_LOGIC;
  signal sda_out_i_16_n_0 : STD_LOGIC;
  signal sda_out_i_1_n_0 : STD_LOGIC;
  signal sda_out_i_2_n_0 : STD_LOGIC;
  signal sda_out_i_3_n_0 : STD_LOGIC;
  signal sda_out_i_4_n_0 : STD_LOGIC;
  signal sda_out_i_5_n_0 : STD_LOGIC;
  signal sda_out_i_6_n_0 : STD_LOGIC;
  signal sda_out_i_7_n_0 : STD_LOGIC;
  signal sda_out_i_8_n_0 : STD_LOGIC;
  signal sda_out_i_9_n_0 : STD_LOGIC;
  signal sda_out_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_cnt[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \clk_cnt[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \clk_cnt[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \clk_cnt[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \clk_cnt[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_cnt[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clk_cnt[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clk_cnt[9]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[6]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cur_state[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cur_state[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cur_state[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cur_state[7]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \cur_state_reg[0]\ : label is "sladdr:00000010,addr16:00000100,addr8:00001000,data_wr:00010000,addr_rd:00100000,data_rd:01000000,stop:10000000,idle:00000001";
  attribute FSM_ENCODED_STATES of \cur_state_reg[1]\ : label is "sladdr:00000010,addr16:00000100,addr8:00001000,data_wr:00010000,addr_rd:00100000,data_rd:01000000,stop:10000000,idle:00000001";
  attribute FSM_ENCODED_STATES of \cur_state_reg[3]\ : label is "sladdr:00000010,addr16:00000100,addr8:00001000,data_wr:00010000,addr_rd:00100000,data_rd:01000000,stop:10000000,idle:00000001";
  attribute FSM_ENCODED_STATES of \cur_state_reg[4]\ : label is "sladdr:00000010,addr16:00000100,addr8:00001000,data_wr:00010000,addr_rd:00100000,data_rd:01000000,stop:10000000,idle:00000001";
  attribute FSM_ENCODED_STATES of \cur_state_reg[7]\ : label is "sladdr:00000010,addr16:00000100,addr8:00001000,data_wr:00010000,addr_rd:00100000,data_rd:01000000,stop:10000000,idle:00000001";
  attribute SOFT_HLUTNM of done_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of i2c_ack_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of i2c_ack_i_5 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of scl_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sda_dir_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sda_out_i_11 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sda_out_i_13 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of sda_out_i_6 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of sda_out_i_8 : label is "soft_lutpair5";
begin
  i2c_done <= \^i2c_done\;
  rst_n_0 <= \^rst_n_0\;
  scl <= \^scl\;
\addr_t[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => cur_state(0),
      I1 => \data_wr_t_reg[0]_0\,
      I2 => \cur_state_reg_n_0_[7]\,
      I3 => cur_state(1),
      I4 => cur_state(3),
      I5 => cur_state(4),
      O => addr_t
    );
\addr_t_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => addr_t,
      CLR => \^rst_n_0\,
      D => \addr_t_reg[2]_0\(0),
      Q => \addr_t_reg_n_0_[1]\
    );
\addr_t_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => addr_t,
      CLR => \^rst_n_0\,
      D => \addr_t_reg[2]_0\(1),
      Q => \addr_t_reg_n_0_[2]\
    );
\clk_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_cnt(0),
      O => clk_cnt_1(0)
    );
\clk_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_cnt(0),
      I1 => clk_cnt(1),
      O => clk_cnt_1(1)
    );
\clk_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => clk_cnt(1),
      I1 => clk_cnt(0),
      I2 => clk_cnt(2),
      O => clk_cnt_1(2)
    );
\clk_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => clk_cnt(2),
      I1 => clk_cnt(0),
      I2 => clk_cnt(1),
      I3 => clk_cnt(3),
      O => clk_cnt_1(3)
    );
\clk_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => clk_cnt(3),
      I1 => clk_cnt(1),
      I2 => clk_cnt(0),
      I3 => clk_cnt(2),
      I4 => clk_cnt(4),
      O => clk_cnt_1(4)
    );
\clk_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA55555551"
    )
        port map (
      I0 => \clk_cnt[9]_i_2_n_0\,
      I1 => clk_cnt(6),
      I2 => clk_cnt(9),
      I3 => clk_cnt(8),
      I4 => clk_cnt(7),
      I5 => clk_cnt(5),
      O => clk_cnt_1(5)
    );
\clk_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00005554AAAA"
    )
        port map (
      I0 => clk_cnt(5),
      I1 => clk_cnt(7),
      I2 => clk_cnt(8),
      I3 => clk_cnt(9),
      I4 => clk_cnt(6),
      I5 => \clk_cnt[9]_i_2_n_0\,
      O => clk_cnt_1(6)
    );
\clk_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => clk_cnt(5),
      I1 => \clk_cnt[9]_i_2_n_0\,
      I2 => clk_cnt(6),
      I3 => clk_cnt(7),
      O => clk_cnt_1(7)
    );
\clk_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => clk_cnt(7),
      I1 => clk_cnt(6),
      I2 => \clk_cnt[9]_i_2_n_0\,
      I3 => clk_cnt(5),
      I4 => clk_cnt(8),
      O => clk_cnt_1(8)
    );
\clk_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => clk_cnt(8),
      I1 => clk_cnt(5),
      I2 => \clk_cnt[9]_i_2_n_0\,
      I3 => clk_cnt(6),
      I4 => clk_cnt(7),
      I5 => clk_cnt(9),
      O => clk_cnt_1(9)
    );
\clk_cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => clk_cnt(3),
      I1 => clk_cnt(1),
      I2 => clk_cnt(0),
      I3 => clk_cnt(2),
      I4 => clk_cnt(4),
      O => \clk_cnt[9]_i_2_n_0\
    );
\clk_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_cnt_1(0),
      Q => clk_cnt(0)
    );
\clk_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_cnt_1(1),
      Q => clk_cnt(1)
    );
\clk_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_cnt_1(2),
      Q => clk_cnt(2)
    );
\clk_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_cnt_1(3),
      Q => clk_cnt(3)
    );
\clk_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_cnt_1(4),
      Q => clk_cnt(4)
    );
\clk_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_cnt_1(5),
      Q => clk_cnt(5)
    );
\clk_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_cnt_1(6),
      Q => clk_cnt(6)
    );
\clk_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_cnt_1(7),
      Q => clk_cnt(7)
    );
\clk_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_cnt_1(8),
      Q => clk_cnt(8)
    );
\clk_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_cnt_1(9),
      Q => clk_cnt(9)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F800FF"
    )
        port map (
      I0 => \cur_state_reg_n_0_[7]\,
      I1 => \cnt[0]_i_2_n_0\,
      I2 => scl_i_3_n_0,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cur_state[7]_i_2_n_0\,
      O => cnt(0)
    );
\cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[6]\,
      I2 => \cnt_reg_n_0_[5]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \cnt_reg_n_0_[4]\,
      O => \cnt[0]_i_2_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \cnt[6]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      O => cnt(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \cnt[6]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      O => cnt(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \cnt[6]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      O => cnt(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \cnt[6]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \cnt_reg_n_0_[0]\,
      O => cnt(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888828888888"
    )
        port map (
      I0 => \cnt[6]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[5]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \cnt_reg_n_0_[3]\,
      I5 => \cnt[5]_i_2_n_0\,
      O => cnt(5)
    );
\cnt[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      O => \cnt[5]_i_2_n_0\
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \cnt[6]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[6]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[5]\,
      I5 => \cnt[6]_i_3_n_0\,
      O => cnt(6)
    );
\cnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFAF8FFFF"
    )
        port map (
      I0 => scl_i_3_n_0,
      I1 => \cnt[5]_i_2_n_0\,
      I2 => \cnt[6]_i_4_n_0\,
      I3 => done_i_3_n_0,
      I4 => \cur_state[7]_i_2_n_0\,
      I5 => \cnt[6]_i_5_n_0\,
      O => \cnt[6]_i_2_n_0\
    );
\cnt[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \cnt_reg_n_0_[2]\,
      O => \cnt[6]_i_3_n_0\
    );
\cnt[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[6]\,
      I2 => \cnt_reg_n_0_[5]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \cur_state_reg_n_0_[7]\,
      O => \cnt[6]_i_4_n_0\
    );
\cnt[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFAEAFAFFFFC0F0"
    )
        port map (
      I0 => i2c_ack_i_3_n_0,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cur_state_reg_n_0_[7]\,
      I3 => \cnt_reg_n_0_[4]\,
      I4 => cur_state(1),
      I5 => \cnt_reg_n_0_[2]\,
      O => \cnt[6]_i_5_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt(0),
      Q => \cnt_reg_n_0_[0]\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt(1),
      Q => \cnt_reg_n_0_[1]\
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt(2),
      Q => \cnt_reg_n_0_[2]\
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt(3),
      Q => \cnt_reg_n_0_[3]\
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt(4),
      Q => \cnt_reg_n_0_[4]\
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt(5),
      Q => \cnt_reg_n_0_[5]\
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => cnt(6),
      Q => \cnt_reg_n_0_[6]\
    );
\cur_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5D5D5D"
    )
        port map (
      I0 => \cur_state[7]_i_2_n_0\,
      I1 => cur_state(0),
      I2 => \data_wr_t_reg[0]_0\,
      I3 => done,
      I4 => \cur_state_reg_n_0_[7]\,
      O => next_state(0)
    );
\cur_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2002200"
    )
        port map (
      I0 => cur_state(1),
      I1 => done,
      I2 => \data_wr_t_reg[0]_0\,
      I3 => \cur_state[7]_i_2_n_0\,
      I4 => cur_state(0),
      O => next_state(1)
    );
\cur_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(3),
      I2 => \cur_state[7]_i_2_n_0\,
      I3 => done,
      O => next_state(3)
    );
\cur_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(4),
      I2 => \cur_state[7]_i_2_n_0\,
      I3 => done,
      O => next_state(4)
    );
\cur_state[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => cur_state(4),
      I1 => \cur_state_reg_n_0_[7]\,
      I2 => \cur_state[7]_i_2_n_0\,
      I3 => done,
      O => next_state(7)
    );
\cur_state[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => cur_state(4),
      I1 => \cur_state_reg_n_0_[7]\,
      I2 => cur_state(0),
      I3 => cur_state(1),
      I4 => cur_state(3),
      O => \cur_state[7]_i_2_n_0\
    );
\cur_state_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      D => next_state(0),
      PRE => \^rst_n_0\,
      Q => cur_state(0)
    );
\cur_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => next_state(1),
      Q => cur_state(1)
    );
\cur_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => next_state(3),
      Q => cur_state(3)
    );
\cur_state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => next_state(4),
      Q => cur_state(4)
    );
\cur_state_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => next_state(7),
      Q => \cur_state_reg_n_0_[7]\
    );
\data_wr_t_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => addr_t,
      CLR => \^rst_n_0\,
      D => \data_wr_t_reg[7]_0\(0),
      Q => data_wr_t(0)
    );
\data_wr_t_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => addr_t,
      CLR => \^rst_n_0\,
      D => \data_wr_t_reg[7]_0\(1),
      Q => data_wr_t(5)
    );
\data_wr_t_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => addr_t,
      CLR => \^rst_n_0\,
      D => \data_wr_t_reg[6]_0\,
      Q => data_wr_t(6)
    );
\data_wr_t_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => addr_t,
      CLR => \^rst_n_0\,
      D => \data_wr_t_reg[7]_0\(2),
      Q => data_wr_t(7)
    );
done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0003000A0000000"
    )
        port map (
      I0 => done_i_2_n_0,
      I1 => done_i_3_n_0,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cur_state[7]_i_2_n_0\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => done_i_4_n_0,
      O => done_0
    );
done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \cur_state_reg_n_0_[7]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[6]\,
      I5 => \cnt_reg_n_0_[5]\,
      O => done_i_2_n_0
    );
done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[6]\,
      I3 => \cnt_reg_n_0_[5]\,
      O => done_i_3_n_0
    );
done_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => cur_state(1),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => cur_state(3),
      I3 => cur_state(4),
      O => done_i_4_n_0
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => done_0,
      Q => done
    );
dri_clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => dri_clk_i_2_n_0,
      I1 => clk_cnt(7),
      I2 => clk_cnt(8),
      I3 => clk_cnt(9),
      I4 => clk_cnt(5),
      I5 => dri_clk_reg_n_0,
      O => dri_clk_i_1_n_0
    );
dri_clk_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => clk_cnt(4),
      I1 => clk_cnt(2),
      I2 => clk_cnt(0),
      I3 => clk_cnt(1),
      I4 => clk_cnt(3),
      I5 => clk_cnt(6),
      O => dri_clk_i_2_n_0
    );
dri_clk_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^rst_n_0\,
      D => dri_clk_i_1_n_0,
      Q => dri_clk_reg_n_0
    );
i2c_ack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22223FFF22220000"
    )
        port map (
      I0 => sda,
      I1 => cur_state(0),
      I2 => \data_wr_t_reg[0]_0\,
      I3 => \cur_state[7]_i_2_n_0\,
      I4 => i2c_ack_i_2_n_0,
      I5 => i2c_ack,
      O => i2c_ack_i_1_n_0
    );
i2c_ack_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8000000"
    )
        port map (
      I0 => cur_state(1),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => i2c_ack_i_3_n_0,
      I3 => i2c_ack_i_4_n_0,
      I4 => i2c_ack_i_5_n_0,
      I5 => done_i_3_n_0,
      O => i2c_ack_i_2_n_0
    );
i2c_ack_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(4),
      O => i2c_ack_i_3_n_0
    );
i2c_ack_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sda,
      I1 => \cnt_reg_n_0_[1]\,
      O => i2c_ack_i_4_n_0
    );
i2c_ack_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cur_state[7]_i_2_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      O => i2c_ack_i_5_n_0
    );
i2c_ack_reg: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => i2c_ack_i_1_n_0,
      Q => i2c_ack
    );
i2c_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF3F300000010"
    )
        port map (
      I0 => \cnt[0]_i_2_n_0\,
      I1 => cur_state(0),
      I2 => \cur_state_reg_n_0_[7]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => scl_i_3_n_0,
      I5 => \^i2c_done\,
      O => i2c_done_i_1_n_0
    );
i2c_done_reg: unisim.vcomponents.FDCE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      CLR => \^rst_n_0\,
      D => i2c_done_i_1_n_0,
      Q => \^i2c_done\
    );
init_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDDDD00009000"
    )
        port map (
      I0 => init_error_reg,
      I1 => Q(1),
      I2 => i2c_ack,
      I3 => init_error_reg_0,
      I4 => Q(0),
      I5 => init_error,
      O => \FSM_sequential_state_reg[3]\
    );
scl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEFFFFEFEE0000"
    )
        port map (
      I0 => \cur_state_reg_n_0_[7]\,
      I1 => cur_state(0),
      I2 => \cnt_reg_n_0_[1]\,
      I3 => scl_i_3_n_0,
      I4 => scl_i_4_n_0,
      I5 => \^scl\,
      O => scl_i_1_n_0
    );
scl_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
scl_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cur_state(4),
      I1 => cur_state(3),
      I2 => cur_state(1),
      O => scl_i_3_n_0
    );
scl_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE00000"
    )
        port map (
      I0 => scl_i_5_n_0,
      I1 => sda_out_i_5_n_0,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => cur_state(0),
      I4 => \cur_state[7]_i_2_n_0\,
      O => scl_i_4_n_0
    );
scl_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0002"
    )
        port map (
      I0 => \cur_state_reg_n_0_[7]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[5]\,
      I4 => cur_state(1),
      I5 => sda_out_i_13_n_0,
      O => scl_i_5_n_0
    );
scl_reg: unisim.vcomponents.FDPE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      D => scl_i_1_n_0,
      PRE => \^rst_n_0\,
      Q => \^scl\
    );
sda_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sda_out_reg_n_0,
      I1 => sda_dir_reg_n_0,
      O => sda
    );
sda_dir_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1F1FFF1F1F1F00"
    )
        port map (
      I0 => \cnt_reg_n_0_[5]\,
      I1 => cur_state(1),
      I2 => scl_i_3_n_0,
      I3 => sda_dir_i_2_n_0,
      I4 => sda_dir_i_3_n_0,
      I5 => sda_dir_reg_n_0,
      O => sda_dir_i_1_n_0
    );
sda_dir_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000222200000000"
    )
        port map (
      I0 => i2c_ack_i_3_n_0,
      I1 => sda_out_i_13_n_0,
      I2 => \cnt_reg_n_0_[5]\,
      I3 => cur_state(1),
      I4 => \cnt_reg_n_0_[2]\,
      I5 => sda_out_i_6_n_0,
      O => sda_dir_i_2_n_0
    );
sda_dir_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000400000000"
    )
        port map (
      I0 => sda_dir_i_4_n_0,
      I1 => \cur_state_reg_n_0_[7]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => sda_out_i_13_n_0,
      I4 => cur_state(0),
      I5 => \cur_state[7]_i_2_n_0\,
      O => sda_dir_i_3_n_0
    );
sda_dir_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \cnt_reg_n_0_[5]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      O => sda_dir_i_4_n_0
    );
sda_dir_reg: unisim.vcomponents.FDPE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      D => sda_dir_i_1_n_0,
      PRE => \^rst_n_0\,
      Q => sda_dir_reg_n_0
    );
sda_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEFEFEEE0E0E0"
    )
        port map (
      I0 => sda_out_i_2_n_0,
      I1 => sda_out_i_3_n_0,
      I2 => sda_out_i_4_n_0,
      I3 => sda_out_i_5_n_0,
      I4 => sda_out_i_6_n_0,
      I5 => sda_out_reg_n_0,
      O => sda_out_i_1_n_0
    );
sda_out_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80C0800000000000"
    )
        port map (
      I0 => data_wr_t(6),
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \addr_t_reg_n_0_[2]\,
      I5 => cur_state(3),
      O => sda_out_i_10_n_0
    );
sda_out_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001E00"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[5]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cur_state[7]_i_2_n_0\,
      I4 => \cnt_reg_n_0_[1]\,
      O => sda_out_i_11_n_0
    );
sda_out_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008008"
    )
        port map (
      I0 => \cur_state[7]_i_2_n_0\,
      I1 => \cur_state_reg_n_0_[7]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[5]\,
      I5 => \cnt_reg_n_0_[2]\,
      O => sda_out_i_12_n_0
    );
sda_out_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \cnt_reg_n_0_[6]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[4]\,
      O => sda_out_i_13_n_0
    );
sda_out_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000054"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => cur_state(3),
      I2 => cur_state(4),
      I3 => \cnt_reg_n_0_[4]\,
      I4 => \cnt_reg_n_0_[3]\,
      I5 => \cnt_reg_n_0_[6]\,
      O => sda_out_i_14_n_0
    );
sda_out_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[4]\,
      O => sda_out_i_15_n_0
    );
sda_out_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400040004000"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => cur_state(1),
      I4 => \addr_t_reg_n_0_[1]\,
      I5 => cur_state(3),
      O => sda_out_i_16_n_0
    );
sda_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => sda_out_i_7_n_0,
      I1 => \cur_state_reg_n_0_[7]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => sda_out_i_8_n_0,
      I4 => sda_out_i_9_n_0,
      I5 => cur_state(0),
      O => sda_out_i_2_n_0
    );
sda_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFEAFFAAAAAA"
    )
        port map (
      I0 => sda_out_i_10_n_0,
      I1 => data_wr_t(0),
      I2 => \cnt[6]_i_3_n_0\,
      I3 => \cnt_reg_n_0_[5]\,
      I4 => cur_state(3),
      I5 => cur_state(4),
      O => sda_out_i_3_n_0
    );
sda_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F000FFFFF888"
    )
        port map (
      I0 => sda_out_i_11_n_0,
      I1 => cur_state(1),
      I2 => \cur_state[7]_i_2_n_0\,
      I3 => cur_state(0),
      I4 => sda_out_i_12_n_0,
      I5 => sda_out_i_13_n_0,
      O => sda_out_i_4_n_0
    );
sda_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAFFEA"
    )
        port map (
      I0 => sda_out_i_14_n_0,
      I1 => cur_state(1),
      I2 => sda_out_i_15_n_0,
      I3 => i2c_ack_i_3_n_0,
      I4 => \cnt_reg_n_0_[5]\,
      I5 => \cnt_reg_n_0_[6]\,
      O => sda_out_i_5_n_0
    );
sda_out_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cur_state[7]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[1]\,
      O => sda_out_i_6_n_0
    );
sda_out_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF6000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[5]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => cur_state(1),
      I5 => sda_out_i_16_n_0,
      O => sda_out_i_7_n_0
    );
sda_out_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08808880"
    )
        port map (
      I0 => data_wr_t(5),
      I1 => cur_state(4),
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg_n_0_[2]\,
      O => sda_out_i_8_n_0
    );
sda_out_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010100000001000"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => cur_state(4),
      I3 => data_wr_t(7),
      I4 => \cnt_reg_n_0_[2]\,
      I5 => data_wr_t(6),
      O => sda_out_i_9_n_0
    );
sda_out_reg: unisim.vcomponents.FDPE
     port map (
      C => dri_clk_reg_n_0,
      CE => '1',
      D => sda_out_i_1_n_0,
      PRE => \^rst_n_0\,
      Q => sda_out_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_adau7118_i2c_init_0_0_adau7118_i2c_init is
  port (
    busy : out STD_LOGIC;
    scl : out STD_LOGIC;
    init_done : out STD_LOGIC;
    init_error : out STD_LOGIC;
    sda : inout STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of System_adau7118_i2c_init_0_0_adau7118_i2c_init : entity is "adau7118_i2c_init";
end System_adau7118_i2c_init_0_0_adau7118_i2c_init;

architecture STRUCTURE of System_adau7118_i2c_init_0_0_adau7118_i2c_init is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_9_n_0\ : STD_LOGIC;
  signal delay_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal delay_cnt0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \delay_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \delay_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \delay_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \delay_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \delay_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \delay_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \delay_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \delay_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \delay_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \delay_cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \delay_cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \delay_cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \delay_cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \delay_cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \delay_cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \delay_cnt0_carry__5_n_0\ : STD_LOGIC;
  signal \delay_cnt0_carry__5_n_1\ : STD_LOGIC;
  signal \delay_cnt0_carry__5_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__5_n_3\ : STD_LOGIC;
  signal \delay_cnt0_carry__6_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__6_n_3\ : STD_LOGIC;
  signal delay_cnt0_carry_n_0 : STD_LOGIC;
  signal delay_cnt0_carry_n_1 : STD_LOGIC;
  signal delay_cnt0_carry_n_2 : STD_LOGIC;
  signal delay_cnt0_carry_n_3 : STD_LOGIC;
  signal \delay_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal i2c_addr : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \i2c_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \i2c_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal i2c_data_w : STD_LOGIC_VECTOR ( 6 downto 5 );
  signal \i2c_data_w[7]_i_1_n_0\ : STD_LOGIC;
  signal \i2c_data_w_reg_n_0_[0]\ : STD_LOGIC;
  signal \i2c_data_w_reg_n_0_[5]\ : STD_LOGIC;
  signal \i2c_data_w_reg_n_0_[6]\ : STD_LOGIC;
  signal \i2c_data_w_reg_n_0_[7]\ : STD_LOGIC;
  signal i2c_done : STD_LOGIC;
  signal i2c_done_meta : STD_LOGIC;
  signal i2c_done_sync : STD_LOGIC;
  signal i2c_done_sync_d : STD_LOGIC;
  signal i2c_exec : STD_LOGIC;
  signal i2c_exec_reg_n_0 : STD_LOGIC;
  signal i2c_rh_wl : STD_LOGIC;
  signal \^init_done\ : STD_LOGIC;
  signal init_done_i_1_n_0 : STD_LOGIC;
  signal init_done_i_2_n_0 : STD_LOGIC;
  signal \^init_error\ : STD_LOGIC;
  signal init_error_i_2_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal u_i2c_driver_n_0 : STD_LOGIC;
  signal u_i2c_driver_n_3 : STD_LOGIC;
  signal \NLW_delay_cnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_delay_cnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_2\ : label is "soft_lutpair14";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "S_WR_05:0011,S_WAIT_05:0100,S_WAIT_04_DIS:0010,S_WR_04_DIS:0001,S_DELAY:0000,S_DONE:1001,S_WR_04_EN:0111,S_WAIT_07:0110,S_WAIT_04_EN:1000,S_WR_07:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "S_WR_05:0011,S_WAIT_05:0100,S_WAIT_04_DIS:0010,S_WR_04_DIS:0001,S_DELAY:0000,S_DONE:1001,S_WR_04_EN:0111,S_WAIT_07:0110,S_WAIT_04_EN:1000,S_WR_07:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "S_WR_05:0011,S_WAIT_05:0100,S_WAIT_04_DIS:0010,S_WR_04_DIS:0001,S_DELAY:0000,S_DONE:1001,S_WR_04_EN:0111,S_WAIT_07:0110,S_WAIT_04_EN:1000,S_WR_07:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "S_WR_05:0011,S_WAIT_05:0100,S_WAIT_04_DIS:0010,S_WR_04_DIS:0001,S_DELAY:0000,S_DONE:1001,S_WR_04_EN:0111,S_WAIT_07:0110,S_WAIT_04_EN:1000,S_WR_07:0101";
  attribute SOFT_HLUTNM of busy_INST_0 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \delay_cnt[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \delay_cnt[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \delay_cnt[11]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \delay_cnt[12]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \delay_cnt[13]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \delay_cnt[14]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \delay_cnt[15]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \delay_cnt[16]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \delay_cnt[17]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \delay_cnt[18]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \delay_cnt[19]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \delay_cnt[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \delay_cnt[20]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \delay_cnt[21]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \delay_cnt[22]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \delay_cnt[23]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \delay_cnt[24]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \delay_cnt[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \delay_cnt[26]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \delay_cnt[27]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \delay_cnt[28]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \delay_cnt[29]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \delay_cnt[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \delay_cnt[30]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \delay_cnt[31]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \delay_cnt[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \delay_cnt[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \delay_cnt[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \delay_cnt[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \delay_cnt[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \delay_cnt[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \delay_cnt[9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i2c_addr[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i2c_data_w[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i2c_data_w[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of init_done_i_2 : label is "soft_lutpair15";
begin
  init_done <= \^init_done\;
  init_error <= \^init_error\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(3),
      I1 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0C0E0C3E0F0E0C"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_3_n_0\,
      I1 => state(0),
      I2 => state(3),
      I3 => init_done_i_2_n_0,
      I4 => i2c_done_sync,
      I5 => i2c_done_sync_d,
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[26]\,
      I1 => \delay_cnt_reg_n_0_[28]\,
      I2 => \delay_cnt_reg_n_0_[22]\,
      I3 => \delay_cnt_reg_n_0_[30]\,
      O => \FSM_sequential_state[3]_i_10_n_0\
    );
\FSM_sequential_state[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[24]\,
      I1 => \delay_cnt_reg_n_0_[27]\,
      I2 => \delay_cnt_reg_n_0_[23]\,
      I3 => \delay_cnt_reg_n_0_[31]\,
      O => \FSM_sequential_state[3]_i_11_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      O => \FSM_sequential_state[3]_i_2_n_0\
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55454444"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_4_n_0\,
      I1 => \delay_cnt_reg_n_0_[17]\,
      I2 => \FSM_sequential_state[3]_i_5_n_0\,
      I3 => \delay_cnt_reg_n_0_[15]\,
      I4 => \delay_cnt_reg_n_0_[16]\,
      I5 => \FSM_sequential_state[3]_i_6_n_0\,
      O => \FSM_sequential_state[3]_i_3_n_0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[20]\,
      I1 => \delay_cnt_reg_n_0_[18]\,
      I2 => \delay_cnt_reg_n_0_[19]\,
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11115515FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_7_n_0\,
      I1 => \delay_cnt_reg_n_0_[11]\,
      I2 => \FSM_sequential_state[3]_i_8_n_0\,
      I3 => \FSM_sequential_state[3]_i_9_n_0\,
      I4 => \delay_cnt_reg_n_0_[10]\,
      I5 => \delay_cnt_reg_n_0_[14]\,
      O => \FSM_sequential_state[3]_i_5_n_0\
    );
\FSM_sequential_state[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[25]\,
      I1 => \delay_cnt_reg_n_0_[21]\,
      I2 => \delay_cnt_reg_n_0_[29]\,
      I3 => \FSM_sequential_state[3]_i_10_n_0\,
      I4 => \FSM_sequential_state[3]_i_11_n_0\,
      O => \FSM_sequential_state[3]_i_6_n_0\
    );
\FSM_sequential_state[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[13]\,
      I1 => \delay_cnt_reg_n_0_[12]\,
      O => \FSM_sequential_state[3]_i_7_n_0\
    );
\FSM_sequential_state[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[4]\,
      I1 => \delay_cnt_reg_n_0_[9]\,
      I2 => \delay_cnt_reg_n_0_[5]\,
      I3 => \delay_cnt_reg_n_0_[8]\,
      O => \FSM_sequential_state[3]_i_8_n_0\
    );
\FSM_sequential_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[1]\,
      I1 => \delay_cnt_reg_n_0_[3]\,
      I2 => \delay_cnt_reg_n_0_[6]\,
      I3 => \delay_cnt_reg_n_0_[2]\,
      I4 => \delay_cnt_reg_n_0_[0]\,
      I5 => \delay_cnt_reg_n_0_[7]\,
      O => \FSM_sequential_state[3]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2)
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => \FSM_sequential_state[3]_i_2_n_0\,
      Q => state(3)
    );
busy_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      O => busy
    );
delay_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => delay_cnt0_carry_n_0,
      CO(2) => delay_cnt0_carry_n_1,
      CO(1) => delay_cnt0_carry_n_2,
      CO(0) => delay_cnt0_carry_n_3,
      CYINIT => \delay_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => delay_cnt0(4 downto 1),
      S(3) => \delay_cnt_reg_n_0_[4]\,
      S(2) => \delay_cnt_reg_n_0_[3]\,
      S(1) => \delay_cnt_reg_n_0_[2]\,
      S(0) => \delay_cnt_reg_n_0_[1]\
    );
\delay_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => delay_cnt0_carry_n_0,
      CO(3) => \delay_cnt0_carry__0_n_0\,
      CO(2) => \delay_cnt0_carry__0_n_1\,
      CO(1) => \delay_cnt0_carry__0_n_2\,
      CO(0) => \delay_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => delay_cnt0(8 downto 5),
      S(3) => \delay_cnt_reg_n_0_[8]\,
      S(2) => \delay_cnt_reg_n_0_[7]\,
      S(1) => \delay_cnt_reg_n_0_[6]\,
      S(0) => \delay_cnt_reg_n_0_[5]\
    );
\delay_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt0_carry__0_n_0\,
      CO(3) => \delay_cnt0_carry__1_n_0\,
      CO(2) => \delay_cnt0_carry__1_n_1\,
      CO(1) => \delay_cnt0_carry__1_n_2\,
      CO(0) => \delay_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => delay_cnt0(12 downto 9),
      S(3) => \delay_cnt_reg_n_0_[12]\,
      S(2) => \delay_cnt_reg_n_0_[11]\,
      S(1) => \delay_cnt_reg_n_0_[10]\,
      S(0) => \delay_cnt_reg_n_0_[9]\
    );
\delay_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt0_carry__1_n_0\,
      CO(3) => \delay_cnt0_carry__2_n_0\,
      CO(2) => \delay_cnt0_carry__2_n_1\,
      CO(1) => \delay_cnt0_carry__2_n_2\,
      CO(0) => \delay_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => delay_cnt0(16 downto 13),
      S(3) => \delay_cnt_reg_n_0_[16]\,
      S(2) => \delay_cnt_reg_n_0_[15]\,
      S(1) => \delay_cnt_reg_n_0_[14]\,
      S(0) => \delay_cnt_reg_n_0_[13]\
    );
\delay_cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt0_carry__2_n_0\,
      CO(3) => \delay_cnt0_carry__3_n_0\,
      CO(2) => \delay_cnt0_carry__3_n_1\,
      CO(1) => \delay_cnt0_carry__3_n_2\,
      CO(0) => \delay_cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => delay_cnt0(20 downto 17),
      S(3) => \delay_cnt_reg_n_0_[20]\,
      S(2) => \delay_cnt_reg_n_0_[19]\,
      S(1) => \delay_cnt_reg_n_0_[18]\,
      S(0) => \delay_cnt_reg_n_0_[17]\
    );
\delay_cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt0_carry__3_n_0\,
      CO(3) => \delay_cnt0_carry__4_n_0\,
      CO(2) => \delay_cnt0_carry__4_n_1\,
      CO(1) => \delay_cnt0_carry__4_n_2\,
      CO(0) => \delay_cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => delay_cnt0(24 downto 21),
      S(3) => \delay_cnt_reg_n_0_[24]\,
      S(2) => \delay_cnt_reg_n_0_[23]\,
      S(1) => \delay_cnt_reg_n_0_[22]\,
      S(0) => \delay_cnt_reg_n_0_[21]\
    );
\delay_cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt0_carry__4_n_0\,
      CO(3) => \delay_cnt0_carry__5_n_0\,
      CO(2) => \delay_cnt0_carry__5_n_1\,
      CO(1) => \delay_cnt0_carry__5_n_2\,
      CO(0) => \delay_cnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => delay_cnt0(28 downto 25),
      S(3) => \delay_cnt_reg_n_0_[28]\,
      S(2) => \delay_cnt_reg_n_0_[27]\,
      S(1) => \delay_cnt_reg_n_0_[26]\,
      S(0) => \delay_cnt_reg_n_0_[25]\
    );
\delay_cnt0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_delay_cnt0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \delay_cnt0_carry__6_n_2\,
      CO(0) => \delay_cnt0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_delay_cnt0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => delay_cnt0(31 downto 29),
      S(3) => '0',
      S(2) => \delay_cnt_reg_n_0_[31]\,
      S(1) => \delay_cnt_reg_n_0_[30]\,
      S(0) => \delay_cnt_reg_n_0_[29]\
    );
\delay_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(0)
    );
\delay_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(10),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(10)
    );
\delay_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(11),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(11)
    );
\delay_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(12),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(12)
    );
\delay_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(13),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(13)
    );
\delay_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(14),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(14)
    );
\delay_cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(15),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(15)
    );
\delay_cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(16),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(16)
    );
\delay_cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(17),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(17)
    );
\delay_cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(18),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(18)
    );
\delay_cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(19),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(19)
    );
\delay_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(1),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(1)
    );
\delay_cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(20),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(20)
    );
\delay_cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(21),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(21)
    );
\delay_cnt[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(22),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(22)
    );
\delay_cnt[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(23),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(23)
    );
\delay_cnt[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(24),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(24)
    );
\delay_cnt[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(25),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(25)
    );
\delay_cnt[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(26),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(26)
    );
\delay_cnt[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(27),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(27)
    );
\delay_cnt[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(28),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(28)
    );
\delay_cnt[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(29),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(29)
    );
\delay_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(2),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(2)
    );
\delay_cnt[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(30),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(30)
    );
\delay_cnt[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(3),
      O => \delay_cnt[31]_i_1_n_0\
    );
\delay_cnt[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(31),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(31)
    );
\delay_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(3),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(3)
    );
\delay_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(4),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(4)
    );
\delay_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(5),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(5)
    );
\delay_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(6),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(6)
    );
\delay_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(7),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(7)
    );
\delay_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(8),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(8)
    );
\delay_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_cnt0(9),
      I1 => \FSM_sequential_state[3]_i_3_n_0\,
      O => delay_cnt(9)
    );
\delay_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(0),
      Q => \delay_cnt_reg_n_0_[0]\
    );
\delay_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(10),
      Q => \delay_cnt_reg_n_0_[10]\
    );
\delay_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(11),
      Q => \delay_cnt_reg_n_0_[11]\
    );
\delay_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(12),
      Q => \delay_cnt_reg_n_0_[12]\
    );
\delay_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(13),
      Q => \delay_cnt_reg_n_0_[13]\
    );
\delay_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(14),
      Q => \delay_cnt_reg_n_0_[14]\
    );
\delay_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(15),
      Q => \delay_cnt_reg_n_0_[15]\
    );
\delay_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(16),
      Q => \delay_cnt_reg_n_0_[16]\
    );
\delay_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(17),
      Q => \delay_cnt_reg_n_0_[17]\
    );
\delay_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(18),
      Q => \delay_cnt_reg_n_0_[18]\
    );
\delay_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(19),
      Q => \delay_cnt_reg_n_0_[19]\
    );
\delay_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(1),
      Q => \delay_cnt_reg_n_0_[1]\
    );
\delay_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(20),
      Q => \delay_cnt_reg_n_0_[20]\
    );
\delay_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(21),
      Q => \delay_cnt_reg_n_0_[21]\
    );
\delay_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(22),
      Q => \delay_cnt_reg_n_0_[22]\
    );
\delay_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(23),
      Q => \delay_cnt_reg_n_0_[23]\
    );
\delay_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(24),
      Q => \delay_cnt_reg_n_0_[24]\
    );
\delay_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(25),
      Q => \delay_cnt_reg_n_0_[25]\
    );
\delay_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(26),
      Q => \delay_cnt_reg_n_0_[26]\
    );
\delay_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(27),
      Q => \delay_cnt_reg_n_0_[27]\
    );
\delay_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(28),
      Q => \delay_cnt_reg_n_0_[28]\
    );
\delay_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(29),
      Q => \delay_cnt_reg_n_0_[29]\
    );
\delay_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(2),
      Q => \delay_cnt_reg_n_0_[2]\
    );
\delay_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(30),
      Q => \delay_cnt_reg_n_0_[30]\
    );
\delay_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(31),
      Q => \delay_cnt_reg_n_0_[31]\
    );
\delay_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(3),
      Q => \delay_cnt_reg_n_0_[3]\
    );
\delay_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(4),
      Q => \delay_cnt_reg_n_0_[4]\
    );
\delay_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(5),
      Q => \delay_cnt_reg_n_0_[5]\
    );
\delay_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(6),
      Q => \delay_cnt_reg_n_0_[6]\
    );
\delay_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(7),
      Q => \delay_cnt_reg_n_0_[7]\
    );
\delay_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(8),
      Q => \delay_cnt_reg_n_0_[8]\
    );
\delay_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \delay_cnt[31]_i_1_n_0\,
      CLR => u_i2c_driver_n_0,
      D => delay_cnt(9),
      Q => \delay_cnt_reg_n_0_[9]\
    );
\i2c_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => i2c_addr(1)
    );
\i2c_addr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      O => i2c_rh_wl
    );
\i2c_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i2c_rh_wl,
      CLR => u_i2c_driver_n_0,
      D => i2c_addr(1),
      Q => \i2c_addr_reg_n_0_[1]\
    );
\i2c_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i2c_rh_wl,
      CLR => u_i2c_driver_n_0,
      D => '1',
      Q => \i2c_addr_reg_n_0_[2]\
    );
\i2c_data_w[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => i2c_data_w(5)
    );
\i2c_data_w[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => i2c_data_w(6)
    );
\i2c_data_w[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => \i2c_data_w[7]_i_1_n_0\
    );
\i2c_data_w_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i2c_rh_wl,
      CLR => u_i2c_driver_n_0,
      D => state(2),
      Q => \i2c_data_w_reg_n_0_[0]\
    );
\i2c_data_w_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i2c_rh_wl,
      CLR => u_i2c_driver_n_0,
      D => i2c_data_w(5),
      Q => \i2c_data_w_reg_n_0_[5]\
    );
\i2c_data_w_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i2c_rh_wl,
      CLR => u_i2c_driver_n_0,
      D => i2c_data_w(6),
      Q => \i2c_data_w_reg_n_0_[6]\
    );
\i2c_data_w_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => i2c_rh_wl,
      CLR => u_i2c_driver_n_0,
      D => \i2c_data_w[7]_i_1_n_0\,
      Q => \i2c_data_w_reg_n_0_[7]\
    );
i2c_done_meta_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_i2c_driver_n_0,
      D => i2c_done,
      Q => i2c_done_meta
    );
i2c_done_sync_d_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_i2c_driver_n_0,
      D => i2c_done_sync,
      Q => i2c_done_sync_d
    );
i2c_done_sync_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_i2c_driver_n_0,
      D => i2c_done_meta,
      Q => i2c_done_sync
    );
i2c_exec_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F1E1E001E"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(3),
      I3 => i2c_done_sync,
      I4 => i2c_done_sync_d,
      I5 => state(0),
      O => i2c_exec
    );
i2c_exec_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_i2c_driver_n_0,
      D => i2c_exec,
      Q => i2c_exec_reg_n_0
    );
init_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAFFBA000000"
    )
        port map (
      I0 => state(0),
      I1 => i2c_done_sync_d,
      I2 => i2c_done_sync,
      I3 => init_done_i_2_n_0,
      I4 => state(3),
      I5 => \^init_done\,
      O => init_done_i_1_n_0
    );
init_done_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => init_done_i_2_n_0
    );
init_done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_i2c_driver_n_0,
      D => init_done_i_1_n_0,
      Q => \^init_done\
    );
init_error_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i2c_done_sync,
      I1 => i2c_done_sync_d,
      O => init_error_i_2_n_0
    );
init_error_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => u_i2c_driver_n_0,
      D => u_i2c_driver_n_3,
      Q => \^init_error\
    );
u_i2c_driver: entity work.System_adau7118_i2c_init_0_0_I2C_driver
     port map (
      \FSM_sequential_state_reg[3]\ => u_i2c_driver_n_3,
      Q(1) => state(3),
      Q(0) => state(0),
      \addr_t_reg[2]_0\(1) => \i2c_addr_reg_n_0_[2]\,
      \addr_t_reg[2]_0\(0) => \i2c_addr_reg_n_0_[1]\,
      clk => clk,
      \data_wr_t_reg[0]_0\ => i2c_exec_reg_n_0,
      \data_wr_t_reg[6]_0\ => \i2c_data_w_reg_n_0_[6]\,
      \data_wr_t_reg[7]_0\(2) => \i2c_data_w_reg_n_0_[7]\,
      \data_wr_t_reg[7]_0\(1) => \i2c_data_w_reg_n_0_[5]\,
      \data_wr_t_reg[7]_0\(0) => \i2c_data_w_reg_n_0_[0]\,
      i2c_done => i2c_done,
      init_error => \^init_error\,
      init_error_reg => init_done_i_2_n_0,
      init_error_reg_0 => init_error_i_2_n_0,
      rst_n => rst_n,
      rst_n_0 => u_i2c_driver_n_0,
      scl => scl,
      sda => sda
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_adau7118_i2c_init_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    scl : out STD_LOGIC;
    sda : inout STD_LOGIC;
    init_done : out STD_LOGIC;
    init_error : out STD_LOGIC;
    busy : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of System_adau7118_i2c_init_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of System_adau7118_i2c_init_0_0 : entity is "System_adau7118_i2c_init_0_0,adau7118_i2c_init,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of System_adau7118_i2c_init_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of System_adau7118_i2c_init_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of System_adau7118_i2c_init_0_0 : entity is "adau7118_i2c_init,Vivado 2018.3";
end System_adau7118_i2c_init_0_0;

architecture STRUCTURE of System_adau7118_i2c_init_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 196595744, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.System_adau7118_i2c_init_0_0_adau7118_i2c_init
     port map (
      busy => busy,
      clk => clk,
      init_done => init_done,
      init_error => init_error,
      rst_n => rst_n,
      scl => scl,
      sda => sda
    );
end STRUCTURE;
