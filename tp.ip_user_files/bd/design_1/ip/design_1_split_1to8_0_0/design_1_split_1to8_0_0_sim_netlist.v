// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sat Jan  4 18:32:23 2020
// Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/pslavkin/mse_3_21sdc/tp/tp.srcs/sources_1/bd/design_1/ip/design_1_split_1to8_0_0/design_1_split_1to8_0_0_sim_netlist.v
// Design      : design_1_split_1to8_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_split_1to8_0_0,split_1to8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "split_1to8,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_split_1to8_0_0
   (m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tready,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tready,
    clk,
    rst);
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET rst, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire \<const0> ;
  wire clk;
  wire [0:0]\^m_axis_tdata ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rst;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \^m_axis_tdata [0];
  GND GND
       (.G(\<const0> ));
  design_1_split_1to8_0_0_split_1to8 U0
       (.clk(clk),
        .m_axis_tdata(\^m_axis_tdata ),
        .m_axis_tready(m_axis_tready),
        .rst(rst),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .state_reg_0(m_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "split_1to8" *) 
module design_1_split_1to8_0_0_split_1to8
   (state_reg_0,
    s_axis_tready,
    m_axis_tdata,
    clk,
    m_axis_tready,
    rst,
    s_axis_tvalid,
    s_axis_tdata);
  output state_reg_0;
  output s_axis_tready;
  output [0:0]m_axis_tdata;
  input clk;
  input m_axis_tready;
  input rst;
  input s_axis_tvalid;
  input [7:0]s_axis_tdata;

  wire bitCounter;
  wire \bitCounter[0]_i_1_n_0 ;
  wire \bitCounter[1]_i_1_n_0 ;
  wire \bitCounter[2]_i_1_n_0 ;
  wire \bitCounter[3]_i_1_n_0 ;
  wire \bitCounter[3]_i_3_n_0 ;
  wire [3:0]bitCounter_reg;
  wire clk;
  wire [0:0]m_axis_tdata;
  wire \m_axis_tdata[0]_i_1_n_0 ;
  wire \m_axis_tdata[0]_i_4_n_0 ;
  wire \m_axis_tdata[0]_i_5_n_0 ;
  wire \m_axis_tdata[0]_i_6_n_0 ;
  wire \m_axis_tdata_reg[0]_i_3_n_0 ;
  wire m_axis_tready;
  wire p_1_out;
  wire rst;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tready_i_1_n_0;
  wire s_axis_tvalid;
  wire state_i_1_n_0;
  wire state_i_2_n_0;
  wire state_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bitCounter[0]_i_1 
       (.I0(bitCounter_reg[0]),
        .O(\bitCounter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bitCounter[1]_i_1 
       (.I0(bitCounter_reg[0]),
        .I1(bitCounter_reg[1]),
        .O(\bitCounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bitCounter[2]_i_1 
       (.I0(bitCounter_reg[2]),
        .I1(bitCounter_reg[1]),
        .I2(bitCounter_reg[0]),
        .O(\bitCounter[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \bitCounter[3]_i_1 
       (.I0(state_reg_0),
        .I1(s_axis_tvalid),
        .I2(rst),
        .O(\bitCounter[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bitCounter[3]_i_2 
       (.I0(state_reg_0),
        .I1(m_axis_tready),
        .I2(rst),
        .O(bitCounter));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bitCounter[3]_i_3 
       (.I0(bitCounter_reg[3]),
        .I1(bitCounter_reg[1]),
        .I2(bitCounter_reg[0]),
        .I3(bitCounter_reg[2]),
        .O(\bitCounter[3]_i_3_n_0 ));
  FDRE \bitCounter_reg[0] 
       (.C(clk),
        .CE(bitCounter),
        .D(\bitCounter[0]_i_1_n_0 ),
        .Q(bitCounter_reg[0]),
        .R(\bitCounter[3]_i_1_n_0 ));
  FDRE \bitCounter_reg[1] 
       (.C(clk),
        .CE(bitCounter),
        .D(\bitCounter[1]_i_1_n_0 ),
        .Q(bitCounter_reg[1]),
        .R(\bitCounter[3]_i_1_n_0 ));
  FDRE \bitCounter_reg[2] 
       (.C(clk),
        .CE(bitCounter),
        .D(\bitCounter[2]_i_1_n_0 ),
        .Q(bitCounter_reg[2]),
        .R(\bitCounter[3]_i_1_n_0 ));
  FDRE \bitCounter_reg[3] 
       (.C(clk),
        .CE(bitCounter),
        .D(\bitCounter[3]_i_3_n_0 ),
        .Q(bitCounter_reg[3]),
        .R(\bitCounter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \m_axis_tdata[0]_i_1 
       (.I0(m_axis_tdata),
        .I1(p_1_out),
        .I2(s_axis_tdata[0]),
        .I3(state_reg_0),
        .I4(\m_axis_tdata_reg[0]_i_3_n_0 ),
        .I5(rst),
        .O(\m_axis_tdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2D00FFFF2D000000)) 
    \m_axis_tdata[0]_i_2 
       (.I0(bitCounter_reg[2]),
        .I1(\m_axis_tdata[0]_i_4_n_0 ),
        .I2(bitCounter_reg[3]),
        .I3(m_axis_tready),
        .I4(state_reg_0),
        .I5(s_axis_tvalid),
        .O(p_1_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \m_axis_tdata[0]_i_4 
       (.I0(bitCounter_reg[1]),
        .I1(bitCounter_reg[0]),
        .O(\m_axis_tdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[0]_i_5 
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[2]),
        .I2(bitCounter_reg[0]),
        .I3(s_axis_tdata[3]),
        .I4(bitCounter_reg[1]),
        .I5(s_axis_tdata[1]),
        .O(\m_axis_tdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[0]_i_6 
       (.I0(s_axis_tdata[0]),
        .I1(s_axis_tdata[6]),
        .I2(bitCounter_reg[0]),
        .I3(s_axis_tdata[7]),
        .I4(bitCounter_reg[1]),
        .I5(s_axis_tdata[5]),
        .O(\m_axis_tdata[0]_i_6_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\m_axis_tdata[0]_i_1_n_0 ),
        .Q(m_axis_tdata),
        .R(1'b0));
  MUXF7 \m_axis_tdata_reg[0]_i_3 
       (.I0(\m_axis_tdata[0]_i_5_n_0 ),
        .I1(\m_axis_tdata[0]_i_6_n_0 ),
        .O(\m_axis_tdata_reg[0]_i_3_n_0 ),
        .S(bitCounter_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAA02020)) 
    s_axis_tready_i_1
       (.I0(rst),
        .I1(s_axis_tvalid),
        .I2(s_axis_tready),
        .I3(state_i_2_n_0),
        .I4(state_reg_0),
        .O(s_axis_tready_i_1_n_0));
  FDRE s_axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axis_tready_i_1_n_0),
        .Q(s_axis_tready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    state_i_1
       (.I0(s_axis_tvalid),
        .I1(state_reg_0),
        .I2(state_i_2_n_0),
        .I3(rst),
        .O(state_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    state_i_2
       (.I0(bitCounter_reg[2]),
        .I1(bitCounter_reg[0]),
        .I2(bitCounter_reg[1]),
        .I3(bitCounter_reg[3]),
        .I4(m_axis_tready),
        .O(state_i_2_n_0));
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