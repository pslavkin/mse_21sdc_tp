// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Jan  2 14:31:26 2020
// Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_paralell2axi_0_0_stub.v
// Design      : design_1_paralell2axi_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "paralell2axi,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(emi, emo, axi_m_tdata, axi_m_tvalid, axi_m_tlast, 
  axi_m_tready, axi_s_tdata, axi_s_tvalid, axi_s_tlast, axi_s_tready, clk, leds, rst)
/* synthesis syn_black_box black_box_pad_pin="emi[31:0],emo[31:0],axi_m_tdata[7:0],axi_m_tvalid,axi_m_tlast,axi_m_tready,axi_s_tdata[7:0],axi_s_tvalid,axi_s_tlast,axi_s_tready,clk,leds[3:0],rst" */;
  input [31:0]emi;
  output [31:0]emo;
  output [7:0]axi_m_tdata;
  output axi_m_tvalid;
  output axi_m_tlast;
  input axi_m_tready;
  input [7:0]axi_s_tdata;
  input axi_s_tvalid;
  input axi_s_tlast;
  output axi_s_tready;
  input clk;
  output [3:0]leds;
  input rst;
endmodule
