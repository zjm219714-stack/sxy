-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 10 10:12:50 2026
-- Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Ruanjian/Vivado/zynq_chengxu/ZYNQ_7015/ZYNQ_7020_yuntu/AXI_DMA.srcs/sources_1/bd/System/ip/System_adau7118_i2c_init_0_0/System_adau7118_i2c_init_0_0_stub.vhdl
-- Design      : System_adau7118_i2c_init_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity System_adau7118_i2c_init_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    scl : out STD_LOGIC;
    sda : inout STD_LOGIC;
    init_done : out STD_LOGIC;
    init_error : out STD_LOGIC;
    busy : out STD_LOGIC
  );

end System_adau7118_i2c_init_0_0;

architecture stub of System_adau7118_i2c_init_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,scl,sda,init_done,init_error,busy";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "adau7118_i2c_init,Vivado 2018.3";
begin
end;
