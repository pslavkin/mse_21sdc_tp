-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Dec 31 11:26:07 2019
-- Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_spi28b_0_0_sim_netlist.vhdl
-- Design      : design_1_spi28b_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi28b is
  port (
    spi_miso : out STD_LOGIC;
    outData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stop_data : out STD_LOGIC;
    inData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cs : in STD_LOGIC;
    spi_clk : in STD_LOGIC;
    spi_mosi : in STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi28b;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi28b is
  signal count_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal misoSignal : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mosiSignal : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \mosiSignal_reg_n_0_[6]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal p_3_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_miso_i_1_n_0 : STD_LOGIC;
  signal spi_miso_i_3_n_0 : STD_LOGIC;
  signal spi_miso_i_4_n_0 : STD_LOGIC;
  signal spi_miso_reg_i_2_n_0 : STD_LOGIC;
  signal \^stop_data\ : STD_LOGIC;
  signal stop_state_i_1_n_0 : STD_LOGIC;
  signal stop_state_i_2_n_0 : STD_LOGIC;
  signal stop_state_i_3_n_0 : STD_LOGIC;
  signal stop_state_i_4_n_0 : STD_LOGIC;
  signal stop_state_i_5_n_0 : STD_LOGIC;
  signal stop_state_i_6_n_0 : STD_LOGIC;
  signal stop_state_reg_i_10_n_0 : STD_LOGIC;
  signal stop_state_reg_i_10_n_1 : STD_LOGIC;
  signal stop_state_reg_i_10_n_2 : STD_LOGIC;
  signal stop_state_reg_i_10_n_3 : STD_LOGIC;
  signal stop_state_reg_i_12_n_0 : STD_LOGIC;
  signal stop_state_reg_i_12_n_1 : STD_LOGIC;
  signal stop_state_reg_i_12_n_2 : STD_LOGIC;
  signal stop_state_reg_i_12_n_3 : STD_LOGIC;
  signal stop_state_reg_i_7_n_0 : STD_LOGIC;
  signal stop_state_reg_i_7_n_1 : STD_LOGIC;
  signal stop_state_reg_i_7_n_2 : STD_LOGIC;
  signal stop_state_reg_i_7_n_3 : STD_LOGIC;
  signal stop_state_reg_i_8_n_0 : STD_LOGIC;
  signal stop_state_reg_i_8_n_1 : STD_LOGIC;
  signal stop_state_reg_i_8_n_2 : STD_LOGIC;
  signal stop_state_reg_i_8_n_3 : STD_LOGIC;
  signal stop_state_reg_i_9_n_0 : STD_LOGIC;
  signal stop_state_reg_i_9_n_1 : STD_LOGIC;
  signal stop_state_reg_i_9_n_2 : STD_LOGIC;
  signal stop_state_reg_i_9_n_3 : STD_LOGIC;
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_stop_state_reg_i_11_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_stop_state_reg_i_11_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair0";
begin
  stop_data <= \^stop_data\;
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => p_0_in(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => p_0_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(1),
      I2 => count_reg(0),
      O => p_0_in(2)
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => spi_miso_i_1_n_0,
      CLR => cs,
      D => p_0_in(0),
      Q => count_reg(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => spi_miso_i_1_n_0,
      CLR => cs,
      D => p_0_in(1),
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => spi_miso_i_1_n_0,
      CLR => cs,
      D => p_0_in(2),
      Q => count_reg(2)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => stop_state_i_6_n_0,
      I1 => stop_state_i_5_n_0,
      I2 => stop_state_i_4_n_0,
      I3 => stop_state_i_3_n_0,
      I4 => \p_0_in__0\(1),
      I5 => \p_0_in__0\(2),
      O => \counter[0]_i_1_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \p_0_in__0\(0)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_7\,
      Q => counter_reg(0),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2_n_0\,
      CO(2) => \counter_reg[0]_i_2_n_1\,
      CO(1) => \counter_reg[0]_i_2_n_2\,
      CO(0) => \counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_2_n_4\,
      O(2) => \counter_reg[0]_i_2_n_5\,
      O(1) => \counter_reg[0]_i_2_n_6\,
      O(0) => \counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \p_0_in__0\(0)
    );
\counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_3_n_0\,
      CO(2) => \counter_reg[0]_i_3_n_1\,
      CO(1) => \counter_reg[0]_i_3_n_2\,
      CO(0) => \counter_reg[0]_i_3_n_3\,
      CYINIT => counter_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(4 downto 1),
      S(3 downto 0) => counter_reg(4 downto 1)
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_6\,
      Q => counter_reg(1),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => counter_reg(23 downto 20)
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3 downto 1) => \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_counter_reg[24]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => counter_reg(25 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_5\,
      Q => counter_reg(2),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_4\,
      Q => counter_reg(3),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => \counter[0]_i_1_n_0\
    );
\misoSignal_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => cs,
      CE => '1',
      D => inData(0),
      Q => misoSignal(0),
      R => '0'
    );
\misoSignal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => cs,
      CE => '1',
      D => inData(1),
      Q => misoSignal(1),
      R => '0'
    );
\misoSignal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => cs,
      CE => '1',
      D => inData(2),
      Q => misoSignal(2),
      R => '0'
    );
\misoSignal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => cs,
      CE => '1',
      D => inData(3),
      Q => misoSignal(3),
      R => '0'
    );
\misoSignal_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => cs,
      CE => '1',
      D => inData(4),
      Q => misoSignal(4),
      R => '0'
    );
\misoSignal_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => cs,
      CE => '1',
      D => inData(5),
      Q => misoSignal(5),
      R => '0'
    );
\misoSignal_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => cs,
      CE => '1',
      D => inData(6),
      Q => misoSignal(6),
      R => '0'
    );
\misoSignal_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => cs,
      CE => '1',
      D => inData(7),
      Q => misoSignal(7),
      R => '0'
    );
\mosiSignal_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => spi_miso_i_1_n_0,
      D => spi_mosi,
      Q => mosiSignal(0),
      R => '0'
    );
\mosiSignal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => spi_miso_i_1_n_0,
      D => mosiSignal(0),
      Q => p_1_in(2),
      R => '0'
    );
\mosiSignal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => spi_miso_i_1_n_0,
      D => p_1_in(2),
      Q => p_1_in(3),
      R => '0'
    );
\mosiSignal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => spi_miso_i_1_n_0,
      D => p_1_in(3),
      Q => p_1_in(4),
      R => '0'
    );
\mosiSignal_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => spi_miso_i_1_n_0,
      D => p_1_in(4),
      Q => p_1_in(5),
      R => '0'
    );
\mosiSignal_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => spi_miso_i_1_n_0,
      D => p_1_in(5),
      Q => p_1_in(6),
      R => '0'
    );
\mosiSignal_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => spi_clk,
      CE => spi_miso_i_1_n_0,
      D => p_1_in(6),
      Q => \mosiSignal_reg_n_0_[6]\,
      R => '0'
    );
\outData[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => cs,
      O => p_3_out(1)
    );
\outData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clk,
      CE => p_3_out(1),
      D => spi_mosi,
      Q => outData(0),
      R => '0'
    );
\outData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clk,
      CE => p_3_out(1),
      D => mosiSignal(0),
      Q => outData(1),
      R => '0'
    );
\outData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clk,
      CE => p_3_out(1),
      D => p_1_in(2),
      Q => outData(2),
      R => '0'
    );
\outData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clk,
      CE => p_3_out(1),
      D => p_1_in(3),
      Q => outData(3),
      R => '0'
    );
\outData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clk,
      CE => p_3_out(1),
      D => p_1_in(4),
      Q => outData(4),
      R => '0'
    );
\outData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clk,
      CE => p_3_out(1),
      D => p_1_in(5),
      Q => outData(5),
      R => '0'
    );
\outData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clk,
      CE => p_3_out(1),
      D => p_1_in(6),
      Q => outData(6),
      R => '0'
    );
\outData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => spi_clk,
      CE => p_3_out(1),
      D => \mosiSignal_reg_n_0_[6]\,
      Q => outData(7),
      R => '0'
    );
spi_miso_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cs,
      O => spi_miso_i_1_n_0
    );
spi_miso_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => misoSignal(4),
      I1 => misoSignal(5),
      I2 => count_reg(1),
      I3 => misoSignal(6),
      I4 => count_reg(0),
      I5 => misoSignal(7),
      O => spi_miso_i_3_n_0
    );
spi_miso_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => misoSignal(0),
      I1 => misoSignal(1),
      I2 => count_reg(1),
      I3 => misoSignal(2),
      I4 => count_reg(0),
      I5 => misoSignal(3),
      O => spi_miso_i_4_n_0
    );
spi_miso_reg: unisim.vcomponents.FDRE
     port map (
      C => spi_clk,
      CE => spi_miso_i_1_n_0,
      D => spi_miso_reg_i_2_n_0,
      Q => spi_miso,
      R => '0'
    );
spi_miso_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => spi_miso_i_3_n_0,
      I1 => spi_miso_i_4_n_0,
      O => spi_miso_reg_i_2_n_0,
      S => count_reg(2)
    );
stop_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => stop_state_i_2_n_0,
      I1 => stop_state_i_3_n_0,
      I2 => stop_state_i_4_n_0,
      I3 => stop_state_i_5_n_0,
      I4 => stop_state_i_6_n_0,
      I5 => \^stop_data\,
      O => stop_state_i_1_n_0
    );
stop_state_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \p_0_in__0\(1),
      I1 => \p_0_in__0\(2),
      O => stop_state_i_2_n_0
    );
stop_state_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \p_0_in__0\(11),
      I1 => \p_0_in__0\(12),
      I2 => \p_0_in__0\(10),
      I3 => \p_0_in__0\(9),
      I4 => \p_0_in__0\(14),
      I5 => \p_0_in__0\(13),
      O => stop_state_i_3_n_0
    );
stop_state_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \p_0_in__0\(17),
      I1 => \p_0_in__0\(18),
      I2 => \p_0_in__0\(16),
      I3 => \p_0_in__0\(15),
      I4 => \p_0_in__0\(19),
      I5 => \p_0_in__0\(20),
      O => stop_state_i_4_n_0
    );
stop_state_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \p_0_in__0\(24),
      I1 => \p_0_in__0\(23),
      I2 => \p_0_in__0\(21),
      I3 => \p_0_in__0\(22),
      I4 => \p_0_in__0\(25),
      I5 => counter_reg(0),
      O => stop_state_i_5_n_0
    );
stop_state_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \p_0_in__0\(5),
      I1 => \p_0_in__0\(6),
      I2 => \p_0_in__0\(3),
      I3 => \p_0_in__0\(4),
      I4 => \p_0_in__0\(7),
      I5 => \p_0_in__0\(8),
      O => stop_state_i_6_n_0
    );
stop_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      D => stop_state_i_1_n_0,
      Q => \^stop_data\,
      R => '0'
    );
stop_state_reg_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => stop_state_reg_i_9_n_0,
      CO(3) => stop_state_reg_i_10_n_0,
      CO(2) => stop_state_reg_i_10_n_1,
      CO(1) => stop_state_reg_i_10_n_2,
      CO(0) => stop_state_reg_i_10_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(24 downto 21),
      S(3 downto 0) => counter_reg(24 downto 21)
    );
stop_state_reg_i_11: unisim.vcomponents.CARRY4
     port map (
      CI => stop_state_reg_i_10_n_0,
      CO(3 downto 0) => NLW_stop_state_reg_i_11_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_stop_state_reg_i_11_O_UNCONNECTED(3 downto 1),
      O(0) => \p_0_in__0\(25),
      S(3 downto 1) => B"000",
      S(0) => counter_reg(25)
    );
stop_state_reg_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_3_n_0\,
      CO(3) => stop_state_reg_i_12_n_0,
      CO(2) => stop_state_reg_i_12_n_1,
      CO(1) => stop_state_reg_i_12_n_2,
      CO(0) => stop_state_reg_i_12_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(8 downto 5),
      S(3 downto 0) => counter_reg(8 downto 5)
    );
stop_state_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => stop_state_reg_i_12_n_0,
      CO(3) => stop_state_reg_i_7_n_0,
      CO(2) => stop_state_reg_i_7_n_1,
      CO(1) => stop_state_reg_i_7_n_2,
      CO(0) => stop_state_reg_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(12 downto 9),
      S(3 downto 0) => counter_reg(12 downto 9)
    );
stop_state_reg_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => stop_state_reg_i_7_n_0,
      CO(3) => stop_state_reg_i_8_n_0,
      CO(2) => stop_state_reg_i_8_n_1,
      CO(1) => stop_state_reg_i_8_n_2,
      CO(0) => stop_state_reg_i_8_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(16 downto 13),
      S(3 downto 0) => counter_reg(16 downto 13)
    );
stop_state_reg_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => stop_state_reg_i_8_n_0,
      CO(3) => stop_state_reg_i_9_n_0,
      CO(2) => stop_state_reg_i_9_n_1,
      CO(1) => stop_state_reg_i_9_n_2,
      CO(0) => stop_state_reg_i_9_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(20 downto 17),
      S(3 downto 0) => counter_reg(20 downto 17)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    spi_mosi : in STD_LOGIC;
    stop_data : out STD_LOGIC;
    spi_miso : out STD_LOGIC;
    cs : in STD_LOGIC;
    outData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    inData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ledsData : out STD_LOGIC_VECTOR ( 3 downto 0 );
    spi_clk : in STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_spi28b_0_0,spi28b,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "spi28b,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^cs\ : STD_LOGIC;
  signal \^ledsdata\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^outdata\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \^stop_data\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of spi_clk : signal is "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute x_interface_parameter of sys_clk : signal is "XIL_INTERFACENAME sys_clk, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  \^cs\ <= cs;
  ledsData(3) <= \^cs\;
  ledsData(2) <= \^stop_data\;
  ledsData(1 downto 0) <= \^ledsdata\(1 downto 0);
  outData(7 downto 2) <= \^outdata\(7 downto 2);
  outData(1 downto 0) <= \^ledsdata\(1 downto 0);
  stop_data <= \^stop_data\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi28b
     port map (
      cs => \^cs\,
      inData(7 downto 0) => inData(7 downto 0),
      outData(7 downto 2) => \^outdata\(7 downto 2),
      outData(1 downto 0) => \^ledsdata\(1 downto 0),
      spi_clk => spi_clk,
      spi_miso => spi_miso,
      spi_mosi => spi_mosi,
      stop_data => \^stop_data\,
      sys_clk => sys_clk
    );
end STRUCTURE;
