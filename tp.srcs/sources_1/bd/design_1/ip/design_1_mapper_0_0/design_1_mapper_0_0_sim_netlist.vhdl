-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Mon Jan  6 11:00:36 2020
-- Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/pslavkin/mse_3_21sdc/tp/tp.srcs/sources_1/bd/design_1/ip/design_1_mapper_0_0/design_1_mapper_0_0_sim_netlist.vhdl
-- Design      : design_1_mapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mapper_0_0_mapper is
  port (
    state_reg_0 : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    rst : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mapper_0_0_mapper : entity is "mapper";
end design_1_mapper_0_0_mapper;

architecture STRUCTURE of design_1_mapper_0_0_mapper is
  signal bitCounter : STD_LOGIC;
  signal \bitCounter[3]_i_1_n_0\ : STD_LOGIC;
  signal bitCounter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \data2Map[0]_i_1_n_0\ : STD_LOGIC;
  signal \data2Map[0]_i_2_n_0\ : STD_LOGIC;
  signal \data2Map[0]_i_3_n_0\ : STD_LOGIC;
  signal \data2Map[1]_i_1_n_0\ : STD_LOGIC;
  signal \data2Map[1]_i_2_n_0\ : STD_LOGIC;
  signal \data2Map[2]_i_1_n_0\ : STD_LOGIC;
  signal \data2Map[3]_i_1_n_0\ : STD_LOGIC;
  signal \data2Map[3]_i_2_n_0\ : STD_LOGIC;
  signal index : STD_LOGIC;
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_5_n_0\ : STD_LOGIC;
  signal mux7_out : STD_LOGIC_VECTOR ( 2 to 2 );
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axis_tready\ : STD_LOGIC;
  signal s_axis_tready_i_1_n_0 : STD_LOGIC;
  signal s_axis_tready_i_2_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal state_i_1_n_0 : STD_LOGIC;
  signal \^state_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bitCounter[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bitCounter[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bitCounter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bitCounter[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data2Map[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data2Map[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data2Map[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data2Map[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_5\ : label is "soft_lutpair3";
begin
  s_axis_tready <= \^s_axis_tready\;
  state_reg_0 <= \^state_reg_0\;
\bitCounter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => bitCounter_reg(0),
      O => \p_0_in__0\(0)
    );
\bitCounter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => bitCounter_reg(0),
      I1 => \^state_reg_0\,
      I2 => bitCounter_reg(1),
      O => \p_0_in__0\(1)
    );
\bitCounter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => bitCounter_reg(2),
      I1 => \^state_reg_0\,
      I2 => bitCounter_reg(0),
      I3 => bitCounter_reg(1),
      O => \p_0_in__0\(2)
    );
\bitCounter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080B38000000000"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^state_reg_0\,
      I2 => \m_axis_tdata[7]_i_5_n_0\,
      I3 => s_axis_tvalid,
      I4 => \m_axis_tdata[7]_i_4_n_0\,
      I5 => rst,
      O => \bitCounter[3]_i_1_n_0\
    );
\bitCounter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => rst,
      I2 => \^state_reg_0\,
      I3 => m_axis_tready,
      O => bitCounter
    );
\bitCounter[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59AAAAAA"
    )
        port map (
      I0 => bitCounter_reg(3),
      I1 => \^state_reg_0\,
      I2 => bitCounter_reg(0),
      I3 => bitCounter_reg(2),
      I4 => bitCounter_reg(1),
      O => \p_0_in__0\(3)
    );
\bitCounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => \p_0_in__0\(0),
      Q => bitCounter_reg(0),
      R => \bitCounter[3]_i_1_n_0\
    );
\bitCounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => \p_0_in__0\(1),
      Q => bitCounter_reg(1),
      R => \bitCounter[3]_i_1_n_0\
    );
\bitCounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => \p_0_in__0\(2),
      Q => bitCounter_reg(2),
      R => \bitCounter[3]_i_1_n_0\
    );
\bitCounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bitCounter,
      D => \p_0_in__0\(3),
      Q => bitCounter_reg(3),
      R => \bitCounter[3]_i_1_n_0\
    );
\data2Map[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => \data2Map[0]_i_2_n_0\,
      I2 => s_axis_tdata(0),
      I3 => \data2Map[0]_i_3_n_0\,
      I4 => \m_axis_tdata[7]_i_5_n_0\,
      I5 => sel0(4),
      O => \data2Map[0]_i_1_n_0\
    );
\data2Map[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => bitCounter_reg(3),
      I1 => bitCounter_reg(2),
      I2 => bitCounter_reg(1),
      I3 => bitCounter_reg(0),
      O => \data2Map[0]_i_2_n_0\
    );
\data2Map[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => rst,
      I2 => s_axis_tvalid,
      O => \data2Map[0]_i_3_n_0\
    );
\data2Map[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => \data2Map[1]_i_2_n_0\,
      I2 => s_axis_tdata(0),
      I3 => bitCounter_reg(1),
      I4 => \data2Map[3]_i_2_n_0\,
      I5 => sel0(5),
      O => \data2Map[1]_i_1_n_0\
    );
\data2Map[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => bitCounter_reg(1),
      I1 => bitCounter_reg(2),
      I2 => bitCounter_reg(3),
      I3 => bitCounter_reg(0),
      O => \data2Map[1]_i_2_n_0\
    );
\data2Map[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB0028"
    )
        port map (
      I0 => mux7_out(2),
      I1 => bitCounter_reg(1),
      I2 => bitCounter_reg(0),
      I3 => \data2Map[3]_i_2_n_0\,
      I4 => sel0(6),
      O => \data2Map[2]_i_1_n_0\
    );
\data2Map[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => bitCounter_reg(1),
      I2 => bitCounter_reg(0),
      I3 => bitCounter_reg(3),
      I4 => bitCounter_reg(2),
      I5 => s_axis_tdata(0),
      O => mux7_out(2)
    );
\data2Map[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \m_axis_tdata[7]_i_4_n_0\,
      I2 => s_axis_tdata(1),
      I3 => bitCounter_reg(1),
      I4 => \data2Map[3]_i_2_n_0\,
      I5 => sel0(7),
      O => \data2Map[3]_i_1_n_0\
    );
\data2Map[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => bitCounter_reg(3),
      I1 => bitCounter_reg(2),
      I2 => s_axis_tvalid,
      I3 => rst,
      I4 => \^state_reg_0\,
      O => \data2Map[3]_i_2_n_0\
    );
\data2Map_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data2Map[0]_i_1_n_0\,
      Q => sel0(4),
      R => '0'
    );
\data2Map_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data2Map[1]_i_1_n_0\,
      Q => sel0(5),
      R => '0'
    );
\data2Map_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data2Map[2]_i_1_n_0\,
      Q => sel0(6),
      R => '0'
    );
\data2Map_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data2Map[3]_i_1_n_0\,
      Q => sel0(7),
      R => '0'
    );
\index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \data2Map[0]_i_3_n_0\,
      I1 => bitCounter_reg(3),
      I2 => bitCounter_reg(2),
      I3 => bitCounter_reg(1),
      I4 => bitCounter_reg(0),
      O => index
    );
\index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => index,
      D => sel0(4),
      Q => sel0(0),
      R => '0'
    );
\index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => index,
      D => sel0(5),
      Q => sel0(1),
      R => '0'
    );
\index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => index,
      D => sel0(6),
      Q => sel0(2),
      R => '0'
    );
\index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => index,
      D => sel0(7),
      Q => sel0(3),
      R => '0'
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E7FFE700"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \^state_reg_0\,
      I4 => \m_axis_tdata[0]_i_2_n_0\,
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      I2 => sel0(6),
      O => \m_axis_tdata[0]_i_2_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD5AFFFFBD5A0000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(3),
      I4 => \^state_reg_0\,
      I5 => \m_axis_tdata[1]_i_2_n_0\,
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6BD6"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      I2 => sel0(6),
      I3 => sel0(7),
      O => \m_axis_tdata[1]_i_2_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96FF9600960096FF"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => \^state_reg_0\,
      I4 => sel0(7),
      I5 => sel0(4),
      O => \m_axis_tdata[2]_i_1_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E87FFFF1E870000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(3),
      I3 => sel0(0),
      I4 => \^state_reg_0\,
      I5 => \m_axis_tdata[3]_i_2_n_0\,
      O => \m_axis_tdata[3]_i_1_n_0\
    );
\m_axis_tdata[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D42B"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      I2 => sel0(6),
      I3 => sel0(7),
      O => \m_axis_tdata[3]_i_2_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"690069FF69FF6900"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => \^state_reg_0\,
      I4 => \m_axis_tdata[4]_i_2_n_0\,
      I5 => \m_axis_tdata[4]_i_3_n_0\,
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(7),
      O => \m_axis_tdata[4]_i_2_n_0\
    );
\m_axis_tdata[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(4),
      O => \m_axis_tdata[4]_i_3_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96FF9600960096FF"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(3),
      I2 => sel0(2),
      I3 => \^state_reg_0\,
      I4 => sel0(5),
      I5 => sel0(7),
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"817EFFFF817E0000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(3),
      I4 => \^state_reg_0\,
      I5 => \m_axis_tdata[6]_i_2_n_0\,
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E817"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(6),
      I2 => sel0(5),
      I3 => sel0(7),
      O => \m_axis_tdata[6]_i_2_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => p_0_in
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F440044"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_4_n_0\,
      I1 => s_axis_tvalid,
      I2 => \m_axis_tdata[7]_i_5_n_0\,
      I3 => \^state_reg_0\,
      I4 => m_axis_tready,
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => sel0(3),
      I1 => \^state_reg_0\,
      I2 => sel0(6),
      I3 => sel0(7),
      O => \m_axis_tdata[7]_i_3_n_0\
    );
\m_axis_tdata[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => bitCounter_reg(0),
      I1 => bitCounter_reg(1),
      I2 => bitCounter_reg(2),
      I3 => bitCounter_reg(3),
      O => \m_axis_tdata[7]_i_4_n_0\
    );
\m_axis_tdata[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFE"
    )
        port map (
      I0 => bitCounter_reg(0),
      I1 => bitCounter_reg(3),
      I2 => bitCounter_reg(2),
      I3 => bitCounter_reg(1),
      O => \m_axis_tdata[7]_i_5_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => m_axis_tdata(0),
      R => p_0_in
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => m_axis_tdata(1),
      R => p_0_in
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => \m_axis_tdata[2]_i_1_n_0\,
      Q => m_axis_tdata(2),
      R => p_0_in
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => \m_axis_tdata[3]_i_1_n_0\,
      Q => m_axis_tdata(3),
      R => p_0_in
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => \m_axis_tdata[4]_i_1_n_0\,
      Q => m_axis_tdata(4),
      R => p_0_in
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => \m_axis_tdata[5]_i_1_n_0\,
      Q => m_axis_tdata(5),
      R => p_0_in
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => \m_axis_tdata[6]_i_1_n_0\,
      Q => m_axis_tdata(6),
      R => p_0_in
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      D => \m_axis_tdata[7]_i_3_n_0\,
      Q => m_axis_tdata(7),
      R => p_0_in
    );
s_axis_tready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0EAAAFFFFFFFF"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => m_axis_tready,
      I2 => \^state_reg_0\,
      I3 => \m_axis_tdata[7]_i_5_n_0\,
      I4 => s_axis_tready_i_2_n_0,
      I5 => rst,
      O => s_axis_tready_i_1_n_0
    );
s_axis_tready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => bitCounter_reg(0),
      I2 => bitCounter_reg(1),
      I3 => bitCounter_reg(2),
      I4 => bitCounter_reg(3),
      I5 => \^state_reg_0\,
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
      INIT => X"4C4C7F4C00000000"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^state_reg_0\,
      I2 => \m_axis_tdata[7]_i_5_n_0\,
      I3 => s_axis_tvalid,
      I4 => \m_axis_tdata[7]_i_4_n_0\,
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
entity design_1_mapper_0_0 is
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
  attribute NotValidForBitStream of design_1_mapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_mapper_0_0 : entity is "design_1_mapper_0_0,mapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_mapper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_mapper_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_mapper_0_0 : entity is "mapper,Vivado 2019.1";
end design_1_mapper_0_0;

architecture STRUCTURE of design_1_mapper_0_0 is
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
  m_axis_tlast <= 'Z';
U0: entity work.design_1_mapper_0_0_mapper
     port map (
      clk => clk,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      rst => rst,
      s_axis_tdata(1 downto 0) => s_axis_tdata(1 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      state_reg_0 => m_axis_tvalid
    );
end STRUCTURE;
