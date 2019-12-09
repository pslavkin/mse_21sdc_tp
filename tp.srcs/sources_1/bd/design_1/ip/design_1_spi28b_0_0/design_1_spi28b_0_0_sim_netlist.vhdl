-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Mon Dec  9 01:49:33 2019
-- Host        : work12 running 64-bit Ubuntu 19.04
-- Command     : write_vhdl -force -mode funcsim
--               /home/pslavkin/mse_3_21sdc/tp/tp.srcs/sources_1/bd/design_1/ip/design_1_spi28b_0_0/design_1_spi28b_0_0_sim_netlist.vhdl
-- Design      : design_1_spi28b_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi28b_0_0_spi28b is
  port (
    spi_miso : out STD_LOGIC;
    outData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cs : in STD_LOGIC;
    clk : in STD_LOGIC;
    inData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spi_mosi : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spi28b_0_0_spi28b : entity is "spi28b";
end design_1_spi28b_0_0_spi28b;

architecture STRUCTURE of design_1_spi28b_0_0_spi28b is
  signal \bit[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit[0]_i_3_n_0\ : STD_LOGIC;
  signal bit_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \bit_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \bit_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \bit_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \bit_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \bit_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \bit_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \bit_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \bit_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \bit_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \bit_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \bit_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \bit_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \bit_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \bit_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \bit_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \bit_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \bit_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \bit_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \bit_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \bit_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \bit_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \bit_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \bit_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \bit_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \bit_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \bit_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \bit_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \bit_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \bit_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \bit_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \bit_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \bit_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \bit_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \bit_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \bit_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \bit_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \bit_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \bit_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \bit_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \bit_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \bit_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \bit_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \bit_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \bit_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \bit_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \bit_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \bit_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \bit_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \bit_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \bit_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \bit_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \bit_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \bit_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \bit_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \bit_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \bit_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \bit_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \bit_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \bit_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \bit_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \bit_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \bit_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \bit_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \misoSignal[0]_i_1_n_0\ : STD_LOGIC;
  signal \misoSignal[1]_i_1_n_0\ : STD_LOGIC;
  signal \misoSignal[2]_i_1_n_0\ : STD_LOGIC;
  signal \misoSignal[3]_i_1_n_0\ : STD_LOGIC;
  signal \misoSignal[4]_i_1_n_0\ : STD_LOGIC;
  signal \misoSignal[5]_i_1_n_0\ : STD_LOGIC;
  signal \misoSignal[6]_i_1_n_0\ : STD_LOGIC;
  signal \misoSignal[7]_i_1_n_0\ : STD_LOGIC;
  signal \misoSignal_reg_n_0_[0]\ : STD_LOGIC;
  signal \misoSignal_reg_n_0_[1]\ : STD_LOGIC;
  signal \misoSignal_reg_n_0_[2]\ : STD_LOGIC;
  signal \misoSignal_reg_n_0_[3]\ : STD_LOGIC;
  signal \misoSignal_reg_n_0_[4]\ : STD_LOGIC;
  signal \misoSignal_reg_n_0_[5]\ : STD_LOGIC;
  signal \misoSignal_reg_n_0_[6]\ : STD_LOGIC;
  signal \mosiSignal_reg_n_0_[0]\ : STD_LOGIC;
  signal \mosiSignal_reg_n_0_[1]\ : STD_LOGIC;
  signal \mosiSignal_reg_n_0_[2]\ : STD_LOGIC;
  signal \mosiSignal_reg_n_0_[3]\ : STD_LOGIC;
  signal \mosiSignal_reg_n_0_[4]\ : STD_LOGIC;
  signal \mosiSignal_reg_n_0_[5]\ : STD_LOGIC;
  signal \mosiSignal_reg_n_0_[6]\ : STD_LOGIC;
  signal \mosiSignal_reg_n_0_[7]\ : STD_LOGIC;
  signal \outData[7]_i_1_n_0\ : STD_LOGIC;
  signal \outData[7]_i_2_n_0\ : STD_LOGIC;
  signal \outData[7]_i_3_n_0\ : STD_LOGIC;
  signal \outData[7]_i_4_n_0\ : STD_LOGIC;
  signal \outData[7]_i_5_n_0\ : STD_LOGIC;
  signal \outData[7]_i_6_n_0\ : STD_LOGIC;
  signal \outData[7]_i_7_n_0\ : STD_LOGIC;
  signal \outData[7]_i_8_n_0\ : STD_LOGIC;
  signal \outData_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \outData_reg[7]_i_10_n_1\ : STD_LOGIC;
  signal \outData_reg[7]_i_10_n_2\ : STD_LOGIC;
  signal \outData_reg[7]_i_10_n_3\ : STD_LOGIC;
  signal \outData_reg[7]_i_10_n_4\ : STD_LOGIC;
  signal \outData_reg[7]_i_10_n_5\ : STD_LOGIC;
  signal \outData_reg[7]_i_10_n_6\ : STD_LOGIC;
  signal \outData_reg[7]_i_10_n_7\ : STD_LOGIC;
  signal \outData_reg[7]_i_11_n_2\ : STD_LOGIC;
  signal \outData_reg[7]_i_11_n_3\ : STD_LOGIC;
  signal \outData_reg[7]_i_11_n_5\ : STD_LOGIC;
  signal \outData_reg[7]_i_11_n_6\ : STD_LOGIC;
  signal \outData_reg[7]_i_11_n_7\ : STD_LOGIC;
  signal \outData_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \outData_reg[7]_i_12_n_1\ : STD_LOGIC;
  signal \outData_reg[7]_i_12_n_2\ : STD_LOGIC;
  signal \outData_reg[7]_i_12_n_3\ : STD_LOGIC;
  signal \outData_reg[7]_i_12_n_4\ : STD_LOGIC;
  signal \outData_reg[7]_i_12_n_5\ : STD_LOGIC;
  signal \outData_reg[7]_i_12_n_6\ : STD_LOGIC;
  signal \outData_reg[7]_i_12_n_7\ : STD_LOGIC;
  signal \outData_reg[7]_i_13_n_0\ : STD_LOGIC;
  signal \outData_reg[7]_i_13_n_1\ : STD_LOGIC;
  signal \outData_reg[7]_i_13_n_2\ : STD_LOGIC;
  signal \outData_reg[7]_i_13_n_3\ : STD_LOGIC;
  signal \outData_reg[7]_i_13_n_4\ : STD_LOGIC;
  signal \outData_reg[7]_i_13_n_5\ : STD_LOGIC;
  signal \outData_reg[7]_i_13_n_6\ : STD_LOGIC;
  signal \outData_reg[7]_i_13_n_7\ : STD_LOGIC;
  signal \outData_reg[7]_i_14_n_0\ : STD_LOGIC;
  signal \outData_reg[7]_i_14_n_1\ : STD_LOGIC;
  signal \outData_reg[7]_i_14_n_2\ : STD_LOGIC;
  signal \outData_reg[7]_i_14_n_3\ : STD_LOGIC;
  signal \outData_reg[7]_i_14_n_4\ : STD_LOGIC;
  signal \outData_reg[7]_i_14_n_5\ : STD_LOGIC;
  signal \outData_reg[7]_i_14_n_6\ : STD_LOGIC;
  signal \outData_reg[7]_i_14_n_7\ : STD_LOGIC;
  signal \outData_reg[7]_i_15_n_0\ : STD_LOGIC;
  signal \outData_reg[7]_i_15_n_1\ : STD_LOGIC;
  signal \outData_reg[7]_i_15_n_2\ : STD_LOGIC;
  signal \outData_reg[7]_i_15_n_3\ : STD_LOGIC;
  signal \outData_reg[7]_i_15_n_4\ : STD_LOGIC;
  signal \outData_reg[7]_i_15_n_5\ : STD_LOGIC;
  signal \outData_reg[7]_i_15_n_6\ : STD_LOGIC;
  signal \outData_reg[7]_i_15_n_7\ : STD_LOGIC;
  signal \outData_reg[7]_i_16_n_0\ : STD_LOGIC;
  signal \outData_reg[7]_i_16_n_1\ : STD_LOGIC;
  signal \outData_reg[7]_i_16_n_2\ : STD_LOGIC;
  signal \outData_reg[7]_i_16_n_3\ : STD_LOGIC;
  signal \outData_reg[7]_i_16_n_4\ : STD_LOGIC;
  signal \outData_reg[7]_i_16_n_5\ : STD_LOGIC;
  signal \outData_reg[7]_i_16_n_6\ : STD_LOGIC;
  signal \outData_reg[7]_i_16_n_7\ : STD_LOGIC;
  signal \outData_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \outData_reg[7]_i_9_n_1\ : STD_LOGIC;
  signal \outData_reg[7]_i_9_n_2\ : STD_LOGIC;
  signal \outData_reg[7]_i_9_n_3\ : STD_LOGIC;
  signal \outData_reg[7]_i_9_n_4\ : STD_LOGIC;
  signal \outData_reg[7]_i_9_n_5\ : STD_LOGIC;
  signal \outData_reg[7]_i_9_n_6\ : STD_LOGIC;
  signal \outData_reg[7]_i_9_n_7\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal spi_miso_i_1_n_0 : STD_LOGIC;
  signal \NLW_bit_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_outData_reg[7]_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_outData_reg[7]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \misoSignal[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \misoSignal[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \misoSignal[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \misoSignal[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \misoSignal[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \misoSignal[7]_i_1\ : label is "soft_lutpair1";
begin
\bit[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cs,
      I1 => \outData[7]_i_2_n_0\,
      O => \bit[0]_i_1_n_0\
    );
\bit[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bit_reg(0),
      O => \bit[0]_i_3_n_0\
    );
\bit_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[0]_i_2_n_7\,
      Q => bit_reg(0),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bit_reg[0]_i_2_n_0\,
      CO(2) => \bit_reg[0]_i_2_n_1\,
      CO(1) => \bit_reg[0]_i_2_n_2\,
      CO(0) => \bit_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \bit_reg[0]_i_2_n_4\,
      O(2) => \bit_reg[0]_i_2_n_5\,
      O(1) => \bit_reg[0]_i_2_n_6\,
      O(0) => \bit_reg[0]_i_2_n_7\,
      S(3 downto 1) => bit_reg(3 downto 1),
      S(0) => \bit[0]_i_3_n_0\
    );
\bit_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[8]_i_1_n_5\,
      Q => bit_reg(10),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[8]_i_1_n_4\,
      Q => bit_reg(11),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[12]_i_1_n_7\,
      Q => bit_reg(12),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_reg[8]_i_1_n_0\,
      CO(3) => \bit_reg[12]_i_1_n_0\,
      CO(2) => \bit_reg[12]_i_1_n_1\,
      CO(1) => \bit_reg[12]_i_1_n_2\,
      CO(0) => \bit_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bit_reg[12]_i_1_n_4\,
      O(2) => \bit_reg[12]_i_1_n_5\,
      O(1) => \bit_reg[12]_i_1_n_6\,
      O(0) => \bit_reg[12]_i_1_n_7\,
      S(3 downto 0) => bit_reg(15 downto 12)
    );
\bit_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[12]_i_1_n_6\,
      Q => bit_reg(13),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[12]_i_1_n_5\,
      Q => bit_reg(14),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[12]_i_1_n_4\,
      Q => bit_reg(15),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[16]_i_1_n_7\,
      Q => bit_reg(16),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_reg[12]_i_1_n_0\,
      CO(3) => \bit_reg[16]_i_1_n_0\,
      CO(2) => \bit_reg[16]_i_1_n_1\,
      CO(1) => \bit_reg[16]_i_1_n_2\,
      CO(0) => \bit_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bit_reg[16]_i_1_n_4\,
      O(2) => \bit_reg[16]_i_1_n_5\,
      O(1) => \bit_reg[16]_i_1_n_6\,
      O(0) => \bit_reg[16]_i_1_n_7\,
      S(3 downto 0) => bit_reg(19 downto 16)
    );
\bit_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[16]_i_1_n_6\,
      Q => bit_reg(17),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[16]_i_1_n_5\,
      Q => bit_reg(18),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[16]_i_1_n_4\,
      Q => bit_reg(19),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[0]_i_2_n_6\,
      Q => bit_reg(1),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[20]_i_1_n_7\,
      Q => bit_reg(20),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_reg[16]_i_1_n_0\,
      CO(3) => \bit_reg[20]_i_1_n_0\,
      CO(2) => \bit_reg[20]_i_1_n_1\,
      CO(1) => \bit_reg[20]_i_1_n_2\,
      CO(0) => \bit_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bit_reg[20]_i_1_n_4\,
      O(2) => \bit_reg[20]_i_1_n_5\,
      O(1) => \bit_reg[20]_i_1_n_6\,
      O(0) => \bit_reg[20]_i_1_n_7\,
      S(3 downto 0) => bit_reg(23 downto 20)
    );
\bit_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[20]_i_1_n_6\,
      Q => bit_reg(21),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[20]_i_1_n_5\,
      Q => bit_reg(22),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[20]_i_1_n_4\,
      Q => bit_reg(23),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[24]_i_1_n_7\,
      Q => bit_reg(24),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_reg[20]_i_1_n_0\,
      CO(3) => \bit_reg[24]_i_1_n_0\,
      CO(2) => \bit_reg[24]_i_1_n_1\,
      CO(1) => \bit_reg[24]_i_1_n_2\,
      CO(0) => \bit_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bit_reg[24]_i_1_n_4\,
      O(2) => \bit_reg[24]_i_1_n_5\,
      O(1) => \bit_reg[24]_i_1_n_6\,
      O(0) => \bit_reg[24]_i_1_n_7\,
      S(3 downto 0) => bit_reg(27 downto 24)
    );
\bit_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[24]_i_1_n_6\,
      Q => bit_reg(25),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[24]_i_1_n_5\,
      Q => bit_reg(26),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[24]_i_1_n_4\,
      Q => bit_reg(27),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[28]_i_1_n_7\,
      Q => bit_reg(28),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_reg[24]_i_1_n_0\,
      CO(3) => \NLW_bit_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \bit_reg[28]_i_1_n_1\,
      CO(1) => \bit_reg[28]_i_1_n_2\,
      CO(0) => \bit_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bit_reg[28]_i_1_n_4\,
      O(2) => \bit_reg[28]_i_1_n_5\,
      O(1) => \bit_reg[28]_i_1_n_6\,
      O(0) => \bit_reg[28]_i_1_n_7\,
      S(3 downto 0) => bit_reg(31 downto 28)
    );
\bit_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[28]_i_1_n_6\,
      Q => bit_reg(29),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[0]_i_2_n_5\,
      Q => bit_reg(2),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[28]_i_1_n_5\,
      Q => bit_reg(30),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[28]_i_1_n_4\,
      Q => bit_reg(31),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[0]_i_2_n_4\,
      Q => bit_reg(3),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[4]_i_1_n_7\,
      Q => bit_reg(4),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_reg[0]_i_2_n_0\,
      CO(3) => \bit_reg[4]_i_1_n_0\,
      CO(2) => \bit_reg[4]_i_1_n_1\,
      CO(1) => \bit_reg[4]_i_1_n_2\,
      CO(0) => \bit_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bit_reg[4]_i_1_n_4\,
      O(2) => \bit_reg[4]_i_1_n_5\,
      O(1) => \bit_reg[4]_i_1_n_6\,
      O(0) => \bit_reg[4]_i_1_n_7\,
      S(3 downto 0) => bit_reg(7 downto 4)
    );
\bit_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[4]_i_1_n_6\,
      Q => bit_reg(5),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[4]_i_1_n_5\,
      Q => bit_reg(6),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[4]_i_1_n_4\,
      Q => bit_reg(7),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[8]_i_1_n_7\,
      Q => bit_reg(8),
      R => \bit[0]_i_1_n_0\
    );
\bit_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_reg[4]_i_1_n_0\,
      CO(3) => \bit_reg[8]_i_1_n_0\,
      CO(2) => \bit_reg[8]_i_1_n_1\,
      CO(1) => \bit_reg[8]_i_1_n_2\,
      CO(0) => \bit_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bit_reg[8]_i_1_n_4\,
      O(2) => \bit_reg[8]_i_1_n_5\,
      O(1) => \bit_reg[8]_i_1_n_6\,
      O(0) => \bit_reg[8]_i_1_n_7\,
      S(3 downto 0) => bit_reg(11 downto 8)
    );
\bit_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_reg[8]_i_1_n_6\,
      Q => bit_reg(9),
      R => \bit[0]_i_1_n_0\
    );
\misoSignal[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => inData(0),
      I1 => \outData[7]_i_2_n_0\,
      I2 => cs,
      I3 => \misoSignal_reg_n_0_[0]\,
      O => \misoSignal[0]_i_1_n_0\
    );
\misoSignal[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inData(1),
      I1 => \outData[7]_i_2_n_0\,
      I2 => \misoSignal_reg_n_0_[0]\,
      O => \misoSignal[1]_i_1_n_0\
    );
\misoSignal[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inData(2),
      I1 => \outData[7]_i_2_n_0\,
      I2 => \misoSignal_reg_n_0_[1]\,
      O => \misoSignal[2]_i_1_n_0\
    );
\misoSignal[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inData(3),
      I1 => \outData[7]_i_2_n_0\,
      I2 => \misoSignal_reg_n_0_[2]\,
      O => \misoSignal[3]_i_1_n_0\
    );
\misoSignal[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inData(4),
      I1 => \outData[7]_i_2_n_0\,
      I2 => \misoSignal_reg_n_0_[3]\,
      O => \misoSignal[4]_i_1_n_0\
    );
\misoSignal[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inData(5),
      I1 => \outData[7]_i_2_n_0\,
      I2 => \misoSignal_reg_n_0_[4]\,
      O => \misoSignal[5]_i_1_n_0\
    );
\misoSignal[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inData(6),
      I1 => \outData[7]_i_2_n_0\,
      I2 => \misoSignal_reg_n_0_[5]\,
      O => \misoSignal[6]_i_1_n_0\
    );
\misoSignal[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => inData(7),
      I1 => \outData[7]_i_2_n_0\,
      I2 => \misoSignal_reg_n_0_[6]\,
      O => \misoSignal[7]_i_1_n_0\
    );
\misoSignal_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \misoSignal[0]_i_1_n_0\,
      Q => \misoSignal_reg_n_0_[0]\,
      R => '0'
    );
\misoSignal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \misoSignal[1]_i_1_n_0\,
      Q => \misoSignal_reg_n_0_[1]\,
      R => '0'
    );
\misoSignal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \misoSignal[2]_i_1_n_0\,
      Q => \misoSignal_reg_n_0_[2]\,
      R => '0'
    );
\misoSignal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \misoSignal[3]_i_1_n_0\,
      Q => \misoSignal_reg_n_0_[3]\,
      R => '0'
    );
\misoSignal_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \misoSignal[4]_i_1_n_0\,
      Q => \misoSignal_reg_n_0_[4]\,
      R => '0'
    );
\misoSignal_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \misoSignal[5]_i_1_n_0\,
      Q => \misoSignal_reg_n_0_[5]\,
      R => '0'
    );
\misoSignal_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \misoSignal[6]_i_1_n_0\,
      Q => \misoSignal_reg_n_0_[6]\,
      R => '0'
    );
\misoSignal_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \misoSignal[7]_i_1_n_0\,
      Q => p_1_in,
      R => '0'
    );
\mosiSignal_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => spi_mosi,
      Q => \mosiSignal_reg_n_0_[0]\,
      R => '0'
    );
\mosiSignal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \mosiSignal_reg_n_0_[0]\,
      Q => \mosiSignal_reg_n_0_[1]\,
      R => '0'
    );
\mosiSignal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \mosiSignal_reg_n_0_[1]\,
      Q => \mosiSignal_reg_n_0_[2]\,
      R => '0'
    );
\mosiSignal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \mosiSignal_reg_n_0_[2]\,
      Q => \mosiSignal_reg_n_0_[3]\,
      R => '0'
    );
\mosiSignal_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \mosiSignal_reg_n_0_[3]\,
      Q => \mosiSignal_reg_n_0_[4]\,
      R => '0'
    );
\mosiSignal_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \mosiSignal_reg_n_0_[4]\,
      Q => \mosiSignal_reg_n_0_[5]\,
      R => '0'
    );
\mosiSignal_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \mosiSignal_reg_n_0_[5]\,
      Q => \mosiSignal_reg_n_0_[6]\,
      R => '0'
    );
\mosiSignal_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => \mosiSignal_reg_n_0_[6]\,
      Q => \mosiSignal_reg_n_0_[7]\,
      R => '0'
    );
\outData[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \outData[7]_i_2_n_0\,
      I1 => cs,
      O => \outData[7]_i_1_n_0\
    );
\outData[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \outData[7]_i_3_n_0\,
      I1 => \outData[7]_i_4_n_0\,
      I2 => \outData[7]_i_5_n_0\,
      I3 => \outData[7]_i_6_n_0\,
      I4 => \outData[7]_i_7_n_0\,
      I5 => \outData[7]_i_8_n_0\,
      O => \outData[7]_i_2_n_0\
    );
\outData[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \outData_reg[7]_i_9_n_4\,
      I1 => \outData_reg[7]_i_10_n_7\,
      I2 => \outData_reg[7]_i_10_n_6\,
      I3 => \outData_reg[7]_i_10_n_5\,
      I4 => \outData_reg[7]_i_10_n_4\,
      I5 => \outData_reg[7]_i_11_n_7\,
      O => \outData[7]_i_3_n_0\
    );
\outData[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \outData_reg[7]_i_12_n_6\,
      I1 => \outData_reg[7]_i_12_n_5\,
      I2 => \outData_reg[7]_i_12_n_4\,
      I3 => \outData_reg[7]_i_13_n_7\,
      I4 => \outData_reg[7]_i_13_n_6\,
      I5 => \outData_reg[7]_i_13_n_5\,
      O => \outData[7]_i_4_n_0\
    );
\outData[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \outData_reg[7]_i_14_n_6\,
      I1 => \outData_reg[7]_i_14_n_5\,
      I2 => \outData_reg[7]_i_14_n_4\,
      I3 => \outData_reg[7]_i_9_n_7\,
      I4 => \outData_reg[7]_i_9_n_6\,
      I5 => \outData_reg[7]_i_9_n_5\,
      O => \outData[7]_i_5_n_0\
    );
\outData[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \outData_reg[7]_i_13_n_4\,
      I1 => \outData_reg[7]_i_15_n_7\,
      I2 => \outData_reg[7]_i_15_n_6\,
      I3 => \outData_reg[7]_i_15_n_5\,
      I4 => \outData_reg[7]_i_15_n_4\,
      I5 => \outData_reg[7]_i_14_n_7\,
      O => \outData[7]_i_6_n_0\
    );
\outData[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \outData_reg[7]_i_11_n_6\,
      I1 => \outData_reg[7]_i_11_n_5\,
      O => \outData[7]_i_7_n_0\
    );
\outData[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFFFFFFF"
    )
        port map (
      I0 => \outData_reg[7]_i_16_n_7\,
      I1 => \outData_reg[7]_i_16_n_6\,
      I2 => bit_reg(0),
      I3 => \outData_reg[7]_i_16_n_4\,
      I4 => \outData_reg[7]_i_12_n_7\,
      I5 => \outData_reg[7]_i_16_n_5\,
      O => \outData[7]_i_8_n_0\
    );
\outData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outData[7]_i_1_n_0\,
      D => \mosiSignal_reg_n_0_[0]\,
      Q => outData(0),
      R => '0'
    );
\outData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outData[7]_i_1_n_0\,
      D => \mosiSignal_reg_n_0_[1]\,
      Q => outData(1),
      R => '0'
    );
\outData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outData[7]_i_1_n_0\,
      D => \mosiSignal_reg_n_0_[2]\,
      Q => outData(2),
      R => '0'
    );
\outData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outData[7]_i_1_n_0\,
      D => \mosiSignal_reg_n_0_[3]\,
      Q => outData(3),
      R => '0'
    );
\outData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outData[7]_i_1_n_0\,
      D => \mosiSignal_reg_n_0_[4]\,
      Q => outData(4),
      R => '0'
    );
\outData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outData[7]_i_1_n_0\,
      D => \mosiSignal_reg_n_0_[5]\,
      Q => outData(5),
      R => '0'
    );
\outData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outData[7]_i_1_n_0\,
      D => \mosiSignal_reg_n_0_[6]\,
      Q => outData(6),
      R => '0'
    );
\outData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \outData[7]_i_1_n_0\,
      D => \mosiSignal_reg_n_0_[7]\,
      Q => outData(7),
      R => '0'
    );
\outData_reg[7]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \outData_reg[7]_i_9_n_0\,
      CO(3) => \outData_reg[7]_i_10_n_0\,
      CO(2) => \outData_reg[7]_i_10_n_1\,
      CO(1) => \outData_reg[7]_i_10_n_2\,
      CO(0) => \outData_reg[7]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \outData_reg[7]_i_10_n_4\,
      O(2) => \outData_reg[7]_i_10_n_5\,
      O(1) => \outData_reg[7]_i_10_n_6\,
      O(0) => \outData_reg[7]_i_10_n_7\,
      S(3 downto 0) => bit_reg(28 downto 25)
    );
\outData_reg[7]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \outData_reg[7]_i_10_n_0\,
      CO(3 downto 2) => \NLW_outData_reg[7]_i_11_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \outData_reg[7]_i_11_n_2\,
      CO(0) => \outData_reg[7]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_outData_reg[7]_i_11_O_UNCONNECTED\(3),
      O(2) => \outData_reg[7]_i_11_n_5\,
      O(1) => \outData_reg[7]_i_11_n_6\,
      O(0) => \outData_reg[7]_i_11_n_7\,
      S(3) => '0',
      S(2 downto 0) => bit_reg(31 downto 29)
    );
\outData_reg[7]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \outData_reg[7]_i_16_n_0\,
      CO(3) => \outData_reg[7]_i_12_n_0\,
      CO(2) => \outData_reg[7]_i_12_n_1\,
      CO(1) => \outData_reg[7]_i_12_n_2\,
      CO(0) => \outData_reg[7]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \outData_reg[7]_i_12_n_4\,
      O(2) => \outData_reg[7]_i_12_n_5\,
      O(1) => \outData_reg[7]_i_12_n_6\,
      O(0) => \outData_reg[7]_i_12_n_7\,
      S(3 downto 0) => bit_reg(8 downto 5)
    );
\outData_reg[7]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \outData_reg[7]_i_12_n_0\,
      CO(3) => \outData_reg[7]_i_13_n_0\,
      CO(2) => \outData_reg[7]_i_13_n_1\,
      CO(1) => \outData_reg[7]_i_13_n_2\,
      CO(0) => \outData_reg[7]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \outData_reg[7]_i_13_n_4\,
      O(2) => \outData_reg[7]_i_13_n_5\,
      O(1) => \outData_reg[7]_i_13_n_6\,
      O(0) => \outData_reg[7]_i_13_n_7\,
      S(3 downto 0) => bit_reg(12 downto 9)
    );
\outData_reg[7]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \outData_reg[7]_i_15_n_0\,
      CO(3) => \outData_reg[7]_i_14_n_0\,
      CO(2) => \outData_reg[7]_i_14_n_1\,
      CO(1) => \outData_reg[7]_i_14_n_2\,
      CO(0) => \outData_reg[7]_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \outData_reg[7]_i_14_n_4\,
      O(2) => \outData_reg[7]_i_14_n_5\,
      O(1) => \outData_reg[7]_i_14_n_6\,
      O(0) => \outData_reg[7]_i_14_n_7\,
      S(3 downto 0) => bit_reg(20 downto 17)
    );
\outData_reg[7]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \outData_reg[7]_i_13_n_0\,
      CO(3) => \outData_reg[7]_i_15_n_0\,
      CO(2) => \outData_reg[7]_i_15_n_1\,
      CO(1) => \outData_reg[7]_i_15_n_2\,
      CO(0) => \outData_reg[7]_i_15_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \outData_reg[7]_i_15_n_4\,
      O(2) => \outData_reg[7]_i_15_n_5\,
      O(1) => \outData_reg[7]_i_15_n_6\,
      O(0) => \outData_reg[7]_i_15_n_7\,
      S(3 downto 0) => bit_reg(16 downto 13)
    );
\outData_reg[7]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \outData_reg[7]_i_16_n_0\,
      CO(2) => \outData_reg[7]_i_16_n_1\,
      CO(1) => \outData_reg[7]_i_16_n_2\,
      CO(0) => \outData_reg[7]_i_16_n_3\,
      CYINIT => bit_reg(0),
      DI(3 downto 0) => B"0000",
      O(3) => \outData_reg[7]_i_16_n_4\,
      O(2) => \outData_reg[7]_i_16_n_5\,
      O(1) => \outData_reg[7]_i_16_n_6\,
      O(0) => \outData_reg[7]_i_16_n_7\,
      S(3 downto 0) => bit_reg(4 downto 1)
    );
\outData_reg[7]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \outData_reg[7]_i_14_n_0\,
      CO(3) => \outData_reg[7]_i_9_n_0\,
      CO(2) => \outData_reg[7]_i_9_n_1\,
      CO(1) => \outData_reg[7]_i_9_n_2\,
      CO(0) => \outData_reg[7]_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \outData_reg[7]_i_9_n_4\,
      O(2) => \outData_reg[7]_i_9_n_5\,
      O(1) => \outData_reg[7]_i_9_n_6\,
      O(0) => \outData_reg[7]_i_9_n_7\,
      S(3 downto 0) => bit_reg(24 downto 21)
    );
spi_miso_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs,
      O => spi_miso_i_1_n_0
    );
spi_miso_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => p_1_in,
      Q => spi_miso,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi28b_0_0 is
  port (
    spi_mosi : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    cs : in STD_LOGIC;
    outData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    inData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ledsData : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_spi28b_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_spi28b_0_0 : entity is "design_1_spi28b_0_0,spi28b,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_spi28b_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_spi28b_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_spi28b_0_0 : entity is "spi28b,Vivado 2019.1";
end design_1_spi28b_0_0;

architecture STRUCTURE of design_1_spi28b_0_0 is
  signal \^ledsdata\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^outdata\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
  ledsData(3 downto 0) <= \^ledsdata\(3 downto 0);
  outData(7 downto 4) <= \^outdata\(7 downto 4);
  outData(3 downto 0) <= \^ledsdata\(3 downto 0);
U0: entity work.design_1_spi28b_0_0_spi28b
     port map (
      clk => clk,
      cs => cs,
      inData(7 downto 0) => inData(7 downto 0),
      outData(7 downto 4) => \^outdata\(7 downto 4),
      outData(3 downto 0) => \^ledsdata\(3 downto 0),
      spi_miso => spi_miso,
      spi_mosi => spi_mosi
    );
end STRUCTURE;
