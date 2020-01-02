// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Jan  2 14:31:27 2020
// Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_paralell2axi_0_0_sim_netlist.v
// Design      : design_1_paralell2axi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_paralell2axi_0_0,paralell2axi,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "paralell2axi,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (emi,
    emo,
    axi_m_tdata,
    axi_m_tvalid,
    axi_m_tlast,
    axi_m_tready,
    axi_s_tdata,
    axi_s_tvalid,
    axi_s_tlast,
    axi_s_tready,
    clk,
    leds,
    rst);
  input [31:0]emi;
  output [31:0]emo;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axi_m TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME axi_m, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]axi_m_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axi_m TVALID" *) output axi_m_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axi_m TLAST" *) output axi_m_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axi_m TREADY" *) input axi_m_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axi_s TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME axi_s, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data_out} bitwidth {attribs {resolve_type generated dependency data_out_bitwidth format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) input [7:0]axi_s_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axi_s TVALID" *) input axi_s_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axi_s TLAST" *) input axi_s_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 axi_s TREADY" *) output axi_s_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axi_m:axi_s, ASSOCIATED_RESET rst, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  output [3:0]leds;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire axi_m_tready;
  wire axi_m_tvalid;
  wire [7:0]axi_s_tdata;
  wire axi_s_tlast;
  wire axi_s_tready;
  wire axi_s_tvalid;
  wire clk;
  wire [31:0]emi;
  wire rst;

  assign axi_m_tdata[7:0] = emi[7:0];
  assign axi_m_tlast = emi[9];
  assign emo[12] = axi_s_tlast;
  assign emo[11] = axi_s_tvalid;
  assign emo[10] = axi_m_tready;
  assign emo[7:0] = axi_s_tdata;
  assign leds[3:0] = emi[17:14];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_paralell2axi U0
       (.axi_m_tvalid(axi_m_tvalid),
        .axi_s_tready(axi_s_tready),
        .clk(clk),
        .emi({emi[13],emi[8]}),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_paralell2axi
   (axi_m_tvalid,
    axi_s_tready,
    emi,
    rst,
    clk);
  output axi_m_tvalid;
  output axi_s_tready;
  input [1:0]emi;
  input rst;
  input clk;

  wire axi_m_tvalid;
  wire axi_m_tvalid_i_1_n_0;
  wire axi_s_tready;
  wire axi_s_tready_i_1_n_0;
  wire clk;
  wire [1:0]emi;
  wire last_m_valid;
  wire last_m_valid_i_1_n_0;
  wire last_s_ready;
  wire last_s_ready_i_1_n_0;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0EAA)) 
    axi_m_tvalid_i_1
       (.I0(axi_m_tvalid),
        .I1(emi[0]),
        .I2(last_m_valid),
        .I3(rst),
        .O(axi_m_tvalid_i_1_n_0));
  FDRE axi_m_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_m_tvalid_i_1_n_0),
        .Q(axi_m_tvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0EAA)) 
    axi_s_tready_i_1
       (.I0(axi_s_tready),
        .I1(emi[1]),
        .I2(last_s_ready),
        .I3(rst),
        .O(axi_s_tready_i_1_n_0));
  FDRE axi_s_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_s_tready_i_1_n_0),
        .Q(axi_s_tready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_m_valid_i_1
       (.I0(emi[0]),
        .I1(rst),
        .O(last_m_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_m_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_m_valid_i_1_n_0),
        .Q(last_m_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_s_ready_i_1
       (.I0(emi[1]),
        .I1(rst),
        .O(last_s_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_s_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_s_ready_i_1_n_0),
        .Q(last_s_ready),
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
