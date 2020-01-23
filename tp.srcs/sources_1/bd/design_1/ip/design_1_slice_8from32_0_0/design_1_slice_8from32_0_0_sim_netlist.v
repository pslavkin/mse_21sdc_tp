// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Jan 22 02:21:08 2020
// Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/pslavkin/mse_3_21sdc/tp/tp.srcs/sources_1/bd/design_1/ip/design_1_slice_8from32_0_0/design_1_slice_8from32_0_0_sim_netlist.v
// Design      : design_1_slice_8from32_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_slice_8from32_0_0,slice_8from32,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "slice_8from32,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_slice_8from32_0_0
   (m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tready,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tready,
    m_axis_config_tdata,
    m_axis_config_tvalid,
    m_axis_config_tready,
    clk,
    rst);
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2047} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2047} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xn_re {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_re} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2031} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 64} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 15} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}} field_xn_im {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_im} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2031} bitoffset {attribs {resolve_type generated dependency xn_im_offset format long minimum {} maximum {}} value 16} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 64} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 15} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xk_index {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xk_index} enabled {attribs {resolve_type generated dependency xk_index_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xk_index_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_blk_exp {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value blk_exp} enabled {attribs {resolve_type generated dependency blk_exp_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type generated dependency blk_exp_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} field_ovflo {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ovflo} enabled {attribs {resolve_type generated dependency ovflo_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type generated dependency ovflo_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) input [31:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_config TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_config_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_config TVALID" *) output m_axis_config_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_config TREADY" *) input m_axis_config_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:m_axis_config:s_axis, ASSOCIATED_RESET rst, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire \<const1> ;
  wire clk;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rst;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_config_tdata[7] = \<const1> ;
  assign m_axis_config_tdata[6] = \<const1> ;
  assign m_axis_config_tdata[5] = \<const1> ;
  assign m_axis_config_tdata[4] = \<const1> ;
  assign m_axis_config_tdata[3] = \<const1> ;
  assign m_axis_config_tdata[2] = \<const1> ;
  assign m_axis_config_tdata[1] = \<const1> ;
  assign m_axis_config_tdata[0] = \<const1> ;
  assign m_axis_config_tvalid = \<const1> ;
  design_1_slice_8from32_0_0_slice_8from32 U0
       (.clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .rst(rst),
        .s_axis_tdata({s_axis_tdata[30:16],s_axis_tdata[14:0]}),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .state_reg_0(m_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "slice_8from32" *) 
module design_1_slice_8from32_0_0_slice_8from32
   (m_axis_tdata,
    state_reg_0,
    s_axis_tready,
    clk,
    rst,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tdata);
  output [7:0]m_axis_tdata;
  output state_reg_0;
  output s_axis_tready;
  input clk;
  input rst;
  input m_axis_tready;
  input s_axis_tvalid;
  input [29:0]s_axis_tdata;

  wire bitCounter;
  wire \bitCounter[5]_i_1_n_0 ;
  wire [5:0]bitCounter_reg;
  wire clk;
  wire [7:0]m_axis_tdata;
  wire \m_axis_tdata[0]_i_2_n_0 ;
  wire \m_axis_tdata[1]_i_2_n_0 ;
  wire \m_axis_tdata[2]_i_2_n_0 ;
  wire \m_axis_tdata[3]_i_2_n_0 ;
  wire \m_axis_tdata[4]_i_2_n_0 ;
  wire \m_axis_tdata[5]_i_2_n_0 ;
  wire \m_axis_tdata[6]_i_2_n_0 ;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_2_n_0 ;
  wire \m_axis_tdata[7]_i_4_n_0 ;
  wire \m_axis_tdata[7]_i_5_n_0 ;
  wire \m_axis_tdata[7]_i_6_n_0 ;
  wire \m_axis_tdata[7]_i_7_n_0 ;
  wire m_axis_tready;
  wire [5:0]p_0_in;
  wire [7:0]p_2_in;
  wire rst;
  wire [29:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tready_i_1_n_0;
  wire s_axis_tready_i_2_n_0;
  wire s_axis_tvalid;
  wire state_i_1_n_0;
  wire state_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    \bitCounter[0]_i_1 
       (.I0(bitCounter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bitCounter[1]_i_1 
       (.I0(bitCounter_reg[0]),
        .I1(bitCounter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bitCounter[2]_i_1 
       (.I0(bitCounter_reg[0]),
        .I1(bitCounter_reg[1]),
        .I2(bitCounter_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bitCounter[3]_i_1 
       (.I0(bitCounter_reg[1]),
        .I1(bitCounter_reg[0]),
        .I2(bitCounter_reg[2]),
        .I3(bitCounter_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bitCounter[4]_i_1 
       (.I0(bitCounter_reg[2]),
        .I1(bitCounter_reg[0]),
        .I2(bitCounter_reg[1]),
        .I3(bitCounter_reg[3]),
        .I4(bitCounter_reg[4]),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'h20)) 
    \bitCounter[5]_i_1 
       (.I0(rst),
        .I1(state_reg_0),
        .I2(s_axis_tvalid),
        .O(\bitCounter[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bitCounter[5]_i_2 
       (.I0(rst),
        .I1(m_axis_tready),
        .I2(state_reg_0),
        .O(bitCounter));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bitCounter[5]_i_3 
       (.I0(bitCounter_reg[3]),
        .I1(bitCounter_reg[1]),
        .I2(bitCounter_reg[0]),
        .I3(bitCounter_reg[2]),
        .I4(bitCounter_reg[4]),
        .I5(bitCounter_reg[5]),
        .O(p_0_in[5]));
  FDRE \bitCounter_reg[0] 
       (.C(clk),
        .CE(bitCounter),
        .D(p_0_in[0]),
        .Q(bitCounter_reg[0]),
        .R(\bitCounter[5]_i_1_n_0 ));
  FDRE \bitCounter_reg[1] 
       (.C(clk),
        .CE(bitCounter),
        .D(p_0_in[1]),
        .Q(bitCounter_reg[1]),
        .R(\bitCounter[5]_i_1_n_0 ));
  FDRE \bitCounter_reg[2] 
       (.C(clk),
        .CE(bitCounter),
        .D(p_0_in[2]),
        .Q(bitCounter_reg[2]),
        .R(\bitCounter[5]_i_1_n_0 ));
  FDRE \bitCounter_reg[3] 
       (.C(clk),
        .CE(bitCounter),
        .D(p_0_in[3]),
        .Q(bitCounter_reg[3]),
        .R(\bitCounter[5]_i_1_n_0 ));
  FDRE \bitCounter_reg[4] 
       (.C(clk),
        .CE(bitCounter),
        .D(p_0_in[4]),
        .Q(bitCounter_reg[4]),
        .R(\bitCounter[5]_i_1_n_0 ));
  FDRE \bitCounter_reg[5] 
       (.C(clk),
        .CE(bitCounter),
        .D(p_0_in[5]),
        .Q(bitCounter_reg[5]),
        .R(\bitCounter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[0]_i_1 
       (.I0(\m_axis_tdata[0]_i_2_n_0 ),
        .I1(state_reg_0),
        .I2(s_axis_tdata[23]),
        .O(p_2_in[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[0]_i_2 
       (.I0(s_axis_tdata[15]),
        .I1(\m_axis_tdata[7]_i_5_n_0 ),
        .I2(s_axis_tdata[8]),
        .I3(\m_axis_tdata[7]_i_7_n_0 ),
        .I4(s_axis_tdata[0]),
        .O(\m_axis_tdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[1]_i_1 
       (.I0(\m_axis_tdata[1]_i_2_n_0 ),
        .I1(state_reg_0),
        .I2(s_axis_tdata[24]),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[1]_i_2 
       (.I0(s_axis_tdata[16]),
        .I1(\m_axis_tdata[7]_i_5_n_0 ),
        .I2(s_axis_tdata[9]),
        .I3(\m_axis_tdata[7]_i_7_n_0 ),
        .I4(s_axis_tdata[1]),
        .O(\m_axis_tdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[2]_i_1 
       (.I0(\m_axis_tdata[2]_i_2_n_0 ),
        .I1(state_reg_0),
        .I2(s_axis_tdata[25]),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[2]_i_2 
       (.I0(s_axis_tdata[17]),
        .I1(\m_axis_tdata[7]_i_5_n_0 ),
        .I2(s_axis_tdata[10]),
        .I3(\m_axis_tdata[7]_i_7_n_0 ),
        .I4(s_axis_tdata[2]),
        .O(\m_axis_tdata[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[3]_i_1 
       (.I0(\m_axis_tdata[3]_i_2_n_0 ),
        .I1(state_reg_0),
        .I2(s_axis_tdata[26]),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[3]_i_2 
       (.I0(s_axis_tdata[18]),
        .I1(\m_axis_tdata[7]_i_5_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\m_axis_tdata[7]_i_7_n_0 ),
        .I4(s_axis_tdata[3]),
        .O(\m_axis_tdata[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[4]_i_1 
       (.I0(\m_axis_tdata[4]_i_2_n_0 ),
        .I1(state_reg_0),
        .I2(s_axis_tdata[27]),
        .O(p_2_in[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[4]_i_2 
       (.I0(s_axis_tdata[19]),
        .I1(\m_axis_tdata[7]_i_5_n_0 ),
        .I2(s_axis_tdata[12]),
        .I3(\m_axis_tdata[7]_i_7_n_0 ),
        .I4(s_axis_tdata[4]),
        .O(\m_axis_tdata[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[5]_i_1 
       (.I0(\m_axis_tdata[5]_i_2_n_0 ),
        .I1(state_reg_0),
        .I2(s_axis_tdata[28]),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[5]_i_2 
       (.I0(s_axis_tdata[20]),
        .I1(\m_axis_tdata[7]_i_5_n_0 ),
        .I2(s_axis_tdata[13]),
        .I3(\m_axis_tdata[7]_i_7_n_0 ),
        .I4(s_axis_tdata[5]),
        .O(\m_axis_tdata[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[6]_i_1 
       (.I0(\m_axis_tdata[6]_i_2_n_0 ),
        .I1(state_reg_0),
        .I2(s_axis_tdata[29]),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[6]_i_2 
       (.I0(s_axis_tdata[21]),
        .I1(\m_axis_tdata[7]_i_5_n_0 ),
        .I2(s_axis_tdata[14]),
        .I3(\m_axis_tdata[7]_i_7_n_0 ),
        .I4(s_axis_tdata[6]),
        .O(\m_axis_tdata[6]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[7]_i_1 
       (.I0(rst),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8FFA800)) 
    \m_axis_tdata[7]_i_2 
       (.I0(m_axis_tready),
        .I1(\m_axis_tdata[7]_i_4_n_0 ),
        .I2(\m_axis_tdata[7]_i_5_n_0 ),
        .I3(state_reg_0),
        .I4(s_axis_tvalid),
        .O(\m_axis_tdata[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[7]_i_3 
       (.I0(\m_axis_tdata[7]_i_6_n_0 ),
        .I1(state_reg_0),
        .I2(s_axis_tdata[29]),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'h0000000000000014)) 
    \m_axis_tdata[7]_i_4 
       (.I0(bitCounter_reg[2]),
        .I1(bitCounter_reg[1]),
        .I2(bitCounter_reg[0]),
        .I3(bitCounter_reg[5]),
        .I4(bitCounter_reg[4]),
        .I5(bitCounter_reg[3]),
        .O(\m_axis_tdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m_axis_tdata[7]_i_5 
       (.I0(bitCounter_reg[3]),
        .I1(bitCounter_reg[4]),
        .I2(bitCounter_reg[5]),
        .I3(bitCounter_reg[1]),
        .I4(bitCounter_reg[0]),
        .I5(bitCounter_reg[2]),
        .O(\m_axis_tdata[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[7]_i_6 
       (.I0(s_axis_tdata[22]),
        .I1(\m_axis_tdata[7]_i_5_n_0 ),
        .I2(s_axis_tdata[14]),
        .I3(\m_axis_tdata[7]_i_7_n_0 ),
        .I4(s_axis_tdata[7]),
        .O(\m_axis_tdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \m_axis_tdata[7]_i_7 
       (.I0(bitCounter_reg[3]),
        .I1(bitCounter_reg[4]),
        .I2(bitCounter_reg[5]),
        .I3(bitCounter_reg[1]),
        .I4(bitCounter_reg[0]),
        .I5(bitCounter_reg[2]),
        .O(\m_axis_tdata[7]_i_7_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(m_axis_tdata[0]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(m_axis_tdata[1]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(m_axis_tdata[2]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(m_axis_tdata[3]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(m_axis_tdata[4]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(m_axis_tdata[5]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(m_axis_tdata[6]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(m_axis_tdata[7]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE222FFFF)) 
    s_axis_tready_i_1
       (.I0(s_axis_tready),
        .I1(s_axis_tready_i_2_n_0),
        .I2(m_axis_tready),
        .I3(state_reg_0),
        .I4(rst),
        .O(s_axis_tready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    s_axis_tready_i_2
       (.I0(m_axis_tready),
        .I1(\m_axis_tdata[7]_i_5_n_0 ),
        .I2(\m_axis_tdata[7]_i_4_n_0 ),
        .I3(state_reg_0),
        .I4(s_axis_tvalid),
        .O(s_axis_tready_i_2_n_0));
  FDRE s_axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axis_tready_i_1_n_0),
        .Q(s_axis_tready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEE2EEEE00000000)) 
    state_i_1
       (.I0(s_axis_tvalid),
        .I1(state_reg_0),
        .I2(\m_axis_tdata[7]_i_4_n_0 ),
        .I3(\m_axis_tdata[7]_i_5_n_0 ),
        .I4(m_axis_tready),
        .I5(rst),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state_reg_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
