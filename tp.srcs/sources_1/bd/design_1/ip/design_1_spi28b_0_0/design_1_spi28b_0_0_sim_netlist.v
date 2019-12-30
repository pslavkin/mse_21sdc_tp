// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Dec 30 09:24:46 2019
// Host        : work1 running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/pslavkin/mse_3_21sdc/tp/tp.srcs/sources_1/bd/design_1/ip/design_1_spi28b_0_0/design_1_spi28b_0_0_sim_netlist.v
// Design      : design_1_spi28b_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_spi28b_0_0,spi28b,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "spi28b,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_spi28b_0_0
   (spi_mosi,
    spi_miso,
    cs,
    outData,
    inData,
    ledsData,
    clk);
  input spi_mosi;
  output spi_miso;
  input cs;
  output [7:0]outData;
  input [7:0]inData;
  output [3:0]ledsData;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;

  wire clk;
  wire cs;
  wire [7:0]inData;
  wire [2:0]\^ledsData ;
  wire [7:3]\^outData ;
  wire spi_miso;
  wire spi_mosi;

  assign ledsData[3] = cs;
  assign ledsData[2:0] = \^ledsData [2:0];
  assign outData[7:3] = \^outData [7:3];
  assign outData[2:0] = \^ledsData [2:0];
  design_1_spi28b_0_0_spi28b U0
       (.clk(clk),
        .cs(cs),
        .inData(inData),
        .outData({\^outData ,\^ledsData }),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi));
endmodule

(* ORIG_REF_NAME = "spi28b" *) 
module design_1_spi28b_0_0_spi28b
   (spi_miso,
    outData,
    inData,
    cs,
    clk,
    spi_mosi);
  output spi_miso;
  output [7:0]outData;
  input [7:0]inData;
  input cs;
  input clk;
  input spi_mosi;

  wire clk;
  wire [2:0]count_reg;
  wire cs;
  wire [7:0]inData;
  wire [7:0]misoSignal;
  wire [1:0]mosiSignal;
  wire \mosiSignal_reg_n_0_[6] ;
  wire [7:0]outData;
  wire [2:0]p_0_in;
  wire [6:3]p_1_in;
  wire [2:2]p_3_out;
  wire spi_miso;
  wire spi_miso_i_1_n_0;
  wire spi_miso_i_3_n_0;
  wire spi_miso_i_4_n_0;
  wire spi_miso_reg_i_2_n_0;
  wire spi_mosi;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(p_0_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .CLR(cs),
        .D(p_0_in[0]),
        .Q(count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .CLR(cs),
        .D(p_0_in[1]),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .CLR(cs),
        .D(p_0_in[2]),
        .Q(count_reg[2]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \misoSignal_reg[0] 
       (.C(cs),
        .CE(1'b1),
        .D(inData[0]),
        .Q(misoSignal[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \misoSignal_reg[1] 
       (.C(cs),
        .CE(1'b1),
        .D(inData[1]),
        .Q(misoSignal[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \misoSignal_reg[2] 
       (.C(cs),
        .CE(1'b1),
        .D(inData[2]),
        .Q(misoSignal[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \misoSignal_reg[3] 
       (.C(cs),
        .CE(1'b1),
        .D(inData[3]),
        .Q(misoSignal[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \misoSignal_reg[4] 
       (.C(cs),
        .CE(1'b1),
        .D(inData[4]),
        .Q(misoSignal[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \misoSignal_reg[5] 
       (.C(cs),
        .CE(1'b1),
        .D(inData[5]),
        .Q(misoSignal[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \misoSignal_reg[6] 
       (.C(cs),
        .CE(1'b1),
        .D(inData[6]),
        .Q(misoSignal[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \misoSignal_reg[7] 
       (.C(cs),
        .CE(1'b1),
        .D(inData[7]),
        .Q(misoSignal[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[0] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(spi_mosi),
        .Q(mosiSignal[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[1] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(mosiSignal[0]),
        .Q(mosiSignal[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[2] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(mosiSignal[1]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[3] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(p_1_in[3]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[4] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(p_1_in[4]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[5] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(p_1_in[5]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[6] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(p_1_in[6]),
        .Q(\mosiSignal_reg_n_0_[6] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \outData[7]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(cs),
        .O(p_3_out));
  FDRE \outData_reg[0] 
       (.C(clk),
        .CE(p_3_out),
        .D(spi_mosi),
        .Q(outData[0]),
        .R(1'b0));
  FDRE \outData_reg[1] 
       (.C(clk),
        .CE(p_3_out),
        .D(mosiSignal[0]),
        .Q(outData[1]),
        .R(1'b0));
  FDRE \outData_reg[2] 
       (.C(clk),
        .CE(p_3_out),
        .D(mosiSignal[1]),
        .Q(outData[2]),
        .R(1'b0));
  FDRE \outData_reg[3] 
       (.C(clk),
        .CE(p_3_out),
        .D(p_1_in[3]),
        .Q(outData[3]),
        .R(1'b0));
  FDRE \outData_reg[4] 
       (.C(clk),
        .CE(p_3_out),
        .D(p_1_in[4]),
        .Q(outData[4]),
        .R(1'b0));
  FDRE \outData_reg[5] 
       (.C(clk),
        .CE(p_3_out),
        .D(p_1_in[5]),
        .Q(outData[5]),
        .R(1'b0));
  FDRE \outData_reg[6] 
       (.C(clk),
        .CE(p_3_out),
        .D(p_1_in[6]),
        .Q(outData[6]),
        .R(1'b0));
  FDRE \outData_reg[7] 
       (.C(clk),
        .CE(p_3_out),
        .D(\mosiSignal_reg_n_0_[6] ),
        .Q(outData[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    spi_miso_i_1
       (.I0(cs),
        .O(spi_miso_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    spi_miso_i_3
       (.I0(misoSignal[4]),
        .I1(misoSignal[5]),
        .I2(count_reg[1]),
        .I3(misoSignal[6]),
        .I4(count_reg[0]),
        .I5(misoSignal[7]),
        .O(spi_miso_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    spi_miso_i_4
       (.I0(misoSignal[0]),
        .I1(misoSignal[1]),
        .I2(count_reg[1]),
        .I3(misoSignal[2]),
        .I4(count_reg[0]),
        .I5(misoSignal[3]),
        .O(spi_miso_i_4_n_0));
  FDRE spi_miso_reg
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(spi_miso_reg_i_2_n_0),
        .Q(spi_miso),
        .R(1'b0));
  MUXF7 spi_miso_reg_i_2
       (.I0(spi_miso_i_3_n_0),
        .I1(spi_miso_i_4_n_0),
        .O(spi_miso_reg_i_2_n_0),
        .S(count_reg[2]));
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
