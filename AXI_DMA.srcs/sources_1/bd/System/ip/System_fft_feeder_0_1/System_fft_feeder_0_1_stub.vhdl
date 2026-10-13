-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jul 16 20:37:00 2026
-- Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Admin/Desktop/ZYNQ_7020/AXI_DMA.srcs/sources_1/bd/System/ip/System_fft_feeder_0_1/System_fft_feeder_0_1_stub.vhdl
-- Design      : System_fft_feeder_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity System_fft_feeder_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    start_processing : in STD_LOGIC;
    processing_done : out STD_LOGIC;
    bram_rd_addr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    bram_rd_data : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    rom_rd_addr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    rom_rd_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_fft_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_fft_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_fft_tvalid : out STD_LOGIC;
    m_axis_fft_tlast : out STD_LOGIC;
    m_axis_fft_tready : in STD_LOGIC
  );

end System_fft_feeder_0_1;

architecture stub of System_fft_feeder_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,start_processing,processing_done,bram_rd_addr[6:0],bram_rd_data[1023:0],rom_rd_addr[6:0],rom_rd_data[15:0],m_axis_fft_tdata[31:0],m_axis_fft_tuser[7:0],m_axis_fft_tvalid,m_axis_fft_tlast,m_axis_fft_tready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fft_feeder,Vivado 2018.3";
begin
end;
