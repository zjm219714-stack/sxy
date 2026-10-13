-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jul 16 20:36:58 2026
-- Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Admin/Desktop/ZYNQ_7020/AXI_DMA.srcs/sources_1/bd/System/ip/System_data_buffer_manager_0_0/System_data_buffer_manager_0_0_sim_netlist.vhdl
-- Design      : System_data_buffer_manager_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_data_buffer_manager_0_0_data_buffer_manager is
  port (
    bram_wr_addr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    start_processing : out STD_LOGIC;
    frame_valid : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of System_data_buffer_manager_0_0_data_buffer_manager : entity is "data_buffer_manager";
end System_data_buffer_manager_0_0_data_buffer_manager;

architecture STRUCTURE of System_data_buffer_manager_0_0_data_buffer_manager is
  signal \^bram_wr_addr\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal start_processing_i_1_n_0 : STD_LOGIC;
  signal start_processing_i_2_n_0 : STD_LOGIC;
  signal wr_ptr : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \wr_ptr[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wr_ptr[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wr_ptr[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wr_ptr[4]_i_1\ : label is "soft_lutpair0";
begin
  bram_wr_addr(6 downto 0) <= \^bram_wr_addr\(6 downto 0);
start_processing_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => start_processing_i_2_n_0,
      I1 => \^bram_wr_addr\(6),
      I2 => frame_valid,
      I3 => rst_n,
      O => start_processing_i_1_n_0
    );
start_processing_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^bram_wr_addr\(4),
      I1 => \^bram_wr_addr\(2),
      I2 => \^bram_wr_addr\(0),
      I3 => \^bram_wr_addr\(1),
      I4 => \^bram_wr_addr\(3),
      I5 => \^bram_wr_addr\(5),
      O => start_processing_i_2_n_0
    );
start_processing_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => start_processing_i_1_n_0,
      Q => start_processing,
      R => '0'
    );
\wr_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_wr_addr\(0),
      O => wr_ptr(0)
    );
\wr_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bram_wr_addr\(0),
      I1 => \^bram_wr_addr\(1),
      O => wr_ptr(1)
    );
\wr_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^bram_wr_addr\(1),
      I1 => \^bram_wr_addr\(0),
      I2 => \^bram_wr_addr\(2),
      O => wr_ptr(2)
    );
\wr_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^bram_wr_addr\(2),
      I1 => \^bram_wr_addr\(0),
      I2 => \^bram_wr_addr\(1),
      I3 => \^bram_wr_addr\(3),
      O => wr_ptr(3)
    );
\wr_ptr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^bram_wr_addr\(3),
      I1 => \^bram_wr_addr\(1),
      I2 => \^bram_wr_addr\(0),
      I3 => \^bram_wr_addr\(2),
      I4 => \^bram_wr_addr\(4),
      O => wr_ptr(4)
    );
\wr_ptr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^bram_wr_addr\(4),
      I1 => \^bram_wr_addr\(2),
      I2 => \^bram_wr_addr\(0),
      I3 => \^bram_wr_addr\(1),
      I4 => \^bram_wr_addr\(3),
      I5 => \^bram_wr_addr\(5),
      O => wr_ptr(5)
    );
\wr_ptr[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => p_0_in
    );
\wr_ptr[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => start_processing_i_2_n_0,
      I1 => \^bram_wr_addr\(6),
      O => wr_ptr(6)
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => wr_ptr(0),
      Q => \^bram_wr_addr\(0),
      R => p_0_in
    );
\wr_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => wr_ptr(1),
      Q => \^bram_wr_addr\(1),
      R => p_0_in
    );
\wr_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => wr_ptr(2),
      Q => \^bram_wr_addr\(2),
      R => p_0_in
    );
\wr_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => wr_ptr(3),
      Q => \^bram_wr_addr\(3),
      R => p_0_in
    );
\wr_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => wr_ptr(4),
      Q => \^bram_wr_addr\(4),
      R => p_0_in
    );
\wr_ptr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => wr_ptr(5),
      Q => \^bram_wr_addr\(5),
      R => p_0_in
    );
\wr_ptr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => frame_valid,
      D => wr_ptr(6),
      Q => \^bram_wr_addr\(6),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_data_buffer_manager_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of System_data_buffer_manager_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of System_data_buffer_manager_0_0 : entity is "System_data_buffer_manager_0_0,data_buffer_manager,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of System_data_buffer_manager_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of System_data_buffer_manager_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of System_data_buffer_manager_0_0 : entity is "data_buffer_manager,Vivado 2018.3";
end System_data_buffer_manager_0_0;

architecture STRUCTURE of System_data_buffer_manager_0_0 is
  signal \^frame_data\ : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal \^frame_valid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 122875816, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^frame_data\(1023 downto 0) <= frame_data(1023 downto 0);
  \^frame_valid\ <= frame_valid;
  bram_we <= \^frame_valid\;
  bram_wr_data(1023 downto 0) <= \^frame_data\(1023 downto 0);
inst: entity work.System_data_buffer_manager_0_0_data_buffer_manager
     port map (
      bram_wr_addr(6 downto 0) => bram_wr_addr(6 downto 0),
      clk => clk,
      frame_valid => \^frame_valid\,
      rst_n => rst_n,
      start_processing => start_processing
    );
end STRUCTURE;
