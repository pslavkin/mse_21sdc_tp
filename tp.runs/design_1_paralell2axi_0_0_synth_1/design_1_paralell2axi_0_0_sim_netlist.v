// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Jan  2 06:04:30 2020
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
    m_data,
    m_valid,
    m_last,
    m_ready,
    m_clk,
    m_clk_in,
    s_data,
    s_valid,
    s_last,
    s_ready,
    s_clk,
    s_clk_in,
    clk,
    leds,
    rst);
  input [31:0]emi;
  output [31:0]emo;
  output [7:0]m_data;
  output m_valid;
  output m_last;
  input m_ready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_paralell2axi_0_0_m_clk, INSERT_VIP 0" *) output m_clk;
  input m_clk_in;
  input [7:0]s_data;
  input s_valid;
  input s_last;
  output s_ready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_paralell2axi_0_0_s_clk, INSERT_VIP 0" *) output s_clk;
  input s_clk_in;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  output [3:0]leds;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output rst;

  wire clk;
  wire [31:0]emi;
  wire m_clk_in;
  wire m_ready;
  wire m_valid;
  wire s_clk_in;
  wire [7:0]s_data;
  wire s_last;
  wire s_ready;
  wire s_valid;

  assign emo[13] = s_last;
  assign emo[12] = s_valid;
  assign emo[11] = m_ready;
  assign emo[7:0] = s_data;
  assign leds[3] = s_clk_in;
  assign leds[2] = m_clk_in;
  assign leds[1:0] = emi[17:16];
  assign m_clk = emi[10];
  assign m_data[7:0] = emi[7:0];
  assign m_last = emi[9];
  assign rst = emi[20];
  assign s_clk = emi[14];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_paralell2axi U0
       (.clk(clk),
        .emi({emi[15],emi[8]}),
        .m_valid(m_valid),
        .s_ready(s_ready));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_paralell2axi
   (m_valid,
    s_ready,
    emi,
    clk);
  output m_valid;
  output s_ready;
  input [1:0]emi;
  input clk;

  wire clk;
  wire [1:0]emi;
  wire last_m_valid;
  wire last_s_ready;
  wire m_valid;
  wire m_valid_i_1_n_0;
  wire s_ready;
  wire s_ready_i_1_n_0;

  FDRE #(
    .INIT(1'b0)) 
    last_m_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(emi[0]),
        .Q(last_m_valid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    last_s_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(emi[1]),
        .Q(last_s_ready),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h32)) 
    m_valid_i_1
       (.I0(m_valid),
        .I1(last_m_valid),
        .I2(emi[0]),
        .O(m_valid_i_1_n_0));
  FDRE m_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_valid_i_1_n_0),
        .Q(m_valid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h32)) 
    s_ready_i_1
       (.I0(s_ready),
        .I1(last_s_ready),
        .I2(emi[1]),
        .O(s_ready_i_1_n_0));
  FDRE s_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_ready_i_1_n_0),
        .Q(s_ready),
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
