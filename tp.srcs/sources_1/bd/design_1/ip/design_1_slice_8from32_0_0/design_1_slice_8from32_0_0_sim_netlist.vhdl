-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Jan 22 02:21:08 2020
-- Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/pslavkin/mse_3_21sdc/tp/tp.srcs/sources_1/bd/design_1/ip/design_1_slice_8from32_0_0/design_1_slice_8from32_0_0_sim_netlist.vhdl
-- Design      : design_1_slice_8from32_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_slice_8from32_0_0_slice_8from32 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    state_reg_0 : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 29 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_slice_8from32_0_0_slice_8from32 : entity is "slice_8from32";
end design_1_slice_8from32_0_0_slice_8from32;

architecture STRUCTURE of design_1_slice_8from32_0_0_slice_8from32 is
  signal bitCounter : STD_LOGIC;
  signal \bitCounter[5]_i_1_n_0\ : STD_LOGIC;
  signal bitCounter_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \m_axis_tdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_7_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axis_tready\ : STD_LOGIC;
  signal s_axis_tready_i_1_n_0 : STD_LOGIC;
  signal s_axis_tready_i_2_n_0 : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal \^state_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bitCounter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bitCounter[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bitCounter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bitCounter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_3\ : label is "soft_lutpair1";
begin
  s_axis_tready <= \^s_axis_tready\;
  state_reg_0 <= \^state_reg_0\;
\bitCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitCounter_reg(0),
      O => p_0_in(0)
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
      O => p_0_in(2)
    );
\bitCounter[3]_i_1\: unisim.vcomponents.LUT4
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
\bitCounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => bitCounter_reg(2),
      I1 => bitCounter_reg(0),
      I2 => bitCounter_reg(1),
      I3 => bitCounter_reg(3),
      I4 => bitCounter_reg(4),
      O => p_0_in(4)
    );
\bitCounter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => rst,
      I1 => \^state_reg_0\,
      I2 => s_axis_tvalid,
      O => \bitCounter[5]_i_1_n_0\
    );
\bitCounter[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => rst,
      I1 => m_axis_tready,
      I2 => \^state_reg_0\,
      O => bitCounter
    );
\bitCounter[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => bitCounter_reg(3),
      I1 => bitCounter_reg(1),
      I2 => bitCounter_reg(0),
      I3 => bitCounter_reg(2),
      I4 => bitCounter_reg(4),
      I5 => bitCounter_reg(5),
      O => p_0_in(5)
    );
\bitCounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => p_0_in(0),
      Q => bitCounter_reg(0),
      R => \bitCounter[5]_i_1_n_0\
    );
\bitCounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => p_0_in(1),
      Q => bitCounter_reg(1),
      R => \bitCounter[5]_i_1_n_0\
    );
\bitCounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => p_0_in(2),
      Q => bitCounter_reg(2),
      R => \bitCounter[5]_i_1_n_0\
    );
\bitCounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => p_0_in(3),
      Q => bitCounter_reg(3),
      R => \bitCounter[5]_i_1_n_0\
    );
\bitCounter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => p_0_in(4),
      Q => bitCounter_reg(4),
      R => \bitCounter[5]_i_1_n_0\
    );
\bitCounter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => p_0_in(5),
      Q => bitCounter_reg(5),
      R => \bitCounter[5]_i_1_n_0\
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata[0]_i_2_n_0\,
      I1 => \^state_reg_0\,
      I2 => s_axis_tdata(23),
      O => p_2_in(0)
    );
\m_axis_tdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => \m_axis_tdata[7]_i_5_n_0\,
      I2 => s_axis_tdata(8),
      I3 => \m_axis_tdata[7]_i_7_n_0\,
      I4 => s_axis_tdata(0),
      O => \m_axis_tdata[0]_i_2_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata[1]_i_2_n_0\,
      I1 => \^state_reg_0\,
      I2 => s_axis_tdata(24),
      O => p_2_in(1)
    );
\m_axis_tdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => \m_axis_tdata[7]_i_5_n_0\,
      I2 => s_axis_tdata(9),
      I3 => \m_axis_tdata[7]_i_7_n_0\,
      I4 => s_axis_tdata(1),
      O => \m_axis_tdata[1]_i_2_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata[2]_i_2_n_0\,
      I1 => \^state_reg_0\,
      I2 => s_axis_tdata(25),
      O => p_2_in(2)
    );
\m_axis_tdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => \m_axis_tdata[7]_i_5_n_0\,
      I2 => s_axis_tdata(10),
      I3 => \m_axis_tdata[7]_i_7_n_0\,
      I4 => s_axis_tdata(2),
      O => \m_axis_tdata[2]_i_2_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata[3]_i_2_n_0\,
      I1 => \^state_reg_0\,
      I2 => s_axis_tdata(26),
      O => p_2_in(3)
    );
\m_axis_tdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => \m_axis_tdata[7]_i_5_n_0\,
      I2 => s_axis_tdata(11),
      I3 => \m_axis_tdata[7]_i_7_n_0\,
      I4 => s_axis_tdata(3),
      O => \m_axis_tdata[3]_i_2_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata[4]_i_2_n_0\,
      I1 => \^state_reg_0\,
      I2 => s_axis_tdata(27),
      O => p_2_in(4)
    );
\m_axis_tdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => \m_axis_tdata[7]_i_5_n_0\,
      I2 => s_axis_tdata(12),
      I3 => \m_axis_tdata[7]_i_7_n_0\,
      I4 => s_axis_tdata(4),
      O => \m_axis_tdata[4]_i_2_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata[5]_i_2_n_0\,
      I1 => \^state_reg_0\,
      I2 => s_axis_tdata(28),
      O => p_2_in(5)
    );
\m_axis_tdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => \m_axis_tdata[7]_i_5_n_0\,
      I2 => s_axis_tdata(13),
      I3 => \m_axis_tdata[7]_i_7_n_0\,
      I4 => s_axis_tdata(5),
      O => \m_axis_tdata[5]_i_2_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata[6]_i_2_n_0\,
      I1 => \^state_reg_0\,
      I2 => s_axis_tdata(29),
      O => p_2_in(6)
    );
\m_axis_tdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => \m_axis_tdata[7]_i_5_n_0\,
      I2 => s_axis_tdata(14),
      I3 => \m_axis_tdata[7]_i_7_n_0\,
      I4 => s_axis_tdata(6),
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
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8FFA800"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \m_axis_tdata[7]_i_4_n_0\,
      I2 => \m_axis_tdata[7]_i_5_n_0\,
      I3 => \^state_reg_0\,
      I4 => s_axis_tvalid,
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_6_n_0\,
      I1 => \^state_reg_0\,
      I2 => s_axis_tdata(29),
      O => p_2_in(7)
    );
\m_axis_tdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000014"
    )
        port map (
      I0 => bitCounter_reg(2),
      I1 => bitCounter_reg(1),
      I2 => bitCounter_reg(0),
      I3 => bitCounter_reg(5),
      I4 => bitCounter_reg(4),
      I5 => bitCounter_reg(3),
      O => \m_axis_tdata[7]_i_4_n_0\
    );
\m_axis_tdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => bitCounter_reg(3),
      I1 => bitCounter_reg(4),
      I2 => bitCounter_reg(5),
      I3 => bitCounter_reg(1),
      I4 => bitCounter_reg(0),
      I5 => bitCounter_reg(2),
      O => \m_axis_tdata[7]_i_5_n_0\
    );
\m_axis_tdata[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => \m_axis_tdata[7]_i_5_n_0\,
      I2 => s_axis_tdata(14),
      I3 => \m_axis_tdata[7]_i_7_n_0\,
      I4 => s_axis_tdata(7),
      O => \m_axis_tdata[7]_i_6_n_0\
    );
\m_axis_tdata[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => bitCounter_reg(3),
      I1 => bitCounter_reg(4),
      I2 => bitCounter_reg(5),
      I3 => bitCounter_reg(1),
      I4 => bitCounter_reg(0),
      I5 => bitCounter_reg(2),
      O => \m_axis_tdata[7]_i_7_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => p_2_in(0),
      Q => m_axis_tdata(0),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => p_2_in(1),
      Q => m_axis_tdata(1),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => p_2_in(2),
      Q => m_axis_tdata(2),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => p_2_in(3),
      Q => m_axis_tdata(3),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => p_2_in(4),
      Q => m_axis_tdata(4),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => p_2_in(5),
      Q => m_axis_tdata(5),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => p_2_in(6),
      Q => m_axis_tdata(6),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => p_2_in(7),
      Q => m_axis_tdata(7),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
s_axis_tready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E222FFFF"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tready_i_2_n_0,
      I2 => m_axis_tready,
      I3 => \^state_reg_0\,
      I4 => rst,
      O => s_axis_tready_i_1_n_0
    );
s_axis_tready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \m_axis_tdata[7]_i_5_n_0\,
      I2 => \m_axis_tdata[7]_i_4_n_0\,
      I3 => \^state_reg_0\,
      I4 => s_axis_tvalid,
      O => s_axis_tready_i_2_n_0
    );
s_axis_tready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_axis_tready_i_1_n_0,
      Q => \^s_axis_tready\,
      R => '0'
    );
state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE2EEEE00000000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^state_reg_0\,
      I2 => \m_axis_tdata[7]_i_4_n_0\,
      I3 => \m_axis_tdata[7]_i_5_n_0\,
      I4 => m_axis_tready,
      I5 => rst,
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
entity design_1_slice_8from32_0_0 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_config_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_config_tvalid : out STD_LOGIC;
    m_axis_config_tready : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_slice_8from32_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_slice_8from32_0_0 : entity is "design_1_slice_8from32_0_0,slice_8from32,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_slice_8from32_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_slice_8from32_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_slice_8from32_0_0 : entity is "slice_8from32,Vivado 2019.1";
end design_1_slice_8from32_0_0;

architecture STRUCTURE of design_1_slice_8from32_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:m_axis_config:s_axis, ASSOCIATED_RESET rst, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of m_axis_config_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_config TREADY";
  attribute x_interface_info of m_axis_config_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_config TVALID";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of m_axis_config_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_config TDATA";
  attribute x_interface_parameter of m_axis_config_tdata : signal is "XIL_INTERFACENAME m_axis_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2047} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2047} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xn_re {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_re} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2031} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 64} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 15} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}} field_xn_im {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_im} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2031} bitoffset {attribs {resolve_type generated dependency xn_im_offset format long minimum {} maximum {}} value 16} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 64} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 15} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xk_index {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xk_index} enabled {attribs {resolve_type generated dependency xk_index_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xk_index_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_blk_exp {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value blk_exp} enabled {attribs {resolve_type generated dependency blk_exp_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type generated dependency blk_exp_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} field_ovflo {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ovflo} enabled {attribs {resolve_type generated dependency ovflo_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type generated dependency ovflo_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0";
begin
  m_axis_config_tdata(7) <= \<const1>\;
  m_axis_config_tdata(6) <= \<const1>\;
  m_axis_config_tdata(5) <= \<const1>\;
  m_axis_config_tdata(4) <= \<const1>\;
  m_axis_config_tdata(3) <= \<const1>\;
  m_axis_config_tdata(2) <= \<const1>\;
  m_axis_config_tdata(1) <= \<const1>\;
  m_axis_config_tdata(0) <= \<const1>\;
  m_axis_config_tvalid <= \<const1>\;
  m_axis_tlast <= 'Z';
U0: entity work.design_1_slice_8from32_0_0_slice_8from32
     port map (
      clk => clk,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      rst => rst,
      s_axis_tdata(29 downto 15) => s_axis_tdata(30 downto 16),
      s_axis_tdata(14 downto 0) => s_axis_tdata(14 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      state_reg_0 => m_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
