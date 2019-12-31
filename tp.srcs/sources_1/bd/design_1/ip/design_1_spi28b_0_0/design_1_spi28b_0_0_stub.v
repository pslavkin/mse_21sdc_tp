// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Dec 31 11:26:07 2019
// Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub
//               /home/pslavkin/mse_3_21sdc/tp/tp.srcs/sources_1/bd/design_1/ip/design_1_spi28b_0_0/design_1_spi28b_0_0_stub.v
// Design      : design_1_spi28b_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "spi28b,Vivado 2019.1" *)
module design_1_spi28b_0_0(spi_mosi, stop_data, spi_miso, cs, outData, inData, 
  ledsData, spi_clk, sys_clk)
/* synthesis syn_black_box black_box_pad_pin="spi_mosi,stop_data,spi_miso,cs,outData[7:0],inData[7:0],ledsData[3:0],spi_clk,sys_clk" */;
  input spi_mosi;
  output stop_data;
  output spi_miso;
  input cs;
  output [7:0]outData;
  input [7:0]inData;
  output [3:0]ledsData;
  input spi_clk;
  input sys_clk;
endmodule
