-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 10 09:21:55 2026
-- Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Ruanjian/Vivado/zynq_chengxu/ZYNQ_7015/ZYNQ_7020_yuntu/AXI_DMA.srcs/sources_1/bd/System/ip/System_raw_waveform_capture_0_0/System_raw_waveform_capture_0_0_stub.vhdl
-- Design      : System_raw_waveform_capture_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity System_raw_waveform_capture_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    frame_valid : in STD_LOGIC;
    frame_data : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axis_wave_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_wave_tvalid : out STD_LOGIC;
    m_axis_wave_tlast : out STD_LOGIC;
    m_axis_wave_tready : in STD_LOGIC
  );

end System_raw_waveform_capture_0_0;

architecture stub of System_raw_waveform_capture_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,frame_valid,frame_data[1023:0],m_axis_wave_tdata[63:0],m_axis_wave_tvalid,m_axis_wave_tlast,m_axis_wave_tready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "raw_waveform_capture,Vivado 2018.3";
begin
end;
