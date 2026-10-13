-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 10 09:21:55 2026
-- Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Ruanjian/Vivado/zynq_chengxu/ZYNQ_7015/ZYNQ_7020_yuntu/AXI_DMA.srcs/sources_1/bd/System/ip/System_raw_waveform_capture_0_0/System_raw_waveform_capture_0_0_sim_netlist.vhdl
-- Design      : System_raw_waveform_capture_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_raw_waveform_capture_0_0_raw_waveform_capture is
  port (
    m_axis_wave_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_active_reg_0 : out STD_LOGIC;
    m_axis_wave_tlast : out STD_LOGIC;
    rst_n : in STD_LOGIC;
    frame_valid : in STD_LOGIC;
    clk : in STD_LOGIC;
    frame_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_wave_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of System_raw_waveform_capture_0_0_raw_waveform_capture : entity is "raw_waveform_capture";
end System_raw_waveform_capture_0_0_raw_waveform_capture;

architecture STRUCTURE of System_raw_waveform_capture_0_0_raw_waveform_capture is
  signal capture_index : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \capture_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \capture_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \capture_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \capture_index[3]_i_1_n_0\ : STD_LOGIC;
  signal \capture_index[4]_i_1_n_0\ : STD_LOGIC;
  signal \capture_index[5]_i_1_n_0\ : STD_LOGIC;
  signal \capture_index[6]_i_1_n_0\ : STD_LOGIC;
  signal \capture_index[6]_i_2_n_0\ : STD_LOGIC;
  signal \capture_index[6]_i_3_n_0\ : STD_LOGIC;
  signal sample_base : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal sample_mem_reg_r1_0_63_0_2_i_1_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_0_2_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_0_2_n_1 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_0_2_n_2 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_12_14_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_12_14_n_1 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_12_14_n_2 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_15_15_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_3_5_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_3_5_n_1 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_3_5_n_2 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_6_8_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_6_8_n_1 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_6_8_n_2 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_9_11_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_9_11_n_1 : STD_LOGIC;
  signal sample_mem_reg_r1_0_63_9_11_n_2 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_0_2_i_1_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_0_2_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_0_2_n_1 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_0_2_n_2 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_12_14_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_12_14_n_1 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_12_14_n_2 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_15_15_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_3_5_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_3_5_n_1 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_3_5_n_2 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_6_8_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_6_8_n_1 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_6_8_n_2 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_9_11_n_0 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_9_11_n_1 : STD_LOGIC;
  signal sample_mem_reg_r1_64_127_9_11_n_2 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_0_2_n_0 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_0_2_n_1 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_0_2_n_2 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_12_14_n_0 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_12_14_n_1 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_12_14_n_2 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_15_15_n_0 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_3_5_n_0 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_3_5_n_1 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_3_5_n_2 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_6_8_n_0 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_6_8_n_1 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_6_8_n_2 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_9_11_n_0 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_9_11_n_1 : STD_LOGIC;
  signal sample_mem_reg_r2_0_63_9_11_n_2 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_0_2_n_0 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_0_2_n_1 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_0_2_n_2 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_12_14_n_0 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_12_14_n_1 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_12_14_n_2 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_15_15_n_0 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_3_5_n_0 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_3_5_n_1 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_3_5_n_2 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_6_8_n_0 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_6_8_n_1 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_6_8_n_2 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_9_11_n_0 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_9_11_n_1 : STD_LOGIC;
  signal sample_mem_reg_r2_64_127_9_11_n_2 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_0_2_n_0 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_0_2_n_1 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_0_2_n_2 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_12_14_n_0 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_12_14_n_1 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_12_14_n_2 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_15_15_n_0 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_3_5_n_0 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_3_5_n_1 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_3_5_n_2 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_6_8_n_0 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_6_8_n_1 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_6_8_n_2 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_9_11_n_0 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_9_11_n_1 : STD_LOGIC;
  signal sample_mem_reg_r3_0_63_9_11_n_2 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_0_2_n_0 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_0_2_n_1 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_0_2_n_2 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_12_14_n_0 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_12_14_n_1 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_12_14_n_2 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_15_15_n_0 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_3_5_n_0 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_3_5_n_1 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_3_5_n_2 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_6_8_n_0 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_6_8_n_1 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_6_8_n_2 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_9_11_n_0 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_9_11_n_1 : STD_LOGIC;
  signal sample_mem_reg_r3_64_127_9_11_n_2 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_0_2_n_0 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_0_2_n_1 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_0_2_n_2 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_12_14_n_0 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_12_14_n_1 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_12_14_n_2 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_15_15_n_0 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_3_5_n_0 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_3_5_n_1 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_3_5_n_2 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_6_8_n_0 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_6_8_n_1 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_6_8_n_2 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_9_11_n_0 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_9_11_n_1 : STD_LOGIC;
  signal sample_mem_reg_r4_0_63_9_11_n_2 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_0_2_n_0 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_0_2_n_1 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_0_2_n_2 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_12_14_n_0 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_12_14_n_1 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_12_14_n_2 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_15_15_n_0 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_3_5_n_0 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_3_5_n_1 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_3_5_n_2 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_6_8_n_0 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_6_8_n_1 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_6_8_n_2 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_9_11_n_0 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_9_11_n_1 : STD_LOGIC;
  signal sample_mem_reg_r4_64_127_9_11_n_2 : STD_LOGIC;
  signal stream_active_i_1_n_0 : STD_LOGIC;
  signal stream_active_i_2_n_0 : STD_LOGIC;
  signal stream_active_i_3_n_0 : STD_LOGIC;
  signal \^stream_active_reg_0\ : STD_LOGIC;
  signal \stream_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \stream_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \stream_index[2]_i_2_n_0\ : STD_LOGIC;
  signal \stream_index[3]_i_1_n_0\ : STD_LOGIC;
  signal \stream_index[3]_i_2_n_0\ : STD_LOGIC;
  signal \stream_index[3]_i_3_n_0\ : STD_LOGIC;
  signal \stream_index[3]_i_4_n_0\ : STD_LOGIC;
  signal \stream_index[4]_i_1_n_0\ : STD_LOGIC;
  signal NLW_sample_mem_reg_r1_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r1_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r1_0_63_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r1_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r1_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r1_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r1_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r1_64_127_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r1_64_127_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r1_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r1_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r1_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r2_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r2_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r2_0_63_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r2_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r2_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r2_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r2_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r2_64_127_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r2_64_127_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r2_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r2_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r2_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r3_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r3_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r3_0_63_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r3_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r3_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r3_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r3_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r3_64_127_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r3_64_127_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r3_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r3_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r3_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r4_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r4_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r4_0_63_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r4_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r4_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r4_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r4_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r4_64_127_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r4_64_127_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r4_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r4_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_sample_mem_reg_r4_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \capture_index[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \capture_index[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \capture_index[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \capture_index[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \capture_index[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \capture_index[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \capture_index[6]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[0]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[10]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[11]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[12]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[13]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[14]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[15]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[16]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[17]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[18]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[19]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[1]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[20]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[21]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[22]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[23]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[24]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[25]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[26]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[27]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[28]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[29]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[2]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[30]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[31]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[32]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[33]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[34]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[35]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[36]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[37]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[38]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[39]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[3]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[40]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[41]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[42]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[43]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[44]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[45]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[46]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[47]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[48]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[49]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[4]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[50]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[51]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[52]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[53]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[54]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[55]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[56]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[57]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[58]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[59]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[5]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[60]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[61]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[62]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[63]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[6]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[7]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[8]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_wave_tdata[9]_INST_0\ : label is "soft_lutpair33";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r1_0_63_0_2 : label is "";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of sample_mem_reg_r1_0_63_0_2 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of sample_mem_reg_r1_0_63_0_2 : label is 63;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of sample_mem_reg_r1_0_63_0_2 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of sample_mem_reg_r1_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r1_0_63_12_14 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r1_0_63_12_14 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r1_0_63_12_14 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r1_0_63_12_14 : label is 12;
  attribute ram_slice_end of sample_mem_reg_r1_0_63_12_14 : label is 14;
  attribute ram_addr_begin of sample_mem_reg_r1_0_63_15_15 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r1_0_63_15_15 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r1_0_63_15_15 : label is 15;
  attribute ram_slice_end of sample_mem_reg_r1_0_63_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r1_0_63_3_5 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r1_0_63_3_5 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r1_0_63_3_5 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r1_0_63_3_5 : label is 3;
  attribute ram_slice_end of sample_mem_reg_r1_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r1_0_63_6_8 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r1_0_63_6_8 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r1_0_63_6_8 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r1_0_63_6_8 : label is 6;
  attribute ram_slice_end of sample_mem_reg_r1_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r1_0_63_9_11 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r1_0_63_9_11 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r1_0_63_9_11 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r1_0_63_9_11 : label is 9;
  attribute ram_slice_end of sample_mem_reg_r1_0_63_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r1_64_127_0_2 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r1_64_127_0_2 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r1_64_127_0_2 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r1_64_127_0_2 : label is 0;
  attribute ram_slice_end of sample_mem_reg_r1_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r1_64_127_12_14 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r1_64_127_12_14 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r1_64_127_12_14 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r1_64_127_12_14 : label is 12;
  attribute ram_slice_end of sample_mem_reg_r1_64_127_12_14 : label is 14;
  attribute ram_addr_begin of sample_mem_reg_r1_64_127_15_15 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r1_64_127_15_15 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r1_64_127_15_15 : label is 15;
  attribute ram_slice_end of sample_mem_reg_r1_64_127_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r1_64_127_3_5 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r1_64_127_3_5 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r1_64_127_3_5 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r1_64_127_3_5 : label is 3;
  attribute ram_slice_end of sample_mem_reg_r1_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r1_64_127_6_8 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r1_64_127_6_8 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r1_64_127_6_8 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r1_64_127_6_8 : label is 6;
  attribute ram_slice_end of sample_mem_reg_r1_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r1_64_127_9_11 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r1_64_127_9_11 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r1_64_127_9_11 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r1_64_127_9_11 : label is 9;
  attribute ram_slice_end of sample_mem_reg_r1_64_127_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r2_0_63_0_2 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r2_0_63_0_2 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r2_0_63_0_2 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r2_0_63_0_2 : label is 0;
  attribute ram_slice_end of sample_mem_reg_r2_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r2_0_63_12_14 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r2_0_63_12_14 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r2_0_63_12_14 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r2_0_63_12_14 : label is 12;
  attribute ram_slice_end of sample_mem_reg_r2_0_63_12_14 : label is 14;
  attribute ram_addr_begin of sample_mem_reg_r2_0_63_15_15 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r2_0_63_15_15 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r2_0_63_15_15 : label is 15;
  attribute ram_slice_end of sample_mem_reg_r2_0_63_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r2_0_63_3_5 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r2_0_63_3_5 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r2_0_63_3_5 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r2_0_63_3_5 : label is 3;
  attribute ram_slice_end of sample_mem_reg_r2_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r2_0_63_6_8 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r2_0_63_6_8 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r2_0_63_6_8 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r2_0_63_6_8 : label is 6;
  attribute ram_slice_end of sample_mem_reg_r2_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r2_0_63_9_11 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r2_0_63_9_11 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r2_0_63_9_11 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r2_0_63_9_11 : label is 9;
  attribute ram_slice_end of sample_mem_reg_r2_0_63_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r2_64_127_0_2 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r2_64_127_0_2 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r2_64_127_0_2 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r2_64_127_0_2 : label is 0;
  attribute ram_slice_end of sample_mem_reg_r2_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r2_64_127_12_14 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r2_64_127_12_14 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r2_64_127_12_14 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r2_64_127_12_14 : label is 12;
  attribute ram_slice_end of sample_mem_reg_r2_64_127_12_14 : label is 14;
  attribute ram_addr_begin of sample_mem_reg_r2_64_127_15_15 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r2_64_127_15_15 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r2_64_127_15_15 : label is 15;
  attribute ram_slice_end of sample_mem_reg_r2_64_127_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r2_64_127_3_5 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r2_64_127_3_5 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r2_64_127_3_5 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r2_64_127_3_5 : label is 3;
  attribute ram_slice_end of sample_mem_reg_r2_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r2_64_127_6_8 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r2_64_127_6_8 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r2_64_127_6_8 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r2_64_127_6_8 : label is 6;
  attribute ram_slice_end of sample_mem_reg_r2_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r2_64_127_9_11 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r2_64_127_9_11 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r2_64_127_9_11 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r2_64_127_9_11 : label is 9;
  attribute ram_slice_end of sample_mem_reg_r2_64_127_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r3_0_63_0_2 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r3_0_63_0_2 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r3_0_63_0_2 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r3_0_63_0_2 : label is 0;
  attribute ram_slice_end of sample_mem_reg_r3_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r3_0_63_12_14 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r3_0_63_12_14 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r3_0_63_12_14 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r3_0_63_12_14 : label is 12;
  attribute ram_slice_end of sample_mem_reg_r3_0_63_12_14 : label is 14;
  attribute ram_addr_begin of sample_mem_reg_r3_0_63_15_15 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r3_0_63_15_15 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r3_0_63_15_15 : label is 15;
  attribute ram_slice_end of sample_mem_reg_r3_0_63_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r3_0_63_3_5 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r3_0_63_3_5 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r3_0_63_3_5 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r3_0_63_3_5 : label is 3;
  attribute ram_slice_end of sample_mem_reg_r3_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r3_0_63_6_8 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r3_0_63_6_8 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r3_0_63_6_8 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r3_0_63_6_8 : label is 6;
  attribute ram_slice_end of sample_mem_reg_r3_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r3_0_63_9_11 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r3_0_63_9_11 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r3_0_63_9_11 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r3_0_63_9_11 : label is 9;
  attribute ram_slice_end of sample_mem_reg_r3_0_63_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r3_64_127_0_2 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r3_64_127_0_2 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r3_64_127_0_2 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r3_64_127_0_2 : label is 0;
  attribute ram_slice_end of sample_mem_reg_r3_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r3_64_127_12_14 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r3_64_127_12_14 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r3_64_127_12_14 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r3_64_127_12_14 : label is 12;
  attribute ram_slice_end of sample_mem_reg_r3_64_127_12_14 : label is 14;
  attribute ram_addr_begin of sample_mem_reg_r3_64_127_15_15 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r3_64_127_15_15 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r3_64_127_15_15 : label is 15;
  attribute ram_slice_end of sample_mem_reg_r3_64_127_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r3_64_127_3_5 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r3_64_127_3_5 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r3_64_127_3_5 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r3_64_127_3_5 : label is 3;
  attribute ram_slice_end of sample_mem_reg_r3_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r3_64_127_6_8 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r3_64_127_6_8 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r3_64_127_6_8 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r3_64_127_6_8 : label is 6;
  attribute ram_slice_end of sample_mem_reg_r3_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r3_64_127_9_11 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r3_64_127_9_11 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r3_64_127_9_11 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r3_64_127_9_11 : label is 9;
  attribute ram_slice_end of sample_mem_reg_r3_64_127_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r4_0_63_0_2 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r4_0_63_0_2 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r4_0_63_0_2 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r4_0_63_0_2 : label is 0;
  attribute ram_slice_end of sample_mem_reg_r4_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r4_0_63_12_14 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r4_0_63_12_14 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r4_0_63_12_14 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r4_0_63_12_14 : label is 12;
  attribute ram_slice_end of sample_mem_reg_r4_0_63_12_14 : label is 14;
  attribute ram_addr_begin of sample_mem_reg_r4_0_63_15_15 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r4_0_63_15_15 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r4_0_63_15_15 : label is 15;
  attribute ram_slice_end of sample_mem_reg_r4_0_63_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r4_0_63_3_5 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r4_0_63_3_5 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r4_0_63_3_5 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r4_0_63_3_5 : label is 3;
  attribute ram_slice_end of sample_mem_reg_r4_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r4_0_63_6_8 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r4_0_63_6_8 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r4_0_63_6_8 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r4_0_63_6_8 : label is 6;
  attribute ram_slice_end of sample_mem_reg_r4_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r4_0_63_9_11 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r4_0_63_9_11 : label is 0;
  attribute ram_addr_end of sample_mem_reg_r4_0_63_9_11 : label is 63;
  attribute ram_slice_begin of sample_mem_reg_r4_0_63_9_11 : label is 9;
  attribute ram_slice_end of sample_mem_reg_r4_0_63_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r4_64_127_0_2 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r4_64_127_0_2 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r4_64_127_0_2 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r4_64_127_0_2 : label is 0;
  attribute ram_slice_end of sample_mem_reg_r4_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r4_64_127_12_14 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r4_64_127_12_14 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r4_64_127_12_14 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r4_64_127_12_14 : label is 12;
  attribute ram_slice_end of sample_mem_reg_r4_64_127_12_14 : label is 14;
  attribute ram_addr_begin of sample_mem_reg_r4_64_127_15_15 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r4_64_127_15_15 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r4_64_127_15_15 : label is 15;
  attribute ram_slice_end of sample_mem_reg_r4_64_127_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r4_64_127_3_5 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r4_64_127_3_5 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r4_64_127_3_5 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r4_64_127_3_5 : label is 3;
  attribute ram_slice_end of sample_mem_reg_r4_64_127_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r4_64_127_6_8 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r4_64_127_6_8 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r4_64_127_6_8 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r4_64_127_6_8 : label is 6;
  attribute ram_slice_end of sample_mem_reg_r4_64_127_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of sample_mem_reg_r4_64_127_9_11 : label is "";
  attribute ram_addr_begin of sample_mem_reg_r4_64_127_9_11 : label is 64;
  attribute ram_addr_end of sample_mem_reg_r4_64_127_9_11 : label is 127;
  attribute ram_slice_begin of sample_mem_reg_r4_64_127_9_11 : label is 9;
  attribute ram_slice_end of sample_mem_reg_r4_64_127_9_11 : label is 11;
  attribute SOFT_HLUTNM of stream_active_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \stream_index[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \stream_index[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \stream_index[3]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \stream_index[3]_i_4\ : label is "soft_lutpair0";
begin
  stream_active_reg_0 <= \^stream_active_reg_0\;
\capture_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => capture_index(0),
      O => \capture_index[0]_i_1_n_0\
    );
\capture_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => capture_index(0),
      I1 => capture_index(1),
      O => \capture_index[1]_i_1_n_0\
    );
\capture_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => capture_index(2),
      I1 => capture_index(1),
      I2 => capture_index(0),
      O => \capture_index[2]_i_1_n_0\
    );
\capture_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => capture_index(3),
      I1 => capture_index(0),
      I2 => capture_index(1),
      I3 => capture_index(2),
      O => \capture_index[3]_i_1_n_0\
    );
\capture_index[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => capture_index(4),
      I1 => capture_index(3),
      I2 => capture_index(0),
      I3 => capture_index(1),
      I4 => capture_index(2),
      O => \capture_index[4]_i_1_n_0\
    );
\capture_index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => capture_index(5),
      I1 => capture_index(3),
      I2 => capture_index(0),
      I3 => capture_index(1),
      I4 => capture_index(2),
      I5 => capture_index(4),
      O => \capture_index[5]_i_1_n_0\
    );
\capture_index[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \capture_index[6]_i_1_n_0\
    );
\capture_index[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => capture_index(6),
      I1 => capture_index(4),
      I2 => capture_index(5),
      I3 => \capture_index[6]_i_3_n_0\,
      O => \capture_index[6]_i_2_n_0\
    );
\capture_index[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => capture_index(3),
      I1 => capture_index(0),
      I2 => capture_index(1),
      I3 => capture_index(2),
      O => \capture_index[6]_i_3_n_0\
    );
\capture_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => \capture_index[0]_i_1_n_0\,
      Q => capture_index(0),
      R => \capture_index[6]_i_1_n_0\
    );
\capture_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => \capture_index[1]_i_1_n_0\,
      Q => capture_index(1),
      R => \capture_index[6]_i_1_n_0\
    );
\capture_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => \capture_index[2]_i_1_n_0\,
      Q => capture_index(2),
      R => \capture_index[6]_i_1_n_0\
    );
\capture_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => \capture_index[3]_i_1_n_0\,
      Q => capture_index(3),
      R => \capture_index[6]_i_1_n_0\
    );
\capture_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => \capture_index[4]_i_1_n_0\,
      Q => capture_index(4),
      R => \capture_index[6]_i_1_n_0\
    );
\capture_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => \capture_index[5]_i_1_n_0\,
      Q => capture_index(5),
      R => \capture_index[6]_i_1_n_0\
    );
\capture_index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => \capture_index[6]_i_2_n_0\,
      Q => capture_index(6),
      R => \capture_index[6]_i_1_n_0\
    );
\m_axis_wave_tdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_0_2_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_0_2_n_0,
      O => m_axis_wave_tdata(0)
    );
\m_axis_wave_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_9_11_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_9_11_n_1,
      O => m_axis_wave_tdata(10)
    );
\m_axis_wave_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_9_11_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_9_11_n_2,
      O => m_axis_wave_tdata(11)
    );
\m_axis_wave_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_12_14_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_12_14_n_0,
      O => m_axis_wave_tdata(12)
    );
\m_axis_wave_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_12_14_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_12_14_n_1,
      O => m_axis_wave_tdata(13)
    );
\m_axis_wave_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_12_14_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_12_14_n_2,
      O => m_axis_wave_tdata(14)
    );
\m_axis_wave_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_15_15_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_15_15_n_0,
      O => m_axis_wave_tdata(15)
    );
\m_axis_wave_tdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_0_2_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_0_2_n_0,
      O => m_axis_wave_tdata(16)
    );
\m_axis_wave_tdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_0_2_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_0_2_n_1,
      O => m_axis_wave_tdata(17)
    );
\m_axis_wave_tdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_0_2_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_0_2_n_2,
      O => m_axis_wave_tdata(18)
    );
\m_axis_wave_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_3_5_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_3_5_n_0,
      O => m_axis_wave_tdata(19)
    );
\m_axis_wave_tdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_0_2_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_0_2_n_1,
      O => m_axis_wave_tdata(1)
    );
\m_axis_wave_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_3_5_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_3_5_n_1,
      O => m_axis_wave_tdata(20)
    );
\m_axis_wave_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_3_5_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_3_5_n_2,
      O => m_axis_wave_tdata(21)
    );
\m_axis_wave_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_6_8_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_6_8_n_0,
      O => m_axis_wave_tdata(22)
    );
\m_axis_wave_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_6_8_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_6_8_n_1,
      O => m_axis_wave_tdata(23)
    );
\m_axis_wave_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_6_8_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_6_8_n_2,
      O => m_axis_wave_tdata(24)
    );
\m_axis_wave_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_9_11_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_9_11_n_0,
      O => m_axis_wave_tdata(25)
    );
\m_axis_wave_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_9_11_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_9_11_n_1,
      O => m_axis_wave_tdata(26)
    );
\m_axis_wave_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_9_11_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_9_11_n_2,
      O => m_axis_wave_tdata(27)
    );
\m_axis_wave_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_12_14_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_12_14_n_0,
      O => m_axis_wave_tdata(28)
    );
\m_axis_wave_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_12_14_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_12_14_n_1,
      O => m_axis_wave_tdata(29)
    );
\m_axis_wave_tdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_0_2_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_0_2_n_2,
      O => m_axis_wave_tdata(2)
    );
\m_axis_wave_tdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_12_14_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_12_14_n_2,
      O => m_axis_wave_tdata(30)
    );
\m_axis_wave_tdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r3_64_127_15_15_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r3_0_63_15_15_n_0,
      O => m_axis_wave_tdata(31)
    );
\m_axis_wave_tdata[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_0_2_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_0_2_n_0,
      O => m_axis_wave_tdata(32)
    );
\m_axis_wave_tdata[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_0_2_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_0_2_n_1,
      O => m_axis_wave_tdata(33)
    );
\m_axis_wave_tdata[34]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_0_2_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_0_2_n_2,
      O => m_axis_wave_tdata(34)
    );
\m_axis_wave_tdata[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_3_5_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_3_5_n_0,
      O => m_axis_wave_tdata(35)
    );
\m_axis_wave_tdata[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_3_5_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_3_5_n_1,
      O => m_axis_wave_tdata(36)
    );
\m_axis_wave_tdata[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_3_5_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_3_5_n_2,
      O => m_axis_wave_tdata(37)
    );
\m_axis_wave_tdata[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_6_8_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_6_8_n_0,
      O => m_axis_wave_tdata(38)
    );
\m_axis_wave_tdata[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_6_8_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_6_8_n_1,
      O => m_axis_wave_tdata(39)
    );
\m_axis_wave_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_3_5_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_3_5_n_0,
      O => m_axis_wave_tdata(3)
    );
\m_axis_wave_tdata[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_6_8_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_6_8_n_2,
      O => m_axis_wave_tdata(40)
    );
\m_axis_wave_tdata[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_9_11_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_9_11_n_0,
      O => m_axis_wave_tdata(41)
    );
\m_axis_wave_tdata[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_9_11_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_9_11_n_1,
      O => m_axis_wave_tdata(42)
    );
\m_axis_wave_tdata[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_9_11_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_9_11_n_2,
      O => m_axis_wave_tdata(43)
    );
\m_axis_wave_tdata[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_12_14_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_12_14_n_0,
      O => m_axis_wave_tdata(44)
    );
\m_axis_wave_tdata[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_12_14_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_12_14_n_1,
      O => m_axis_wave_tdata(45)
    );
\m_axis_wave_tdata[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_12_14_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_12_14_n_2,
      O => m_axis_wave_tdata(46)
    );
\m_axis_wave_tdata[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r2_64_127_15_15_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r2_0_63_15_15_n_0,
      O => m_axis_wave_tdata(47)
    );
\m_axis_wave_tdata[48]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_0_2_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_0_2_n_0,
      O => m_axis_wave_tdata(48)
    );
\m_axis_wave_tdata[49]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_0_2_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_0_2_n_1,
      O => m_axis_wave_tdata(49)
    );
\m_axis_wave_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_3_5_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_3_5_n_1,
      O => m_axis_wave_tdata(4)
    );
\m_axis_wave_tdata[50]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_0_2_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_0_2_n_2,
      O => m_axis_wave_tdata(50)
    );
\m_axis_wave_tdata[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_3_5_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_3_5_n_0,
      O => m_axis_wave_tdata(51)
    );
\m_axis_wave_tdata[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_3_5_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_3_5_n_1,
      O => m_axis_wave_tdata(52)
    );
\m_axis_wave_tdata[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_3_5_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_3_5_n_2,
      O => m_axis_wave_tdata(53)
    );
\m_axis_wave_tdata[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_6_8_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_6_8_n_0,
      O => m_axis_wave_tdata(54)
    );
\m_axis_wave_tdata[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_6_8_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_6_8_n_1,
      O => m_axis_wave_tdata(55)
    );
\m_axis_wave_tdata[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_6_8_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_6_8_n_2,
      O => m_axis_wave_tdata(56)
    );
\m_axis_wave_tdata[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_9_11_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_9_11_n_0,
      O => m_axis_wave_tdata(57)
    );
\m_axis_wave_tdata[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_9_11_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_9_11_n_1,
      O => m_axis_wave_tdata(58)
    );
\m_axis_wave_tdata[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_9_11_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_9_11_n_2,
      O => m_axis_wave_tdata(59)
    );
\m_axis_wave_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_3_5_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_3_5_n_2,
      O => m_axis_wave_tdata(5)
    );
\m_axis_wave_tdata[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_12_14_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_12_14_n_0,
      O => m_axis_wave_tdata(60)
    );
\m_axis_wave_tdata[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_12_14_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_12_14_n_1,
      O => m_axis_wave_tdata(61)
    );
\m_axis_wave_tdata[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_12_14_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_12_14_n_2,
      O => m_axis_wave_tdata(62)
    );
\m_axis_wave_tdata[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r1_64_127_15_15_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r1_0_63_15_15_n_0,
      O => m_axis_wave_tdata(63)
    );
\m_axis_wave_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_6_8_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_6_8_n_0,
      O => m_axis_wave_tdata(6)
    );
\m_axis_wave_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_6_8_n_1,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_6_8_n_1,
      O => m_axis_wave_tdata(7)
    );
\m_axis_wave_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_6_8_n_2,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_6_8_n_2,
      O => m_axis_wave_tdata(8)
    );
\m_axis_wave_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sample_mem_reg_r4_64_127_9_11_n_0,
      I1 => sample_base(6),
      I2 => sample_mem_reg_r4_0_63_9_11_n_0,
      O => m_axis_wave_tdata(9)
    );
m_axis_wave_tlast_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^stream_active_reg_0\,
      I1 => sample_base(4),
      I2 => sample_base(3),
      I3 => sample_base(2),
      I4 => sample_base(5),
      I5 => sample_base(6),
      O => m_axis_wave_tlast
    );
sample_mem_reg_r1_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"11",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"11",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"11",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(0),
      DIB => frame_data(1),
      DIC => frame_data(2),
      DID => '0',
      DOA => sample_mem_reg_r1_0_63_0_2_n_0,
      DOB => sample_mem_reg_r1_0_63_0_2_n_1,
      DOC => sample_mem_reg_r1_0_63_0_2_n_2,
      DOD => NLW_sample_mem_reg_r1_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r1_0_63_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rst_n,
      I1 => frame_valid,
      I2 => capture_index(6),
      O => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r1_0_63_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"11",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"11",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"11",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(12),
      DIB => frame_data(13),
      DIC => frame_data(14),
      DID => '0',
      DOA => sample_mem_reg_r1_0_63_12_14_n_0,
      DOB => sample_mem_reg_r1_0_63_12_14_n_1,
      DOC => sample_mem_reg_r1_0_63_12_14_n_2,
      DOD => NLW_sample_mem_reg_r1_0_63_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r1_0_63_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => capture_index(0),
      A1 => capture_index(1),
      A2 => capture_index(2),
      A3 => capture_index(3),
      A4 => capture_index(4),
      A5 => capture_index(5),
      D => frame_data(15),
      DPO => sample_mem_reg_r1_0_63_15_15_n_0,
      DPRA0 => '1',
      DPRA1 => '1',
      DPRA2 => sample_base(2),
      DPRA3 => sample_base(3),
      DPRA4 => sample_base(4),
      DPRA5 => sample_base(5),
      SPO => NLW_sample_mem_reg_r1_0_63_15_15_SPO_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r1_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"11",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"11",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"11",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(3),
      DIB => frame_data(4),
      DIC => frame_data(5),
      DID => '0',
      DOA => sample_mem_reg_r1_0_63_3_5_n_0,
      DOB => sample_mem_reg_r1_0_63_3_5_n_1,
      DOC => sample_mem_reg_r1_0_63_3_5_n_2,
      DOD => NLW_sample_mem_reg_r1_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r1_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"11",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"11",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"11",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(6),
      DIB => frame_data(7),
      DIC => frame_data(8),
      DID => '0',
      DOA => sample_mem_reg_r1_0_63_6_8_n_0,
      DOB => sample_mem_reg_r1_0_63_6_8_n_1,
      DOC => sample_mem_reg_r1_0_63_6_8_n_2,
      DOD => NLW_sample_mem_reg_r1_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r1_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"11",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"11",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"11",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(9),
      DIB => frame_data(10),
      DIC => frame_data(11),
      DID => '0',
      DOA => sample_mem_reg_r1_0_63_9_11_n_0,
      DOB => sample_mem_reg_r1_0_63_9_11_n_1,
      DOC => sample_mem_reg_r1_0_63_9_11_n_2,
      DOD => NLW_sample_mem_reg_r1_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r1_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"11",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"11",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"11",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(0),
      DIB => frame_data(1),
      DIC => frame_data(2),
      DID => '0',
      DOA => sample_mem_reg_r1_64_127_0_2_n_0,
      DOB => sample_mem_reg_r1_64_127_0_2_n_1,
      DOC => sample_mem_reg_r1_64_127_0_2_n_2,
      DOD => NLW_sample_mem_reg_r1_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r1_64_127_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => rst_n,
      I1 => frame_valid,
      I2 => capture_index(6),
      O => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r1_64_127_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"11",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"11",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"11",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(12),
      DIB => frame_data(13),
      DIC => frame_data(14),
      DID => '0',
      DOA => sample_mem_reg_r1_64_127_12_14_n_0,
      DOB => sample_mem_reg_r1_64_127_12_14_n_1,
      DOC => sample_mem_reg_r1_64_127_12_14_n_2,
      DOD => NLW_sample_mem_reg_r1_64_127_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r1_64_127_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => capture_index(0),
      A1 => capture_index(1),
      A2 => capture_index(2),
      A3 => capture_index(3),
      A4 => capture_index(4),
      A5 => capture_index(5),
      D => frame_data(15),
      DPO => sample_mem_reg_r1_64_127_15_15_n_0,
      DPRA0 => '1',
      DPRA1 => '1',
      DPRA2 => sample_base(2),
      DPRA3 => sample_base(3),
      DPRA4 => sample_base(4),
      DPRA5 => sample_base(5),
      SPO => NLW_sample_mem_reg_r1_64_127_15_15_SPO_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r1_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"11",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"11",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"11",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(3),
      DIB => frame_data(4),
      DIC => frame_data(5),
      DID => '0',
      DOA => sample_mem_reg_r1_64_127_3_5_n_0,
      DOB => sample_mem_reg_r1_64_127_3_5_n_1,
      DOC => sample_mem_reg_r1_64_127_3_5_n_2,
      DOD => NLW_sample_mem_reg_r1_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r1_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"11",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"11",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"11",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(6),
      DIB => frame_data(7),
      DIC => frame_data(8),
      DID => '0',
      DOA => sample_mem_reg_r1_64_127_6_8_n_0,
      DOB => sample_mem_reg_r1_64_127_6_8_n_1,
      DOC => sample_mem_reg_r1_64_127_6_8_n_2,
      DOD => NLW_sample_mem_reg_r1_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r1_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"11",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"11",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"11",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(9),
      DIB => frame_data(10),
      DIC => frame_data(11),
      DID => '0',
      DOA => sample_mem_reg_r1_64_127_9_11_n_0,
      DOB => sample_mem_reg_r1_64_127_9_11_n_1,
      DOC => sample_mem_reg_r1_64_127_9_11_n_2,
      DOD => NLW_sample_mem_reg_r1_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r2_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"10",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"10",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"10",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(0),
      DIB => frame_data(1),
      DIC => frame_data(2),
      DID => '0',
      DOA => sample_mem_reg_r2_0_63_0_2_n_0,
      DOB => sample_mem_reg_r2_0_63_0_2_n_1,
      DOC => sample_mem_reg_r2_0_63_0_2_n_2,
      DOD => NLW_sample_mem_reg_r2_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r2_0_63_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"10",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"10",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"10",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(12),
      DIB => frame_data(13),
      DIC => frame_data(14),
      DID => '0',
      DOA => sample_mem_reg_r2_0_63_12_14_n_0,
      DOB => sample_mem_reg_r2_0_63_12_14_n_1,
      DOC => sample_mem_reg_r2_0_63_12_14_n_2,
      DOD => NLW_sample_mem_reg_r2_0_63_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r2_0_63_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => capture_index(0),
      A1 => capture_index(1),
      A2 => capture_index(2),
      A3 => capture_index(3),
      A4 => capture_index(4),
      A5 => capture_index(5),
      D => frame_data(15),
      DPO => sample_mem_reg_r2_0_63_15_15_n_0,
      DPRA0 => '0',
      DPRA1 => '1',
      DPRA2 => sample_base(2),
      DPRA3 => sample_base(3),
      DPRA4 => sample_base(4),
      DPRA5 => sample_base(5),
      SPO => NLW_sample_mem_reg_r2_0_63_15_15_SPO_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r2_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"10",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"10",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"10",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(3),
      DIB => frame_data(4),
      DIC => frame_data(5),
      DID => '0',
      DOA => sample_mem_reg_r2_0_63_3_5_n_0,
      DOB => sample_mem_reg_r2_0_63_3_5_n_1,
      DOC => sample_mem_reg_r2_0_63_3_5_n_2,
      DOD => NLW_sample_mem_reg_r2_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r2_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"10",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"10",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"10",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(6),
      DIB => frame_data(7),
      DIC => frame_data(8),
      DID => '0',
      DOA => sample_mem_reg_r2_0_63_6_8_n_0,
      DOB => sample_mem_reg_r2_0_63_6_8_n_1,
      DOC => sample_mem_reg_r2_0_63_6_8_n_2,
      DOD => NLW_sample_mem_reg_r2_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r2_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"10",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"10",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"10",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(9),
      DIB => frame_data(10),
      DIC => frame_data(11),
      DID => '0',
      DOA => sample_mem_reg_r2_0_63_9_11_n_0,
      DOB => sample_mem_reg_r2_0_63_9_11_n_1,
      DOC => sample_mem_reg_r2_0_63_9_11_n_2,
      DOD => NLW_sample_mem_reg_r2_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r2_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"10",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"10",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"10",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(0),
      DIB => frame_data(1),
      DIC => frame_data(2),
      DID => '0',
      DOA => sample_mem_reg_r2_64_127_0_2_n_0,
      DOB => sample_mem_reg_r2_64_127_0_2_n_1,
      DOC => sample_mem_reg_r2_64_127_0_2_n_2,
      DOD => NLW_sample_mem_reg_r2_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r2_64_127_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"10",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"10",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"10",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(12),
      DIB => frame_data(13),
      DIC => frame_data(14),
      DID => '0',
      DOA => sample_mem_reg_r2_64_127_12_14_n_0,
      DOB => sample_mem_reg_r2_64_127_12_14_n_1,
      DOC => sample_mem_reg_r2_64_127_12_14_n_2,
      DOD => NLW_sample_mem_reg_r2_64_127_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r2_64_127_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => capture_index(0),
      A1 => capture_index(1),
      A2 => capture_index(2),
      A3 => capture_index(3),
      A4 => capture_index(4),
      A5 => capture_index(5),
      D => frame_data(15),
      DPO => sample_mem_reg_r2_64_127_15_15_n_0,
      DPRA0 => '0',
      DPRA1 => '1',
      DPRA2 => sample_base(2),
      DPRA3 => sample_base(3),
      DPRA4 => sample_base(4),
      DPRA5 => sample_base(5),
      SPO => NLW_sample_mem_reg_r2_64_127_15_15_SPO_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r2_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"10",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"10",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"10",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(3),
      DIB => frame_data(4),
      DIC => frame_data(5),
      DID => '0',
      DOA => sample_mem_reg_r2_64_127_3_5_n_0,
      DOB => sample_mem_reg_r2_64_127_3_5_n_1,
      DOC => sample_mem_reg_r2_64_127_3_5_n_2,
      DOD => NLW_sample_mem_reg_r2_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r2_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"10",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"10",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"10",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(6),
      DIB => frame_data(7),
      DIC => frame_data(8),
      DID => '0',
      DOA => sample_mem_reg_r2_64_127_6_8_n_0,
      DOB => sample_mem_reg_r2_64_127_6_8_n_1,
      DOC => sample_mem_reg_r2_64_127_6_8_n_2,
      DOD => NLW_sample_mem_reg_r2_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r2_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"10",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"10",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"10",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(9),
      DIB => frame_data(10),
      DIC => frame_data(11),
      DID => '0',
      DOA => sample_mem_reg_r2_64_127_9_11_n_0,
      DOB => sample_mem_reg_r2_64_127_9_11_n_1,
      DOC => sample_mem_reg_r2_64_127_9_11_n_2,
      DOD => NLW_sample_mem_reg_r2_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r3_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"01",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"01",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"01",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(0),
      DIB => frame_data(1),
      DIC => frame_data(2),
      DID => '0',
      DOA => sample_mem_reg_r3_0_63_0_2_n_0,
      DOB => sample_mem_reg_r3_0_63_0_2_n_1,
      DOC => sample_mem_reg_r3_0_63_0_2_n_2,
      DOD => NLW_sample_mem_reg_r3_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r3_0_63_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"01",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"01",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"01",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(12),
      DIB => frame_data(13),
      DIC => frame_data(14),
      DID => '0',
      DOA => sample_mem_reg_r3_0_63_12_14_n_0,
      DOB => sample_mem_reg_r3_0_63_12_14_n_1,
      DOC => sample_mem_reg_r3_0_63_12_14_n_2,
      DOD => NLW_sample_mem_reg_r3_0_63_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r3_0_63_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => capture_index(0),
      A1 => capture_index(1),
      A2 => capture_index(2),
      A3 => capture_index(3),
      A4 => capture_index(4),
      A5 => capture_index(5),
      D => frame_data(15),
      DPO => sample_mem_reg_r3_0_63_15_15_n_0,
      DPRA0 => '1',
      DPRA1 => '0',
      DPRA2 => sample_base(2),
      DPRA3 => sample_base(3),
      DPRA4 => sample_base(4),
      DPRA5 => sample_base(5),
      SPO => NLW_sample_mem_reg_r3_0_63_15_15_SPO_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r3_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"01",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"01",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"01",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(3),
      DIB => frame_data(4),
      DIC => frame_data(5),
      DID => '0',
      DOA => sample_mem_reg_r3_0_63_3_5_n_0,
      DOB => sample_mem_reg_r3_0_63_3_5_n_1,
      DOC => sample_mem_reg_r3_0_63_3_5_n_2,
      DOD => NLW_sample_mem_reg_r3_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r3_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"01",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"01",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"01",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(6),
      DIB => frame_data(7),
      DIC => frame_data(8),
      DID => '0',
      DOA => sample_mem_reg_r3_0_63_6_8_n_0,
      DOB => sample_mem_reg_r3_0_63_6_8_n_1,
      DOC => sample_mem_reg_r3_0_63_6_8_n_2,
      DOD => NLW_sample_mem_reg_r3_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r3_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"01",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"01",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"01",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(9),
      DIB => frame_data(10),
      DIC => frame_data(11),
      DID => '0',
      DOA => sample_mem_reg_r3_0_63_9_11_n_0,
      DOB => sample_mem_reg_r3_0_63_9_11_n_1,
      DOC => sample_mem_reg_r3_0_63_9_11_n_2,
      DOD => NLW_sample_mem_reg_r3_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r3_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"01",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"01",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"01",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(0),
      DIB => frame_data(1),
      DIC => frame_data(2),
      DID => '0',
      DOA => sample_mem_reg_r3_64_127_0_2_n_0,
      DOB => sample_mem_reg_r3_64_127_0_2_n_1,
      DOC => sample_mem_reg_r3_64_127_0_2_n_2,
      DOD => NLW_sample_mem_reg_r3_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r3_64_127_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"01",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"01",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"01",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(12),
      DIB => frame_data(13),
      DIC => frame_data(14),
      DID => '0',
      DOA => sample_mem_reg_r3_64_127_12_14_n_0,
      DOB => sample_mem_reg_r3_64_127_12_14_n_1,
      DOC => sample_mem_reg_r3_64_127_12_14_n_2,
      DOD => NLW_sample_mem_reg_r3_64_127_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r3_64_127_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => capture_index(0),
      A1 => capture_index(1),
      A2 => capture_index(2),
      A3 => capture_index(3),
      A4 => capture_index(4),
      A5 => capture_index(5),
      D => frame_data(15),
      DPO => sample_mem_reg_r3_64_127_15_15_n_0,
      DPRA0 => '1',
      DPRA1 => '0',
      DPRA2 => sample_base(2),
      DPRA3 => sample_base(3),
      DPRA4 => sample_base(4),
      DPRA5 => sample_base(5),
      SPO => NLW_sample_mem_reg_r3_64_127_15_15_SPO_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r3_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"01",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"01",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"01",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(3),
      DIB => frame_data(4),
      DIC => frame_data(5),
      DID => '0',
      DOA => sample_mem_reg_r3_64_127_3_5_n_0,
      DOB => sample_mem_reg_r3_64_127_3_5_n_1,
      DOC => sample_mem_reg_r3_64_127_3_5_n_2,
      DOD => NLW_sample_mem_reg_r3_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r3_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"01",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"01",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"01",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(6),
      DIB => frame_data(7),
      DIC => frame_data(8),
      DID => '0',
      DOA => sample_mem_reg_r3_64_127_6_8_n_0,
      DOB => sample_mem_reg_r3_64_127_6_8_n_1,
      DOC => sample_mem_reg_r3_64_127_6_8_n_2,
      DOD => NLW_sample_mem_reg_r3_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r3_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"01",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"01",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"01",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(9),
      DIB => frame_data(10),
      DIC => frame_data(11),
      DID => '0',
      DOA => sample_mem_reg_r3_64_127_9_11_n_0,
      DOB => sample_mem_reg_r3_64_127_9_11_n_1,
      DOC => sample_mem_reg_r3_64_127_9_11_n_2,
      DOD => NLW_sample_mem_reg_r3_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r4_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"00",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"00",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"00",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(0),
      DIB => frame_data(1),
      DIC => frame_data(2),
      DID => '0',
      DOA => sample_mem_reg_r4_0_63_0_2_n_0,
      DOB => sample_mem_reg_r4_0_63_0_2_n_1,
      DOC => sample_mem_reg_r4_0_63_0_2_n_2,
      DOD => NLW_sample_mem_reg_r4_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r4_0_63_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"00",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"00",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"00",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(12),
      DIB => frame_data(13),
      DIC => frame_data(14),
      DID => '0',
      DOA => sample_mem_reg_r4_0_63_12_14_n_0,
      DOB => sample_mem_reg_r4_0_63_12_14_n_1,
      DOC => sample_mem_reg_r4_0_63_12_14_n_2,
      DOD => NLW_sample_mem_reg_r4_0_63_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r4_0_63_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => capture_index(0),
      A1 => capture_index(1),
      A2 => capture_index(2),
      A3 => capture_index(3),
      A4 => capture_index(4),
      A5 => capture_index(5),
      D => frame_data(15),
      DPO => sample_mem_reg_r4_0_63_15_15_n_0,
      DPRA0 => '0',
      DPRA1 => '0',
      DPRA2 => sample_base(2),
      DPRA3 => sample_base(3),
      DPRA4 => sample_base(4),
      DPRA5 => sample_base(5),
      SPO => NLW_sample_mem_reg_r4_0_63_15_15_SPO_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r4_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"00",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"00",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"00",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(3),
      DIB => frame_data(4),
      DIC => frame_data(5),
      DID => '0',
      DOA => sample_mem_reg_r4_0_63_3_5_n_0,
      DOB => sample_mem_reg_r4_0_63_3_5_n_1,
      DOC => sample_mem_reg_r4_0_63_3_5_n_2,
      DOD => NLW_sample_mem_reg_r4_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r4_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"00",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"00",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"00",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(6),
      DIB => frame_data(7),
      DIC => frame_data(8),
      DID => '0',
      DOA => sample_mem_reg_r4_0_63_6_8_n_0,
      DOB => sample_mem_reg_r4_0_63_6_8_n_1,
      DOC => sample_mem_reg_r4_0_63_6_8_n_2,
      DOD => NLW_sample_mem_reg_r4_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r4_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"00",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"00",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"00",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(9),
      DIB => frame_data(10),
      DIC => frame_data(11),
      DID => '0',
      DOA => sample_mem_reg_r4_0_63_9_11_n_0,
      DOB => sample_mem_reg_r4_0_63_9_11_n_1,
      DOC => sample_mem_reg_r4_0_63_9_11_n_2,
      DOD => NLW_sample_mem_reg_r4_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_0_63_0_2_i_1_n_0
    );
sample_mem_reg_r4_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"00",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"00",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"00",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(0),
      DIB => frame_data(1),
      DIC => frame_data(2),
      DID => '0',
      DOA => sample_mem_reg_r4_64_127_0_2_n_0,
      DOB => sample_mem_reg_r4_64_127_0_2_n_1,
      DOC => sample_mem_reg_r4_64_127_0_2_n_2,
      DOD => NLW_sample_mem_reg_r4_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r4_64_127_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"00",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"00",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"00",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(12),
      DIB => frame_data(13),
      DIC => frame_data(14),
      DID => '0',
      DOA => sample_mem_reg_r4_64_127_12_14_n_0,
      DOB => sample_mem_reg_r4_64_127_12_14_n_1,
      DOC => sample_mem_reg_r4_64_127_12_14_n_2,
      DOD => NLW_sample_mem_reg_r4_64_127_12_14_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r4_64_127_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => capture_index(0),
      A1 => capture_index(1),
      A2 => capture_index(2),
      A3 => capture_index(3),
      A4 => capture_index(4),
      A5 => capture_index(5),
      D => frame_data(15),
      DPO => sample_mem_reg_r4_64_127_15_15_n_0,
      DPRA0 => '0',
      DPRA1 => '0',
      DPRA2 => sample_base(2),
      DPRA3 => sample_base(3),
      DPRA4 => sample_base(4),
      DPRA5 => sample_base(5),
      SPO => NLW_sample_mem_reg_r4_64_127_15_15_SPO_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r4_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"00",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"00",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"00",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(3),
      DIB => frame_data(4),
      DIC => frame_data(5),
      DID => '0',
      DOA => sample_mem_reg_r4_64_127_3_5_n_0,
      DOB => sample_mem_reg_r4_64_127_3_5_n_1,
      DOC => sample_mem_reg_r4_64_127_3_5_n_2,
      DOD => NLW_sample_mem_reg_r4_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r4_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"00",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"00",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"00",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(6),
      DIB => frame_data(7),
      DIC => frame_data(8),
      DID => '0',
      DOA => sample_mem_reg_r4_64_127_6_8_n_0,
      DOB => sample_mem_reg_r4_64_127_6_8_n_1,
      DOC => sample_mem_reg_r4_64_127_6_8_n_2,
      DOD => NLW_sample_mem_reg_r4_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
sample_mem_reg_r4_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 2) => sample_base(5 downto 2),
      ADDRA(1 downto 0) => B"00",
      ADDRB(5 downto 2) => sample_base(5 downto 2),
      ADDRB(1 downto 0) => B"00",
      ADDRC(5 downto 2) => sample_base(5 downto 2),
      ADDRC(1 downto 0) => B"00",
      ADDRD(5 downto 0) => capture_index(5 downto 0),
      DIA => frame_data(9),
      DIB => frame_data(10),
      DIC => frame_data(11),
      DID => '0',
      DOA => sample_mem_reg_r4_64_127_9_11_n_0,
      DOB => sample_mem_reg_r4_64_127_9_11_n_1,
      DOC => sample_mem_reg_r4_64_127_9_11_n_2,
      DOD => NLW_sample_mem_reg_r4_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => sample_mem_reg_r1_64_127_0_2_i_1_n_0
    );
stream_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7000000"
    )
        port map (
      I0 => m_axis_wave_tready,
      I1 => \^stream_active_reg_0\,
      I2 => stream_active_i_2_n_0,
      I3 => stream_active_i_3_n_0,
      I4 => rst_n,
      O => stream_active_i_1_n_0
    );
stream_active_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => sample_base(6),
      I1 => sample_base(5),
      I2 => sample_base(2),
      I3 => sample_base(3),
      I4 => sample_base(4),
      O => stream_active_i_2_n_0
    );
stream_active_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => \capture_index[6]_i_3_n_0\,
      I1 => capture_index(5),
      I2 => capture_index(4),
      I3 => capture_index(6),
      I4 => frame_valid,
      I5 => \^stream_active_reg_0\,
      O => stream_active_i_3_n_0
    );
stream_active_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => stream_active_i_1_n_0,
      Q => \^stream_active_reg_0\,
      R => '0'
    );
\stream_index[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^stream_active_reg_0\,
      I1 => \stream_index[2]_i_2_n_0\,
      I2 => sample_base(2),
      O => \stream_index[0]_i_1_n_0\
    );
\stream_index[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA28"
    )
        port map (
      I0 => \^stream_active_reg_0\,
      I1 => sample_base(2),
      I2 => sample_base(3),
      I3 => \stream_index[2]_i_2_n_0\,
      O => \stream_index[1]_i_1_n_0\
    );
\stream_index[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA8A8A8"
    )
        port map (
      I0 => \^stream_active_reg_0\,
      I1 => \stream_index[2]_i_2_n_0\,
      I2 => sample_base(4),
      I3 => sample_base(3),
      I4 => sample_base(2),
      O => \stream_index[2]_i_1_n_0\
    );
\stream_index[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5555555"
    )
        port map (
      I0 => m_axis_wave_tready,
      I1 => sample_base(3),
      I2 => sample_base(4),
      I3 => sample_base(6),
      I4 => sample_base(5),
      O => \stream_index[2]_i_2_n_0\
    );
\stream_index[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10101010101010"
    )
        port map (
      I0 => \capture_index[6]_i_3_n_0\,
      I1 => \stream_index[3]_i_3_n_0\,
      I2 => frame_valid,
      I3 => m_axis_wave_tready,
      I4 => \^stream_active_reg_0\,
      I5 => stream_active_i_2_n_0,
      O => \stream_index[3]_i_1_n_0\
    );
\stream_index[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8288AAAAAAAAAAAA"
    )
        port map (
      I0 => \^stream_active_reg_0\,
      I1 => sample_base(5),
      I2 => \stream_index[3]_i_4_n_0\,
      I3 => sample_base(4),
      I4 => m_axis_wave_tready,
      I5 => stream_active_i_2_n_0,
      O => \stream_index[3]_i_2_n_0\
    );
\stream_index[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => capture_index(5),
      I1 => capture_index(4),
      I2 => capture_index(6),
      I3 => \^stream_active_reg_0\,
      O => \stream_index[3]_i_3_n_0\
    );
\stream_index[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sample_base(2),
      I1 => sample_base(3),
      O => \stream_index[3]_i_4_n_0\
    );
\stream_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8AAA8A8A8A8A8A"
    )
        port map (
      I0 => \^stream_active_reg_0\,
      I1 => sample_base(6),
      I2 => m_axis_wave_tready,
      I3 => sample_base(5),
      I4 => \stream_index[3]_i_4_n_0\,
      I5 => sample_base(4),
      O => \stream_index[4]_i_1_n_0\
    );
\stream_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \stream_index[3]_i_1_n_0\,
      D => \stream_index[0]_i_1_n_0\,
      Q => sample_base(2),
      R => \capture_index[6]_i_1_n_0\
    );
\stream_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \stream_index[3]_i_1_n_0\,
      D => \stream_index[1]_i_1_n_0\,
      Q => sample_base(3),
      R => \capture_index[6]_i_1_n_0\
    );
\stream_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \stream_index[3]_i_1_n_0\,
      D => \stream_index[2]_i_1_n_0\,
      Q => sample_base(4),
      R => \capture_index[6]_i_1_n_0\
    );
\stream_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \stream_index[3]_i_1_n_0\,
      D => \stream_index[3]_i_2_n_0\,
      Q => sample_base(5),
      R => \capture_index[6]_i_1_n_0\
    );
\stream_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \stream_index[3]_i_1_n_0\,
      D => \stream_index[4]_i_1_n_0\,
      Q => sample_base(6),
      R => \capture_index[6]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_raw_waveform_capture_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    frame_valid : in STD_LOGIC;
    frame_data : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axis_wave_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_wave_tvalid : out STD_LOGIC;
    m_axis_wave_tlast : out STD_LOGIC;
    m_axis_wave_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of System_raw_waveform_capture_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of System_raw_waveform_capture_0_0 : entity is "System_raw_waveform_capture_0_0,raw_waveform_capture,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of System_raw_waveform_capture_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of System_raw_waveform_capture_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of System_raw_waveform_capture_0_0 : entity is "raw_waveform_capture,Vivado 2018.3";
end System_raw_waveform_capture_0_0;

architecture STRUCTURE of System_raw_waveform_capture_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_wave, FREQ_HZ 196595744, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_wave_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_wave TLAST";
  attribute X_INTERFACE_INFO of m_axis_wave_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_wave TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_wave_tready : signal is "XIL_INTERFACENAME m_axis_wave, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 196595744, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_wave_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_wave TVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_wave_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_wave TDATA";
begin
inst: entity work.System_raw_waveform_capture_0_0_raw_waveform_capture
     port map (
      clk => clk,
      frame_data(15 downto 0) => frame_data(15 downto 0),
      frame_valid => frame_valid,
      m_axis_wave_tdata(63 downto 0) => m_axis_wave_tdata(63 downto 0),
      m_axis_wave_tlast => m_axis_wave_tlast,
      m_axis_wave_tready => m_axis_wave_tready,
      rst_n => rst_n,
      stream_active_reg_0 => m_axis_wave_tvalid
    );
end STRUCTURE;
