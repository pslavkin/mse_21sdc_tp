// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Jan  2 08:32:33 2020
// Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_convolution_0_0 -prefix
//               design_1_convolution_0_0_ design_1_convolution_0_0_sim_netlist.v
// Design      : design_1_convolution_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_convolution_0_0,convolution_v9_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "convolution_v9_0_14,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_convolution_0_0
   (aclk,
    aresetn,
    s_axis_data_tdata,
    s_axis_data_tvalid,
    s_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_DATA:S_AXIS_DATA, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]s_axis_data_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) input s_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data_out} bitwidth {attribs {resolve_type generated dependency data_out_bitwidth format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0" *) output [7:0]m_axis_data_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TREADY" *) input m_axis_data_tready;

  wire aclk;
  wire aresetn;
  wire [7:0]m_axis_data_tdata;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire [7:0]s_axis_data_tdata;
  wire s_axis_data_tready;
  wire s_axis_data_tvalid;
  wire NLW_U0_event_s_data_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_data_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;

  (* C_CONVOLUTION_CODE0 = "79" *) 
  (* C_CONVOLUTION_CODE1 = "109" *) 
  (* C_CONVOLUTION_CODE2 = "3" *) 
  (* C_CONVOLUTION_CODE3 = "3" *) 
  (* C_CONVOLUTION_CODE4 = "3" *) 
  (* C_CONVOLUTION_CODE5 = "3" *) 
  (* C_CONVOLUTION_CODE6 = "3" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_M_AXIS_DATA_TREADY = "1" *) 
  (* C_PUNC_CODE0 = "0" *) 
  (* C_PUNC_CODE1 = "0" *) 
  (* c_constraint_length = "7" *) 
  (* c_dual_channel = "0" *) 
  (* c_output_rate = "2" *) 
  (* c_punc_input_rate = "1" *) 
  (* c_punc_output_rate = "2" *) 
  (* c_punctured = "0" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_convolution_0_0_convolution_v9_0_14 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(aresetn),
        .event_s_data_tlast_missing(NLW_U0_event_s_data_tlast_missing_UNCONNECTED),
        .event_s_data_tlast_unexpected(NLW_U0_event_s_data_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(m_axis_data_tready),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .s_axis_data_tdata(s_axis_data_tdata),
        .s_axis_data_tlast(1'b0),
        .s_axis_data_tready(s_axis_data_tready),
        .s_axis_data_tvalid(s_axis_data_tvalid));
endmodule

(* C_CONSTRAINT_LENGTH = "7" *) (* C_CONVOLUTION_CODE0 = "79" *) (* C_CONVOLUTION_CODE1 = "109" *) 
(* C_CONVOLUTION_CODE2 = "3" *) (* C_CONVOLUTION_CODE3 = "3" *) (* C_CONVOLUTION_CODE4 = "3" *) 
(* C_CONVOLUTION_CODE5 = "3" *) (* C_CONVOLUTION_CODE6 = "3" *) (* C_DUAL_CHANNEL = "0" *) 
(* C_HAS_ACLKEN = "0" *) (* C_HAS_M_AXIS_DATA_TREADY = "1" *) (* C_OUTPUT_RATE = "2" *) 
(* C_PUNCTURED = "0" *) (* C_PUNC_CODE0 = "0" *) (* C_PUNC_CODE1 = "0" *) 
(* C_PUNC_INPUT_RATE = "1" *) (* C_PUNC_OUTPUT_RATE = "2" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module design_1_convolution_0_0_convolution_v9_0_14
   (aclk,
    aresetn,
    aclken,
    s_axis_data_tdata,
    s_axis_data_tvalid,
    s_axis_data_tlast,
    s_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tlast,
    m_axis_data_tready,
    event_s_data_tlast_missing,
    event_s_data_tlast_unexpected);
  input aclk;
  input aresetn;
  input aclken;
  input [7:0]s_axis_data_tdata;
  input s_axis_data_tvalid;
  input s_axis_data_tlast;
  output s_axis_data_tready;
  output [7:0]m_axis_data_tdata;
  output m_axis_data_tvalid;
  output m_axis_data_tlast;
  input m_axis_data_tready;
  output event_s_data_tlast_missing;
  output event_s_data_tlast_unexpected;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [1:0]\^m_axis_data_tdata ;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire [7:0]s_axis_data_tdata;
  wire s_axis_data_tready;
  wire s_axis_data_tvalid;
  wire NLW_a1_event_s_data_tlast_missing_UNCONNECTED;
  wire NLW_a1_event_s_data_tlast_unexpected_UNCONNECTED;
  wire NLW_a1_m_axis_data_tlast_UNCONNECTED;
  wire [7:2]NLW_a1_m_axis_data_tdata_UNCONNECTED;

  assign event_s_data_tlast_missing = \<const0> ;
  assign event_s_data_tlast_unexpected = \<const0> ;
  assign m_axis_data_tdata[7] = \<const0> ;
  assign m_axis_data_tdata[6] = \<const0> ;
  assign m_axis_data_tdata[5] = \<const0> ;
  assign m_axis_data_tdata[4] = \<const0> ;
  assign m_axis_data_tdata[3] = \<const0> ;
  assign m_axis_data_tdata[2] = \<const0> ;
  assign m_axis_data_tdata[1:0] = \^m_axis_data_tdata [1:0];
  assign m_axis_data_tlast = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_CONVOLUTION_CODE0 = "79" *) 
  (* C_CONVOLUTION_CODE1 = "109" *) 
  (* C_CONVOLUTION_CODE2 = "3" *) 
  (* C_CONVOLUTION_CODE3 = "3" *) 
  (* C_CONVOLUTION_CODE4 = "3" *) 
  (* C_CONVOLUTION_CODE5 = "3" *) 
  (* C_CONVOLUTION_CODE6 = "3" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_M_AXIS_DATA_TREADY = "1" *) 
  (* C_PUNC_CODE0 = "0" *) 
  (* C_PUNC_CODE1 = "0" *) 
  (* c_constraint_length = "7" *) 
  (* c_dual_channel = "0" *) 
  (* c_output_rate = "2" *) 
  (* c_punc_input_rate = "1" *) 
  (* c_punc_output_rate = "2" *) 
  (* c_punctured = "0" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_convolution_0_0_convolution_v9_0_14_viv a1
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(aresetn),
        .event_s_data_tlast_missing(NLW_a1_event_s_data_tlast_missing_UNCONNECTED),
        .event_s_data_tlast_unexpected(NLW_a1_event_s_data_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata({NLW_a1_m_axis_data_tdata_UNCONNECTED[7:2],\^m_axis_data_tdata }),
        .m_axis_data_tlast(NLW_a1_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(m_axis_data_tready),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .s_axis_data_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_data_tdata[0]}),
        .s_axis_data_tlast(1'b0),
        .s_axis_data_tready(s_axis_data_tready),
        .s_axis_data_tvalid(s_axis_data_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dha/a+q3FYn0HVlark/dL9eKG5WFTs7ZZirNn2JiZyMDhD+yVf6YOVbeSUTbB59BHRuMRTe4HzMF
fb0dReVcmA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
L/ZWUhD7C1wMz9cuwn0TiUsK2zqZcBb7ft0zqxgdS/DBrX8d4UvO11L6mj4hlqYr4eSJsYayZYx6
9z3WLZv8ts+V58d5ow1lZp3/rBgg5wjNmEtVwPtkT36Il0TXjKVXRTRW8pgujZHbRCJmMdsI6ehy
B8jk5KaPa8BeDG31V90=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
prNGuml44BHYeOlEWt4UF/G5iqeBKYcKR7cDC7BlYe/+VQgAgOwzFUiQuH5qGN5IDtkYAw8fUWsX
DBY/QktpuaiTarC8x1H8FtTW8djc/WMz83EefgzjSPC4CfBmdsKhajVNRwaIxkbDn/m7DkNIxNqg
oGsIhNJM64YlEzAjdlsKmVZGh+C8AeyQYt3R6xKX9VX8phgCCfKWd/6ANwOk9zbI09xjsSWAlSny
KHmRF7eW37kBaGZmCKX3xWvo9ysIyr00HTEmf70GRSVAwdoXTdNM18UfxDoNNFbRSJxaAfmrysCV
B0L1uPFmvdZ0qyInVQ6pJogDdEyFJOWOjw1D6w==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EUhMVj01KRu+/d1BBnp5fozTKNc/iLzWR4cuQvtIjp1S4QppFBQLbv2niR66OIEPXGtWmg/C3bt7
S7eCJuk9ASctS5KkEOkqBlpP8QAFxBKF2uuG498unR+eG/low1R870bxI4+UL34+zpr1EBzeg1D1
Nfge4873tH8ERTI3EvM74yfhDWXR920MVAjCjBFGhJZSPrmaezLuvU0R8J2SCDMZ6Pw8leenxQI0
TuREcLnyLoDq1zXvjKwzemjPOnOH8E1CnfSKTqSyDLB+JZxvrMRqbCqCM13onR3UToK8s0Ii/geI
hFZZrV19JyfFvi2ZgRQtphySmAkrVv7oC29Nbg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SZFp62A/hKMXaqF+tV4TShGLMAi9E10qKJGW90/3jo/vBfLg7J2/TygMjEYRRy7JvszNgUFzY3LB
jP1rRKBpyan373Hbji7JayH9qj12Hz42uHNRQV8lKi1fHx3dsUU6ECqf2EHZJESSgAPeRv1gwlPv
mV/im1bLSuck+d21kO6pljVOJ0J7IAgNyx0q1pYq1Y0VKvA7sDwUAXPdqzZj6V8jKr7a1E5g8sgc
mgDBJzl4deilCuofpwA9fOKlAG86EHAm0QAZ0XAfih1UeZWn69s0y9vh4bBCAbY7OAqOpNfVao4G
FrcEywehMzx/b5V4ZXvUi0zO8Y5UjAXjbv9zYA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z2Bx0VTdG7Pi70pLCZP9uAOpM6jUBUJp3Ta1oJGurka+ma7qif/qxau8roqJBQtxRrM27OzMaE97
B4rcIrDF4U8IePphJsK37PQP0Yz2FByrdB32rjTDCj/2VpN7y1Z00JZi/35AAEn6fo10PlQ60zgT
24EzNmwwUQ3P7cQprtA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
feyINVT3xMfhjYK2dAdC1z/oYf/Ff2LPnheBDSSHmA5HbOuaEPmaVBN5H07klhyn9WUoSOMBoVZ/
wESscqFjNF8w7QIzSLEqvFj4k5dMi+/iV7e+Y/xsWW+IBVeuluuoj/N46erURJ7mVNjalWHVYSKN
51nYUOTEw4yuinyTGpEMM4X0Czvn/dMd1xi08MnAGAk55o97PNlCV0359gXOFsCEqKlM2QMp4IVP
qfOJHW/2oOOT4rVUMeTZ8+S7pin7ngkIGY4QWMfVl28l32xd9htKk4+6Hpc3zopZabnOByA5qj8E
02oLYpWgSyeUzLnyLwrCLtyuAYVn1Uiy4+XvKw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
olXBUFCJEWZCznpwFKb06pf18lOEN0TcOQAg8wNa45iNIAHnNWg6FOba498/SbOGPVit7VwwfP3f
BItfbu2iQJ+Hrf34Gnt6Zol6pXg3A5audEr+Dl0M2prXo13gBiP6IwFGDRBXeG0silvrWrj4UJiR
5V2f9Mypv0TnysVGyC/8nd268VrNdqAzc2ZMLvHg/Rh618H+nSD4LtdgVL+22Yqfc6Ypt7pygooj
UTDkRzYZu2ix9ZS+SziATq48hcoW8cmAjyPYTIEDkhm/g2DxnBRUye7XHn+A99N4NTJI9wBHOijM
5dm7hSwR7/KjWpvpmx1K9xrX8t962FIWgQA3pQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u/2fOPue/g9rhzkvuo20p/ydTfMNnH3MS/bZLTgAgSPbsjA5P7WhkSK+zfyKl6y0s+RcU1p5W9+c
qP6Dku8kaennIPHTxMcYMi0cr0I4wiPqneKa16zmlTFSUF1/zPFPk4Y45f6vCRpPfBAF5NCSmUbI
IStwZEN7JXjKKUBTdMV7ItrfdgXwsVz/aQDCVTjFXpIwfh2AG2P+SCTU/CsRSdoB8T4BQ02OyV44
OPQhY2r1loKE39dpYXd1mk3vU1OWwnClVuLOb4JooENix7U+XzmMqTmEx/bG5VgbudQwQ+rqvU5d
zAqCA7st1/O3UkXfPhPeB2u5+s3HgpkyTPowkA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22608)
`pragma protect data_block
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
Jzpd5Uge4Is0bj1NHbV01wBC1ga1C62B4w4=
`pragma protect end_protected
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
