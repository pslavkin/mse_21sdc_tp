-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Dec  4 17:29:00 2019
-- Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/pslavkin/mse_3_21sdc/tp/tp.srcs/sources_1/bd/design_1/ip/design_1_spi28b_0_0/design_1_spi28b_0_0_stub.vhdl
-- Design      : design_1_spi28b_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_spi28b_0_0 is
  Port ( 
    spi_mosi : in STD_LOGIC;
    spi_miso : out STD_LOGIC;
    clk : in STD_LOGIC
  );

end design_1_spi28b_0_0;

architecture stub of design_1_spi28b_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "spi_mosi,spi_miso,clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "spi28b,Vivado 2019.1";
begin
end;
