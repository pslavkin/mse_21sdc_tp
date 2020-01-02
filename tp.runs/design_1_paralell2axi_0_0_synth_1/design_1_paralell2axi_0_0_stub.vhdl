-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Jan  2 14:31:26 2020
-- Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_paralell2axi_0_0_stub.vhdl
-- Design      : design_1_paralell2axi_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "emi[31:0],emo[31:0],axi_m_tdata[7:0],axi_m_tvalid,axi_m_tlast,axi_m_tready,axi_s_tdata[7:0],axi_s_tvalid,axi_s_tlast,axi_s_tready,clk,leds[3:0],rst";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "paralell2axi,Vivado 2019.1";
begin
end;
