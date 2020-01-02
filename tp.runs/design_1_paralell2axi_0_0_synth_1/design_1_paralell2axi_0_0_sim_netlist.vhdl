-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Jan  2 14:31:27 2020
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
    axi_m_tvalid : out STD_LOGIC;
    axi_s_tready : out STD_LOGIC;
    emi : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_paralell2axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_paralell2axi is
  signal \^axi_m_tvalid\ : STD_LOGIC;
  signal axi_m_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_s_tready\ : STD_LOGIC;
  signal axi_s_tready_i_1_n_0 : STD_LOGIC;
  signal last_m_valid : STD_LOGIC;
  signal last_m_valid_i_1_n_0 : STD_LOGIC;
  signal last_s_ready : STD_LOGIC;
  signal last_s_ready_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_m_tvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_s_tready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of last_m_valid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of last_s_ready_i_1 : label is "soft_lutpair1";
begin
  axi_m_tvalid <= \^axi_m_tvalid\;
  axi_s_tready <= \^axi_s_tready\;
axi_m_tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EAA"
    )
        port map (
      I0 => \^axi_m_tvalid\,
      I1 => emi(0),
      I2 => last_m_valid,
      I3 => rst,
      O => axi_m_tvalid_i_1_n_0
    );
axi_m_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_m_tvalid_i_1_n_0,
      Q => \^axi_m_tvalid\,
      R => '0'
    );
axi_s_tready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EAA"
    )
        port map (
      I0 => \^axi_s_tready\,
      I1 => emi(1),
      I2 => last_s_ready,
      I3 => rst,
      O => axi_s_tready_i_1_n_0
    );
axi_s_tready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_s_tready_i_1_n_0,
      Q => \^axi_s_tready\,
      R => '0'
    );
last_m_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => emi(0),
      I1 => rst,
      O => last_m_valid_i_1_n_0
    );
last_m_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => last_m_valid_i_1_n_0,
      Q => last_m_valid,
      R => '0'
    );
last_s_ready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => emi(1),
      I1 => rst,
      O => last_s_ready_i_1_n_0
    );
last_s_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => last_s_ready_i_1_n_0,
      Q => last_s_ready,
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
    axi_m_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_m_tvalid : out STD_LOGIC;
    axi_m_tlast : out STD_LOGIC;
    axi_m_tready : in STD_LOGIC;
    axi_s_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_s_tvalid : in STD_LOGIC;
    axi_s_tlast : in STD_LOGIC;
    axi_s_tready : out STD_LOGIC;
    clk : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC
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
  signal \^axi_m_tready\ : STD_LOGIC;
  signal \^axi_s_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^axi_s_tlast\ : STD_LOGIC;
  signal \^axi_s_tvalid\ : STD_LOGIC;
  signal \^emi\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of axi_m_tlast : signal is "xilinx.com:interface:axis:1.0 axi_m TLAST";
  attribute x_interface_info of axi_m_tready : signal is "xilinx.com:interface:axis:1.0 axi_m TREADY";
  attribute x_interface_info of axi_m_tvalid : signal is "xilinx.com:interface:axis:1.0 axi_m TVALID";
  attribute x_interface_info of axi_s_tlast : signal is "xilinx.com:interface:axis:1.0 axi_s TLAST";
  attribute x_interface_info of axi_s_tready : signal is "xilinx.com:interface:axis:1.0 axi_s TREADY";
  attribute x_interface_info of axi_s_tvalid : signal is "xilinx.com:interface:axis:1.0 axi_s TVALID";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axi_m:axi_s, ASSOCIATED_RESET rst, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of axi_m_tdata : signal is "xilinx.com:interface:axis:1.0 axi_m TDATA";
  attribute x_interface_parameter of axi_m_tdata : signal is "XIL_INTERFACENAME axi_m, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of axi_s_tdata : signal is "xilinx.com:interface:axis:1.0 axi_s TDATA";
  attribute x_interface_parameter of axi_s_tdata : signal is "XIL_INTERFACENAME axi_s, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data_out} bitwidth {attribs {resolve_type generated dependency data_out_bitwidth format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0";
begin
  \^axi_m_tready\ <= axi_m_tready;
  \^axi_s_tdata\(7 downto 0) <= axi_s_tdata(7 downto 0);
  \^axi_s_tlast\ <= axi_s_tlast;
  \^axi_s_tvalid\ <= axi_s_tvalid;
  \^emi\(17 downto 13) <= emi(17 downto 13);
  \^emi\(9 downto 0) <= emi(9 downto 0);
  axi_m_tdata(7 downto 0) <= \^emi\(7 downto 0);
  axi_m_tlast <= \^emi\(9);
  emo(12) <= \^axi_s_tlast\;
  emo(11) <= \^axi_s_tvalid\;
  emo(10) <= \^axi_m_tready\;
  emo(7 downto 0) <= \^axi_s_tdata\(7 downto 0);
  leds(3 downto 0) <= \^emi\(17 downto 14);
  emo(8) <= 'Z';
  emo(9) <= 'Z';
  emo(13) <= 'Z';
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
      axi_m_tvalid => axi_m_tvalid,
      axi_s_tready => axi_s_tready,
      clk => clk,
      emi(1) => \^emi\(13),
      emi(0) => \^emi\(8),
      rst => rst
    );
end STRUCTURE;
