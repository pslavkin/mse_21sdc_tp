-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Dec  4 17:29:00 2019
-- Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
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
entity design_1_spi28b_0_0 is
  port (
    spi_mosi : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
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
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
spi_miso_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_mosi,
      O => spi_miso
    );
end STRUCTURE;
