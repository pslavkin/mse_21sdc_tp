-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Mon Dec  9 01:49:33 2019
-- Host        : work12 running 64-bit Ubuntu 19.04
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_spi28b_0_0_stub.vhdl
-- Design      : design_1_spi28b_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    spi_mosi : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    cs : in STD_LOGIC;
    outData : out STD_LOGIC_VECTOR ( 7 downto 0 );
    inData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ledsData : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "spi_mosi,spi_miso,cs,outData[7:0],inData[7:0],ledsData[3:0],clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "spi28b,Vivado 2019.1";
begin
end;