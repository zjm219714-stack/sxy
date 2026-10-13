-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 10 10:24:01 2026
-- Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Ruanjian/Vivado/zynq_chengxu/ZYNQ_7015/ZYNQ_7020_yuntu/AXI_DMA.srcs/sources_1/bd/System/ip/System_ADAU7118_0_0/System_ADAU7118_0_0_stub.vhdl
-- Design      : System_ADAU7118_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity System_ADAU7118_0_0 is
  Port ( 
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

end System_ADAU7118_0_0;

architecture stub of System_ADAU7118_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clk,sys_rst_n,pl_work,LED_75K,LED_192K,SDATA1,SDATA2,SDATA3,SDATA4,SDATA5,SDATA6,SDATA7,SDATA8,FSYNC1,FSYNC2,FSYNC3,FSYNC4,FSYNC5,FSYNC6,FSYNC7,FSYNC8,BCLK1,BCLK2,BCLK3,BCLK4,BCLK5,BCLK6,BCLK7,BCLK8,ADAU7118_1_CH0_o[23:0],ADAU7118_1_CH1_o[23:0],ADAU7118_1_CH2_o[23:0],ADAU7118_1_CH3_o[23:0],ADAU7118_1_CH4_o[23:0],ADAU7118_1_CH5_o[23:0],ADAU7118_1_CH6_o[23:0],ADAU7118_1_CH7_o[23:0],BIT_cnt[15:0],m_axis_tdata[127:0],m_axis_tkeep[15:0],m_axis_tlast,m_axis_tvalid,m_axis_tready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ADAU7118,Vivado 2018.3";
begin
end;
