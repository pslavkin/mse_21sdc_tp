-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Mon Dec 30 09:24:46 2019
-- Host        : work1 running 64-bit unknown
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
    inData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cs : in STD_LOGIC;
    clk : in STD_LOGIC;
    spi_mosi : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spi28b_0_0_spi28b : entity is "spi28b";
end design_1_spi28b_0_0_spi28b;

architecture STRUCTURE of design_1_spi28b_0_0_spi28b is
  signal count_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal misoSignal : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mosiSignal : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mosiSignal_reg_n_0_[6]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 3 );
  signal p_3_out : STD_LOGIC_VECTOR ( 2 to 2 );
  signal spi_miso_i_1_n_0 : STD_LOGIC;
  signal spi_miso_i_3_n_0 : STD_LOGIC;
  signal spi_miso_i_4_n_0 : STD_LOGIC;
  signal spi_miso_reg_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair0";
begin
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
      C => clk,
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
      C => clk,
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
      C => clk,
      CE => spi_miso_i_1_n_0,
      CLR => cs,
      D => p_0_in(2),
      Q => count_reg(2)
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
      C => clk,
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
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => mosiSignal(0),
      Q => mosiSignal(1),
      R => '0'
    );
\mosiSignal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => spi_miso_i_1_n_0,
      D => mosiSignal(1),
      Q => p_1_in(3),
      R => '0'
    );
\mosiSignal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      O => p_3_out(2)
    );
\outData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_3_out(2),
      D => spi_mosi,
      Q => outData(0),
      R => '0'
    );
\outData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_3_out(2),
      D => mosiSignal(0),
      Q => outData(1),
      R => '0'
    );
\outData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_3_out(2),
      D => mosiSignal(1),
      Q => outData(2),
      R => '0'
    );
\outData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_3_out(2),
      D => p_1_in(3),
      Q => outData(3),
      R => '0'
    );
\outData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_3_out(2),
      D => p_1_in(4),
      Q => outData(4),
      R => '0'
    );
\outData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_3_out(2),
      D => p_1_in(5),
      Q => outData(5),
      R => '0'
    );
\outData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_3_out(2),
      D => p_1_in(6),
      Q => outData(6),
      R => '0'
    );
\outData_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_3_out(2),
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
      C => clk,
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
  signal \^cs\ : STD_LOGIC;
  signal \^ledsdata\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^outdata\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
  \^cs\ <= cs;
  ledsData(3) <= \^cs\;
  ledsData(2 downto 0) <= \^ledsdata\(2 downto 0);
  outData(7 downto 3) <= \^outdata\(7 downto 3);
  outData(2 downto 0) <= \^ledsdata\(2 downto 0);
U0: entity work.design_1_spi28b_0_0_spi28b
     port map (
      clk => clk,
      cs => \^cs\,
      inData(7 downto 0) => inData(7 downto 0),
      outData(7 downto 3) => \^outdata\(7 downto 3),
      outData(2 downto 0) => \^ledsdata\(2 downto 0),
      spi_miso => spi_miso,
      spi_mosi => spi_mosi
    );
end STRUCTURE;
