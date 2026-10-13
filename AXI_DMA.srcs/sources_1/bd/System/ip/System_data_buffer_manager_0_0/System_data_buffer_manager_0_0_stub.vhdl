-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jul 16 20:36:58 2026
-- Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Admin/Desktop/ZYNQ_7020/AXI_DMA.srcs/sources_1/bd/System/ip/System_data_buffer_manager_0_0/System_data_buffer_manager_0_0_stub.vhdl
-- Design      : System_data_buffer_manager_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity System_data_buffer_manager_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    frame_valid : in STD_LOGIC;
    frame_data : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    start_processing : out STD_LOGIC;
    processing_done : in STD_LOGIC;
    bram_wr_addr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    bram_wr_data : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    bram_we : out STD_LOGIC
  );

end System_data_buffer_manager_0_0;

architecture stub of System_data_buffer_manager_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,frame_valid,frame_data[1023:0],start_processing,processing_done,bram_wr_addr[6:0],bram_wr_data[1023:0],bram_we";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "data_buffer_manager,Vivado 2018.3";
begin
end;
