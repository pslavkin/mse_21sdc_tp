-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sat Jan  4 19:28:21 2020
-- Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/pslavkin/mse_3_21sdc/tp/tp.srcs/sources_1/bd/design_1/ip/design_1_split_1to8_0_0/design_1_split_1to8_0_0_sim_netlist.vhdl
-- Design      : design_1_split_1to8_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_split_1to8_0_0_split_1to8 is
  port (
    state_reg_0 : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_split_1to8_0_0_split_1to8 : entity is "split_1to8";
end design_1_split_1to8_0_0_split_1to8;

architecture STRUCTURE of design_1_split_1to8_0_0_split_1to8 is
  signal bitCounter : STD_LOGIC;
  signal \bitCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitCounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitCounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitCounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitCounter[3]_i_3_n_0\ : STD_LOGIC;
  signal bitCounter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_5_n_0\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal \^s_axis_tready\ : STD_LOGIC;
  signal s_axis_tready_i_1_n_0 : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal \^state_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bitCounter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bitCounter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bitCounter[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of state_i_1 : label is "soft_lutpair1";
begin
  m_axis_tdata(0) <= \^m_axis_tdata\(0);
  s_axis_tready <= \^s_axis_tready\;
  state_reg_0 <= \^state_reg_0\;
\bitCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitCounter_reg(0),
      O => \bitCounter[0]_i_1_n_0\
    );
\bitCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bitCounter_reg(0),
      I1 => bitCounter_reg(1),
      O => \bitCounter[1]_i_1_n_0\
    );
\bitCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => bitCounter_reg(0),
      I1 => bitCounter_reg(1),
      I2 => bitCounter_reg(2),
      O => \bitCounter[2]_i_1_n_0\
    );
\bitCounter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => rst,
      I1 => \^state_reg_0\,
      I2 => s_axis_tvalid,
      O => \bitCounter[3]_i_1_n_0\
    );
\bitCounter[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => rst,
      I1 => m_axis_tready,
      I2 => \^state_reg_0\,
      O => bitCounter
    );
\bitCounter[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => bitCounter_reg(1),
      I1 => bitCounter_reg(0),
      I2 => bitCounter_reg(2),
      I3 => bitCounter_reg(3),
      O => \bitCounter[3]_i_3_n_0\
    );
\bitCounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => \bitCounter[0]_i_1_n_0\,
      Q => bitCounter_reg(0),
      R => \bitCounter[3]_i_1_n_0\
    );
\bitCounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => \bitCounter[1]_i_1_n_0\,
      Q => bitCounter_reg(1),
      R => \bitCounter[3]_i_1_n_0\
    );
\bitCounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => \bitCounter[2]_i_1_n_0\,
      Q => bitCounter_reg(2),
      R => \bitCounter[3]_i_1_n_0\
    );
\bitCounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => \bitCounter[3]_i_3_n_0\,
      Q => bitCounter_reg(3),
      R => \bitCounter[3]_i_1_n_0\
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \^m_axis_tdata\(0),
      I1 => p_1_out,
      I2 => s_axis_tdata(0),
      I3 => \^state_reg_0\,
      I4 => \m_axis_tdata[0]_i_3_n_0\,
      I5 => rst,
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \bitCounter[3]_i_3_n_0\,
      I2 => \^state_reg_0\,
      I3 => s_axis_tvalid,
      O => p_1_out
    );
\m_axis_tdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EABF2A80"
    )
        port map (
      I0 => \m_axis_tdata[0]_i_4_n_0\,
      I1 => bitCounter_reg(0),
      I2 => bitCounter_reg(1),
      I3 => bitCounter_reg(2),
      I4 => \m_axis_tdata[0]_i_5_n_0\,
      O => \m_axis_tdata[0]_i_3_n_0\
    );
\m_axis_tdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => s_axis_tdata(7),
      I2 => bitCounter_reg(0),
      I3 => bitCounter_reg(1),
      I4 => s_axis_tdata(4),
      I5 => s_axis_tdata(5),
      O => \m_axis_tdata[0]_i_4_n_0\
    );
\m_axis_tdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => s_axis_tdata(3),
      I2 => bitCounter_reg(0),
      I3 => bitCounter_reg(1),
      I4 => s_axis_tdata(0),
      I5 => s_axis_tdata(1),
      O => \m_axis_tdata[0]_i_5_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => \^m_axis_tdata\(0),
      R => '0'
    );
s_axis_tready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2A2A2A2FFFFFFFF"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tvalid,
      I2 => \^state_reg_0\,
      I3 => \bitCounter[3]_i_3_n_0\,
      I4 => m_axis_tready,
      I5 => rst,
      O => s_axis_tready_i_1_n_0
    );
s_axis_tready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axis_tready_i_1_n_0,
      Q => \^s_axis_tready\,
      R => '0'
    );
state_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2EEE0000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^state_reg_0\,
      I2 => \bitCounter[3]_i_3_n_0\,
      I3 => m_axis_tready,
      I4 => rst,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => state_i_1_n_0,
      Q => \^state_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_split_1to8_0_0 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_split_1to8_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_split_1to8_0_0 : entity is "design_1_split_1to8_0_0,split_1to8,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_split_1to8_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_split_1to8_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_split_1to8_0_0 : entity is "split_1to8,Vivado 2019.1";
end design_1_split_1to8_0_0;

architecture STRUCTURE of design_1_split_1to8_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET rst, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \^m_axis_tdata\(0);
  m_axis_tlast <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_split_1to8_0_0_split_1to8
     port map (
      clk => clk,
      m_axis_tdata(0) => \^m_axis_tdata\(0),
      m_axis_tready => m_axis_tready,
      rst => rst,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      state_reg_0 => m_axis_tvalid
    );
end STRUCTURE;
