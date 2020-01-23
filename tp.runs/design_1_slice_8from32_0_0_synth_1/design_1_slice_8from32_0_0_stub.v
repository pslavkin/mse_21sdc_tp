// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Jan 22 02:21:07 2020
// Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_slice_8from32_0_0_stub.v
// Design      : design_1_slice_8from32_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "slice_8from32,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(m_axis_tdata, m_axis_tvalid, m_axis_tlast, 
  m_axis_tready, s_axis_tdata, s_axis_tvalid, s_axis_tlast, s_axis_tready, 
  m_axis_config_tdata, m_axis_config_tvalid, m_axis_config_tready, clk, rst)
/* synthesis syn_black_box black_box_pad_pin="m_axis_tdata[7:0],m_axis_tvalid,m_axis_tlast,m_axis_tready,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tlast,s_axis_tready,m_axis_config_tdata[7:0],m_axis_config_tvalid,m_axis_config_tready,clk,rst" */;
  output [7:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input m_axis_tready;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;
  input s_axis_tlast;
  output s_axis_tready;
  output [7:0]m_axis_config_tdata;
  output m_axis_config_tvalid;
  input m_axis_config_tready;
  input clk;
  input rst;
endmodule
