// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Jan  2 06:04:30 2020
// Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub
//               /home/pslavkin/mse_3_21sdc/tp/tp.srcs/sources_1/bd/design_1/ip/design_1_paralell2axi_0_0/design_1_paralell2axi_0_0_stub.v
// Design      : design_1_paralell2axi_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "paralell2axi,Vivado 2019.1" *)
module design_1_paralell2axi_0_0(emi, emo, m_data, m_valid, m_last, m_ready, m_clk, 
  m_clk_in, s_data, s_valid, s_last, s_ready, s_clk, s_clk_in, clk, leds, rst)
/* synthesis syn_black_box black_box_pad_pin="emi[31:0],emo[31:0],m_data[7:0],m_valid,m_last,m_ready,m_clk,m_clk_in,s_data[7:0],s_valid,s_last,s_ready,s_clk,s_clk_in,clk,leds[3:0],rst" */;
  input [31:0]emi;
  output [31:0]emo;
  output [7:0]m_data;
  output m_valid;
  output m_last;
  input m_ready;
  output m_clk;
  input m_clk_in;
  input [7:0]s_data;
  input s_valid;
  input s_last;
  output s_ready;
  output s_clk;
  input s_clk_in;
  input clk;
  output [3:0]leds;
  output rst;
endmodule
