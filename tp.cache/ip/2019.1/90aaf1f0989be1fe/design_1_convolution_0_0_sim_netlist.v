// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Jan  2 08:32:33 2020
// Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_convolution_0_0_sim_netlist.v
// Design      : design_1_convolution_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_convolution_0_0,convolution_v9_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "convolution_v9_0_14,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_convolution_v9_0_14 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_convolution_v9_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_convolution_v9_0_14_viv a1
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
