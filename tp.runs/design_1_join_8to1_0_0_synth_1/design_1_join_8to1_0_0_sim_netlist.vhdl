-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sat Jan  4 19:28:20 2020
-- Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_join_8to1_0_0_sim_netlist.vhdl
-- Design      : design_1_join_8to1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_join_8to1 is
  port (
    state_reg_0 : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_join_8to1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_join_8to1 is
  signal \bitCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitCounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitCounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitCounter[3]_i_2_n_0\ : STD_LOGIC;
  signal bitCounter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_4_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^s_axis_tready\ : STD_LOGIC;
  signal s_axis_tready_i_1_n_0 : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_i_2_n_0 : STD_LOGIC;
  signal \^state_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bitCounter[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bitCounter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bitCounter[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of state_i_2 : label is "soft_lutpair0";
begin
  m_axis_tdata(7 downto 0) <= \^m_axis_tdata\(7 downto 0);
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
      O => p_0_in(1)
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
      INIT => X"8F"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^state_reg_0\,
      I2 => rst,
      O => \bitCounter[3]_i_1_n_0\
    );
\bitCounter[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^state_reg_0\,
      O => \bitCounter[3]_i_2_n_0\
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
      O => p_0_in(3)
    );
\bitCounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bitCounter[3]_i_2_n_0\,
      D => \bitCounter[0]_i_1_n_0\,
      Q => bitCounter_reg(0),
      R => \bitCounter[3]_i_1_n_0\
    );
\bitCounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bitCounter[3]_i_2_n_0\,
      D => p_0_in(1),
      Q => bitCounter_reg(1),
      R => \bitCounter[3]_i_1_n_0\
    );
\bitCounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bitCounter[3]_i_2_n_0\,
      D => \bitCounter[2]_i_1_n_0\,
      Q => bitCounter_reg(2),
      R => \bitCounter[3]_i_1_n_0\
    );
\bitCounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bitCounter[3]_i_2_n_0\,
      D => p_0_in(3),
      Q => bitCounter_reg(3),
      R => \bitCounter[3]_i_1_n_0\
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \m_axis_tdata[3]_i_2_n_0\,
      I2 => \m_axis_tdata[4]_i_2_n_0\,
      I3 => s_axis_tvalid,
      I4 => \^state_reg_0\,
      I5 => \^m_axis_tdata\(0),
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \m_axis_tdata[3]_i_2_n_0\,
      I2 => \m_axis_tdata[5]_i_2_n_0\,
      I3 => s_axis_tvalid,
      I4 => \^state_reg_0\,
      I5 => \^m_axis_tdata\(1),
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \m_axis_tdata[3]_i_2_n_0\,
      I2 => \m_axis_tdata[6]_i_2_n_0\,
      I3 => s_axis_tvalid,
      I4 => \^state_reg_0\,
      I5 => \^m_axis_tdata\(2),
      O => \m_axis_tdata[2]_i_1_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \m_axis_tdata[3]_i_2_n_0\,
      I2 => \m_axis_tdata[7]_i_4_n_0\,
      I3 => s_axis_tvalid,
      I4 => \^state_reg_0\,
      I5 => \^m_axis_tdata\(3),
      O => \m_axis_tdata[3]_i_1_n_0\
    );
\m_axis_tdata[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bitCounter_reg(2),
      I1 => bitCounter_reg(3),
      O => \m_axis_tdata[3]_i_2_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => \m_axis_tdata[4]_i_2_n_0\,
      I3 => s_axis_tvalid,
      I4 => \^state_reg_0\,
      I5 => \^m_axis_tdata\(4),
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bitCounter_reg(1),
      I1 => bitCounter_reg(0),
      O => \m_axis_tdata[4]_i_2_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => \m_axis_tdata[5]_i_2_n_0\,
      I3 => s_axis_tvalid,
      I4 => \^state_reg_0\,
      I5 => \^m_axis_tdata\(5),
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => bitCounter_reg(1),
      I1 => bitCounter_reg(0),
      O => \m_axis_tdata[5]_i_2_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => \m_axis_tdata[6]_i_2_n_0\,
      I3 => s_axis_tvalid,
      I4 => \^state_reg_0\,
      I5 => \^m_axis_tdata\(6),
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => bitCounter_reg(0),
      I1 => bitCounter_reg(1),
      O => \m_axis_tdata[6]_i_2_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => \m_axis_tdata[7]_i_4_n_0\,
      I3 => s_axis_tvalid,
      I4 => \^state_reg_0\,
      I5 => \^m_axis_tdata\(7),
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => bitCounter_reg(3),
      I1 => bitCounter_reg(2),
      O => \m_axis_tdata[7]_i_3_n_0\
    );
\m_axis_tdata[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => bitCounter_reg(1),
      I1 => bitCounter_reg(0),
      O => \m_axis_tdata[7]_i_4_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => \^m_axis_tdata\(0),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => \^m_axis_tdata\(1),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_tdata[2]_i_1_n_0\,
      Q => \^m_axis_tdata\(2),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_tdata[3]_i_1_n_0\,
      Q => \^m_axis_tdata\(3),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_tdata[4]_i_1_n_0\,
      Q => \^m_axis_tdata\(4),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_tdata[5]_i_1_n_0\,
      Q => \^m_axis_tdata\(5),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_tdata[6]_i_1_n_0\,
      Q => \^m_axis_tdata\(6),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \m_axis_tdata[7]_i_2_n_0\,
      Q => \^m_axis_tdata\(7),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
s_axis_tready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFF8888"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^state_reg_0\,
      I2 => s_axis_tvalid,
      I3 => state_i_2_n_0,
      I4 => \^s_axis_tready\,
      O => s_axis_tready_i_1_n_0
    );
s_axis_tready_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => s_axis_tready_i_1_n_0,
      Q => \^s_axis_tready\,
      S => \m_axis_tdata[7]_i_1_n_0\
    );
state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^state_reg_0\,
      I2 => s_axis_tvalid,
      I3 => state_i_2_n_0,
      O => state_i_1_n_0
    );
state_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => bitCounter_reg(1),
      I1 => bitCounter_reg(0),
      I2 => bitCounter_reg(2),
      I3 => bitCounter_reg(3),
      O => state_i_2_n_0
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
      R => \m_axis_tdata[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_join_8to1_0_0,join_8to1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "join_8to1,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data_out} bitwidth {attribs {resolve_type generated dependency data_out_bitwidth format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0";
begin
  m_axis_tlast <= 'Z';
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_join_8to1
     port map (
      clk => clk,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      rst => rst,
      s_axis_tdata(0) => s_axis_tdata(0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      state_reg_0 => m_axis_tvalid
    );
end STRUCTURE;
