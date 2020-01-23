// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Jan 19 07:07:59 2020
// Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/pslavkin/mse_3_21sdc/tp/tp.srcs/sources_1/bd/design_1/ip/design_1_join_16from8_0_0/design_1_join_16from8_0_0_sim_netlist.v
// Design      : design_1_join_16from8_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_join_16from8_0_0,join_16from8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "join_16from8,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_join_16from8_0_0
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
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [15:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_config TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis_config, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_config_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_config TVALID" *) output m_axis_config_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_config TREADY" *) input m_axis_config_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:m_axis_config:s_axis, ASSOCIATED_RESET rst, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [15:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rst;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_config_tdata[7] = \<const0> ;
  assign m_axis_config_tdata[6] = \<const0> ;
  assign m_axis_config_tdata[5] = \<const0> ;
  assign m_axis_config_tdata[4] = \<const0> ;
  assign m_axis_config_tdata[3] = \<const0> ;
  assign m_axis_config_tdata[2] = \<const0> ;
  assign m_axis_config_tdata[1] = \<const0> ;
  assign m_axis_config_tdata[0] = \<const1> ;
  assign m_axis_config_tvalid = \<const1> ;
  GND GND
       (.G(\<const0> ));
  design_1_join_16from8_0_0_join_16from8 U0
       (.clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .rst(rst),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .state_reg_0(m_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "join_16from8" *) 
module design_1_join_16from8_0_0_join_16from8
   (m_axis_tdata,
    state_reg_0,
    s_axis_tready,
    s_axis_tdata,
    clk,
    s_axis_tvalid,
    rst,
    m_axis_tready);
  output [15:0]m_axis_tdata;
  output state_reg_0;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input clk;
  input s_axis_tvalid;
  input rst;
  input m_axis_tready;

  wire \bitCounter[0]_i_1_n_0 ;
  wire \bitCounter_reg_n_0_[0] ;
  wire clk;
  wire [15:0]m_axis_tdata;
  wire \m_axis_tdata[15]_i_1_n_0 ;
  wire \m_axis_tdata[15]_i_2_n_0 ;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire m_axis_tready;
  wire rst;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tready_i_1_n_0;
  wire s_axis_tvalid;
  wire state_i_1_n_0;
  wire state_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00E0A0E0)) 
    \bitCounter[0]_i_1 
       (.I0(\bitCounter_reg_n_0_[0] ),
        .I1(s_axis_tvalid),
        .I2(rst),
        .I3(state_reg_0),
        .I4(m_axis_tready),
        .O(\bitCounter[0]_i_1_n_0 ));
  FDRE \bitCounter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bitCounter[0]_i_1_n_0 ),
        .Q(\bitCounter_reg_n_0_[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[15]_i_1 
       (.I0(rst),
        .O(\m_axis_tdata[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \m_axis_tdata[15]_i_2 
       (.I0(state_reg_0),
        .I1(\bitCounter_reg_n_0_[0] ),
        .I2(s_axis_tvalid),
        .O(\m_axis_tdata[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \m_axis_tdata[7]_i_1 
       (.I0(s_axis_tvalid),
        .I1(state_reg_0),
        .I2(\bitCounter_reg_n_0_[0] ),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[0]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[10] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_2_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[10]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[11] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_2_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[11]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[12] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_2_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[12]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[13] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_2_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[13]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[14] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_2_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[14]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[15] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_2_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[15]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[1]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[2]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[3]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[4]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[5]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[6]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[7]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[8] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_2_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[8]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[9] 
       (.C(clk),
        .CE(\m_axis_tdata[15]_i_2_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[9]),
        .R(\m_axis_tdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF2AAA2AFFFFFFFF)) 
    s_axis_tready_i_1
       (.I0(s_axis_tready),
        .I1(s_axis_tvalid),
        .I2(\bitCounter_reg_n_0_[0] ),
        .I3(state_reg_0),
        .I4(m_axis_tready),
        .I5(rst),
        .O(s_axis_tready_i_1_n_0));
  FDRE s_axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axis_tready_i_1_n_0),
        .Q(s_axis_tready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h08F80000)) 
    state_i_1
       (.I0(s_axis_tvalid),
        .I1(\bitCounter_reg_n_0_[0] ),
        .I2(state_reg_0),
        .I3(m_axis_tready),
        .I4(rst),
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
