// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Jan  2 08:32:32 2020
// Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_convolution_0_0 -prefix
//               design_1_convolution_0_0_ design_1_convolution_0_0_stub.v
// Design      : design_1_convolution_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "convolution_v9_0_14,Vivado 2019.1" *)
module design_1_convolution_0_0(aclk, aresetn, s_axis_data_tdata, 
  s_axis_data_tvalid, s_axis_data_tready, m_axis_data_tdata, m_axis_data_tvalid, 
  m_axis_data_tready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_data_tdata[7:0],s_axis_data_tvalid,s_axis_data_tready,m_axis_data_tdata[7:0],m_axis_data_tvalid,m_axis_data_tready" */;
  input aclk;
  input aresetn;
  input [7:0]s_axis_data_tdata;
  input s_axis_data_tvalid;
  output s_axis_data_tready;
  output [7:0]m_axis_data_tdata;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
endmodule
