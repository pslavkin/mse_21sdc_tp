-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Jan  2 06:04:30 2020
-- Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_paralell2axi_0_0_sim_netlist.vhdl
-- Design      : design_1_paralell2axi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_paralell2axi is
  port (
    m_valid : out STD_LOGIC;
    s_ready : out STD_LOGIC;
    emi : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_paralell2axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_paralell2axi is
  signal last_m_valid : STD_LOGIC;
  signal last_s_ready : STD_LOGIC;
  signal \^m_valid\ : STD_LOGIC;
  signal m_valid_i_1_n_0 : STD_LOGIC;
  signal \^s_ready\ : STD_LOGIC;
  signal s_ready_i_1_n_0 : STD_LOGIC;
begin
  m_valid <= \^m_valid\;
  s_ready <= \^s_ready\;
last_m_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => emi(0),
      Q => last_m_valid,
      R => '0'
    );
last_s_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => emi(1),
      Q => last_s_ready,
      R => '0'
    );
m_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \^m_valid\,
      I1 => last_m_valid,
      I2 => emi(0),
      O => m_valid_i_1_n_0
    );
m_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => m_valid_i_1_n_0,
      Q => \^m_valid\,
      R => '0'
    );
s_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \^s_ready\,
      I1 => last_s_ready,
      I2 => emi(1),
      O => s_ready_i_1_n_0
    );
s_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_ready_i_1_n_0,
      Q => \^s_ready\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    emi : in STD_LOGIC_VECTOR ( 31 downto 0 );
    emo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_valid : out STD_LOGIC;
    m_last : out STD_LOGIC;
    m_ready : in STD_LOGIC;
    m_clk : out STD_LOGIC;
    m_clk_in : in STD_LOGIC;
    s_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_valid : in STD_LOGIC;
    s_last : in STD_LOGIC;
    s_ready : out STD_LOGIC;
    s_clk : out STD_LOGIC;
    s_clk_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_paralell2axi_0_0,paralell2axi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "paralell2axi,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^emi\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_clk_in\ : STD_LOGIC;
  signal \^m_ready\ : STD_LOGIC;
  signal \^s_clk_in\ : STD_LOGIC;
  signal \^s_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_last\ : STD_LOGIC;
  signal \^s_valid\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of m_clk : signal is "xilinx.com:signal:clock:1.0 m_clk CLK";
  attribute x_interface_parameter of m_clk : signal is "XIL_INTERFACENAME m_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_paralell2axi_0_0_m_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_clk : signal is "xilinx.com:signal:clock:1.0 s_clk CLK";
  attribute x_interface_parameter of s_clk : signal is "XIL_INTERFACENAME s_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_paralell2axi_0_0_s_clk, INSERT_VIP 0";
begin
  \^emi\(20) <= emi(20);
  \^emi\(17 downto 14) <= emi(17 downto 14);
  \^emi\(10 downto 0) <= emi(10 downto 0);
  \^m_clk_in\ <= m_clk_in;
  \^m_ready\ <= m_ready;
  \^s_clk_in\ <= s_clk_in;
  \^s_data\(7 downto 0) <= s_data(7 downto 0);
  \^s_last\ <= s_last;
  \^s_valid\ <= s_valid;
  emo(13) <= \^s_last\;
  emo(12) <= \^s_valid\;
  emo(11) <= \^m_ready\;
  emo(7 downto 0) <= \^s_data\(7 downto 0);
  leds(3) <= \^s_clk_in\;
  leds(2) <= \^m_clk_in\;
  leds(1 downto 0) <= \^emi\(17 downto 16);
  m_clk <= \^emi\(10);
  m_data(7 downto 0) <= \^emi\(7 downto 0);
  m_last <= \^emi\(9);
  rst <= \^emi\(20);
  s_clk <= \^emi\(14);
  emo(8) <= 'Z';
  emo(9) <= 'Z';
  emo(10) <= 'Z';
  emo(14) <= 'Z';
  emo(15) <= 'Z';
  emo(16) <= 'Z';
  emo(17) <= 'Z';
  emo(18) <= 'Z';
  emo(19) <= 'Z';
  emo(20) <= 'Z';
  emo(21) <= 'Z';
  emo(22) <= 'Z';
  emo(23) <= 'Z';
  emo(24) <= 'Z';
  emo(25) <= 'Z';
  emo(26) <= 'Z';
  emo(27) <= 'Z';
  emo(28) <= 'Z';
  emo(29) <= 'Z';
  emo(30) <= 'Z';
  emo(31) <= 'Z';
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_paralell2axi
     port map (
      clk => clk,
      emi(1) => \^emi\(15),
      emi(0) => \^emi\(8),
      m_valid => m_valid,
      s_ready => s_ready
    );
end STRUCTURE;
