-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jul 16 20:36:58 2026
-- Host        : DESKTOP-B72RTA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Admin/Desktop/ZYNQ_7020/AXI_DMA.srcs/sources_1/bd/System/ip/System_axis_tlast_aggregator_0_1/System_axis_tlast_aggregator_0_1_sim_netlist.vhdl
-- Design      : System_axis_tlast_aggregator_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_axis_tlast_aggregator_0_1_axis_tlast_aggregator is
  port (
    m_axis_tlast : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of System_axis_tlast_aggregator_0_1_axis_tlast_aggregator : entity is "axis_tlast_aggregator";
end System_axis_tlast_aggregator_0_1_axis_tlast_aggregator;

architecture STRUCTURE of System_axis_tlast_aggregator_0_1_axis_tlast_aggregator is
  signal channel_cnt : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \channel_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \channel_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal channel_cnt_0 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal m_axis_tlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \channel_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \channel_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \channel_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \channel_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \channel_cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0_i_1 : label is "soft_lutpair1";
begin
\channel_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => channel_cnt(0),
      O => \channel_cnt[0]_i_1_n_0\
    );
\channel_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => channel_cnt(0),
      I1 => channel_cnt(1),
      O => channel_cnt_0(1)
    );
\channel_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => channel_cnt(2),
      I1 => channel_cnt(0),
      I2 => channel_cnt(1),
      O => channel_cnt_0(2)
    );
\channel_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => channel_cnt(2),
      I1 => channel_cnt(3),
      I2 => channel_cnt(0),
      I3 => channel_cnt(1),
      O => channel_cnt_0(3)
    );
\channel_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => channel_cnt(2),
      I1 => channel_cnt(3),
      I2 => channel_cnt(0),
      I3 => channel_cnt(1),
      I4 => channel_cnt(4),
      O => channel_cnt_0(4)
    );
\channel_cnt[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\channel_cnt[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      I2 => s_axis_tlast,
      O => \channel_cnt[5]_i_2_n_0\
    );
\channel_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => channel_cnt(2),
      I1 => channel_cnt(3),
      I2 => channel_cnt(0),
      I3 => channel_cnt(1),
      I4 => channel_cnt(4),
      I5 => channel_cnt(5),
      O => channel_cnt_0(5)
    );
\channel_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \channel_cnt[5]_i_2_n_0\,
      D => \channel_cnt[0]_i_1_n_0\,
      Q => channel_cnt(0),
      R => p_0_in
    );
\channel_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \channel_cnt[5]_i_2_n_0\,
      D => channel_cnt_0(1),
      Q => channel_cnt(1),
      R => p_0_in
    );
\channel_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \channel_cnt[5]_i_2_n_0\,
      D => channel_cnt_0(2),
      Q => channel_cnt(2),
      R => p_0_in
    );
\channel_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \channel_cnt[5]_i_2_n_0\,
      D => channel_cnt_0(3),
      Q => channel_cnt(3),
      R => p_0_in
    );
\channel_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \channel_cnt[5]_i_2_n_0\,
      D => channel_cnt_0(4),
      Q => channel_cnt(4),
      R => p_0_in
    );
\channel_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \channel_cnt[5]_i_2_n_0\,
      D => channel_cnt_0(5),
      Q => channel_cnt(5),
      R => p_0_in
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => channel_cnt(4),
      I2 => channel_cnt(5),
      I3 => m_axis_tlast_INST_0_i_1_n_0,
      I4 => channel_cnt(3),
      I5 => channel_cnt(2),
      O => m_axis_tlast
    );
m_axis_tlast_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => channel_cnt(1),
      I1 => channel_cnt(0),
      O => m_axis_tlast_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_axis_tlast_aggregator_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of System_axis_tlast_aggregator_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of System_axis_tlast_aggregator_0_1 : entity is "System_axis_tlast_aggregator_0_1,axis_tlast_aggregator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of System_axis_tlast_aggregator_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of System_axis_tlast_aggregator_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of System_axis_tlast_aggregator_0_1 : entity is "axis_tlast_aggregator,Vivado 2018.3";
end System_axis_tlast_aggregator_0_1;

architecture STRUCTURE of System_axis_tlast_aggregator_0_1 is
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axis_tuser\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 122875816, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 122875816, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 122875816, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tdata\(63 downto 0) <= s_axis_tdata(63 downto 0);
  \^s_axis_tuser\(7 downto 0) <= s_axis_tuser(7 downto 0);
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(63 downto 0) <= \^s_axis_tdata\(63 downto 0);
  m_axis_tuser(7 downto 0) <= \^s_axis_tuser\(7 downto 0);
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
inst: entity work.System_axis_tlast_aggregator_0_1_axis_tlast_aggregator
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => \^m_axis_tready\,
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => \^s_axis_tvalid\
    );
end STRUCTURE;
