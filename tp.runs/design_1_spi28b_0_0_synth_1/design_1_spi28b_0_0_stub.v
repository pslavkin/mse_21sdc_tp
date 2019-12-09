// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Dec  9 01:49:33 2019
// Host        : work12 running 64-bit Ubuntu 19.04
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_spi28b_0_0_stub.v
// Design      : design_1_spi28b_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "spi28b,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(spi_mosi, spi_miso, cs, outData, inData, ledsData, 
  clk)
/* synthesis syn_black_box black_box_pad_pin="spi_mosi,spi_miso,cs,outData[7:0],inData[7:0],ledsData[3:0],clk" */;
  input spi_mosi;
  output spi_miso;
  input cs;
  output [7:0]outData;
  input [7:0]inData;
  output [3:0]ledsData;
  input clk;
endmodule
