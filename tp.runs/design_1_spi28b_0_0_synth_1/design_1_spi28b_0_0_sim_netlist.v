// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Dec  9 01:49:33 2019
// Host        : work12 running 64-bit Ubuntu 19.04
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_spi28b_0_0_sim_netlist.v
// Design      : design_1_spi28b_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_spi28b_0_0,spi28b,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "spi28b,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  wire [3:0]ledsData;
  wire [7:4]\^outData ;
  wire spi_miso;
  wire spi_mosi;

  assign outData[7:4] = \^outData [7:4];
  assign outData[3:0] = ledsData;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi28b U0
       (.clk(clk),
        .cs(cs),
        .inData(inData),
        .outData({\^outData ,ledsData}),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi28b
   (spi_miso,
    outData,
    cs,
    clk,
    inData,
    spi_mosi);
  output spi_miso;
  output [7:0]outData;
  input cs;
  input clk;
  input [7:0]inData;
  input spi_mosi;

  wire \bit[0]_i_1_n_0 ;
  wire \bit[0]_i_3_n_0 ;
  wire [31:0]bit_reg;
  wire \bit_reg[0]_i_2_n_0 ;
  wire \bit_reg[0]_i_2_n_1 ;
  wire \bit_reg[0]_i_2_n_2 ;
  wire \bit_reg[0]_i_2_n_3 ;
  wire \bit_reg[0]_i_2_n_4 ;
  wire \bit_reg[0]_i_2_n_5 ;
  wire \bit_reg[0]_i_2_n_6 ;
  wire \bit_reg[0]_i_2_n_7 ;
  wire \bit_reg[12]_i_1_n_0 ;
  wire \bit_reg[12]_i_1_n_1 ;
  wire \bit_reg[12]_i_1_n_2 ;
  wire \bit_reg[12]_i_1_n_3 ;
  wire \bit_reg[12]_i_1_n_4 ;
  wire \bit_reg[12]_i_1_n_5 ;
  wire \bit_reg[12]_i_1_n_6 ;
  wire \bit_reg[12]_i_1_n_7 ;
  wire \bit_reg[16]_i_1_n_0 ;
  wire \bit_reg[16]_i_1_n_1 ;
  wire \bit_reg[16]_i_1_n_2 ;
  wire \bit_reg[16]_i_1_n_3 ;
  wire \bit_reg[16]_i_1_n_4 ;
  wire \bit_reg[16]_i_1_n_5 ;
  wire \bit_reg[16]_i_1_n_6 ;
  wire \bit_reg[16]_i_1_n_7 ;
  wire \bit_reg[20]_i_1_n_0 ;
  wire \bit_reg[20]_i_1_n_1 ;
  wire \bit_reg[20]_i_1_n_2 ;
  wire \bit_reg[20]_i_1_n_3 ;
  wire \bit_reg[20]_i_1_n_4 ;
  wire \bit_reg[20]_i_1_n_5 ;
  wire \bit_reg[20]_i_1_n_6 ;
  wire \bit_reg[20]_i_1_n_7 ;
  wire \bit_reg[24]_i_1_n_0 ;
  wire \bit_reg[24]_i_1_n_1 ;
  wire \bit_reg[24]_i_1_n_2 ;
  wire \bit_reg[24]_i_1_n_3 ;
  wire \bit_reg[24]_i_1_n_4 ;
  wire \bit_reg[24]_i_1_n_5 ;
  wire \bit_reg[24]_i_1_n_6 ;
  wire \bit_reg[24]_i_1_n_7 ;
  wire \bit_reg[28]_i_1_n_1 ;
  wire \bit_reg[28]_i_1_n_2 ;
  wire \bit_reg[28]_i_1_n_3 ;
  wire \bit_reg[28]_i_1_n_4 ;
  wire \bit_reg[28]_i_1_n_5 ;
  wire \bit_reg[28]_i_1_n_6 ;
  wire \bit_reg[28]_i_1_n_7 ;
  wire \bit_reg[4]_i_1_n_0 ;
  wire \bit_reg[4]_i_1_n_1 ;
  wire \bit_reg[4]_i_1_n_2 ;
  wire \bit_reg[4]_i_1_n_3 ;
  wire \bit_reg[4]_i_1_n_4 ;
  wire \bit_reg[4]_i_1_n_5 ;
  wire \bit_reg[4]_i_1_n_6 ;
  wire \bit_reg[4]_i_1_n_7 ;
  wire \bit_reg[8]_i_1_n_0 ;
  wire \bit_reg[8]_i_1_n_1 ;
  wire \bit_reg[8]_i_1_n_2 ;
  wire \bit_reg[8]_i_1_n_3 ;
  wire \bit_reg[8]_i_1_n_4 ;
  wire \bit_reg[8]_i_1_n_5 ;
  wire \bit_reg[8]_i_1_n_6 ;
  wire \bit_reg[8]_i_1_n_7 ;
  wire clk;
  wire cs;
  wire [7:0]inData;
  wire \misoSignal[0]_i_1_n_0 ;
  wire \misoSignal[1]_i_1_n_0 ;
  wire \misoSignal[2]_i_1_n_0 ;
  wire \misoSignal[3]_i_1_n_0 ;
  wire \misoSignal[4]_i_1_n_0 ;
  wire \misoSignal[5]_i_1_n_0 ;
  wire \misoSignal[6]_i_1_n_0 ;
  wire \misoSignal[7]_i_1_n_0 ;
  wire \misoSignal_reg_n_0_[0] ;
  wire \misoSignal_reg_n_0_[1] ;
  wire \misoSignal_reg_n_0_[2] ;
  wire \misoSignal_reg_n_0_[3] ;
  wire \misoSignal_reg_n_0_[4] ;
  wire \misoSignal_reg_n_0_[5] ;
  wire \misoSignal_reg_n_0_[6] ;
  wire \mosiSignal_reg_n_0_[0] ;
  wire \mosiSignal_reg_n_0_[1] ;
  wire \mosiSignal_reg_n_0_[2] ;
  wire \mosiSignal_reg_n_0_[3] ;
  wire \mosiSignal_reg_n_0_[4] ;
  wire \mosiSignal_reg_n_0_[5] ;
  wire \mosiSignal_reg_n_0_[6] ;
  wire \mosiSignal_reg_n_0_[7] ;
  wire [7:0]outData;
  wire \outData[7]_i_1_n_0 ;
  wire \outData[7]_i_2_n_0 ;
  wire \outData[7]_i_3_n_0 ;
  wire \outData[7]_i_4_n_0 ;
  wire \outData[7]_i_5_n_0 ;
  wire \outData[7]_i_6_n_0 ;
  wire \outData[7]_i_7_n_0 ;
  wire \outData[7]_i_8_n_0 ;
  wire \outData_reg[7]_i_10_n_0 ;
  wire \outData_reg[7]_i_10_n_1 ;
  wire \outData_reg[7]_i_10_n_2 ;
  wire \outData_reg[7]_i_10_n_3 ;
  wire \outData_reg[7]_i_10_n_4 ;
  wire \outData_reg[7]_i_10_n_5 ;
  wire \outData_reg[7]_i_10_n_6 ;
  wire \outData_reg[7]_i_10_n_7 ;
  wire \outData_reg[7]_i_11_n_2 ;
  wire \outData_reg[7]_i_11_n_3 ;
  wire \outData_reg[7]_i_11_n_5 ;
  wire \outData_reg[7]_i_11_n_6 ;
  wire \outData_reg[7]_i_11_n_7 ;
  wire \outData_reg[7]_i_12_n_0 ;
  wire \outData_reg[7]_i_12_n_1 ;
  wire \outData_reg[7]_i_12_n_2 ;
  wire \outData_reg[7]_i_12_n_3 ;
  wire \outData_reg[7]_i_12_n_4 ;
  wire \outData_reg[7]_i_12_n_5 ;
  wire \outData_reg[7]_i_12_n_6 ;
  wire \outData_reg[7]_i_12_n_7 ;
  wire \outData_reg[7]_i_13_n_0 ;
  wire \outData_reg[7]_i_13_n_1 ;
  wire \outData_reg[7]_i_13_n_2 ;
  wire \outData_reg[7]_i_13_n_3 ;
  wire \outData_reg[7]_i_13_n_4 ;
  wire \outData_reg[7]_i_13_n_5 ;
  wire \outData_reg[7]_i_13_n_6 ;
  wire \outData_reg[7]_i_13_n_7 ;
  wire \outData_reg[7]_i_14_n_0 ;
  wire \outData_reg[7]_i_14_n_1 ;
  wire \outData_reg[7]_i_14_n_2 ;
  wire \outData_reg[7]_i_14_n_3 ;
  wire \outData_reg[7]_i_14_n_4 ;
  wire \outData_reg[7]_i_14_n_5 ;
  wire \outData_reg[7]_i_14_n_6 ;
  wire \outData_reg[7]_i_14_n_7 ;
  wire \outData_reg[7]_i_15_n_0 ;
  wire \outData_reg[7]_i_15_n_1 ;
  wire \outData_reg[7]_i_15_n_2 ;
  wire \outData_reg[7]_i_15_n_3 ;
  wire \outData_reg[7]_i_15_n_4 ;
  wire \outData_reg[7]_i_15_n_5 ;
  wire \outData_reg[7]_i_15_n_6 ;
  wire \outData_reg[7]_i_15_n_7 ;
  wire \outData_reg[7]_i_16_n_0 ;
  wire \outData_reg[7]_i_16_n_1 ;
  wire \outData_reg[7]_i_16_n_2 ;
  wire \outData_reg[7]_i_16_n_3 ;
  wire \outData_reg[7]_i_16_n_4 ;
  wire \outData_reg[7]_i_16_n_5 ;
  wire \outData_reg[7]_i_16_n_6 ;
  wire \outData_reg[7]_i_16_n_7 ;
  wire \outData_reg[7]_i_9_n_0 ;
  wire \outData_reg[7]_i_9_n_1 ;
  wire \outData_reg[7]_i_9_n_2 ;
  wire \outData_reg[7]_i_9_n_3 ;
  wire \outData_reg[7]_i_9_n_4 ;
  wire \outData_reg[7]_i_9_n_5 ;
  wire \outData_reg[7]_i_9_n_6 ;
  wire \outData_reg[7]_i_9_n_7 ;
  wire p_1_in;
  wire spi_miso;
  wire spi_miso_i_1_n_0;
  wire spi_mosi;
  wire [3:3]\NLW_bit_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_outData_reg[7]_i_11_CO_UNCONNECTED ;
  wire [3:3]\NLW_outData_reg[7]_i_11_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \bit[0]_i_1 
       (.I0(cs),
        .I1(\outData[7]_i_2_n_0 ),
        .O(\bit[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit[0]_i_3 
       (.I0(bit_reg[0]),
        .O(\bit[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[0]_i_2_n_7 ),
        .Q(bit_reg[0]),
        .R(\bit[0]_i_1_n_0 ));
  CARRY4 \bit_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\bit_reg[0]_i_2_n_0 ,\bit_reg[0]_i_2_n_1 ,\bit_reg[0]_i_2_n_2 ,\bit_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\bit_reg[0]_i_2_n_4 ,\bit_reg[0]_i_2_n_5 ,\bit_reg[0]_i_2_n_6 ,\bit_reg[0]_i_2_n_7 }),
        .S({bit_reg[3:1],\bit[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[8]_i_1_n_5 ),
        .Q(bit_reg[10]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[8]_i_1_n_4 ),
        .Q(bit_reg[11]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[12]_i_1_n_7 ),
        .Q(bit_reg[12]),
        .R(\bit[0]_i_1_n_0 ));
  CARRY4 \bit_reg[12]_i_1 
       (.CI(\bit_reg[8]_i_1_n_0 ),
        .CO({\bit_reg[12]_i_1_n_0 ,\bit_reg[12]_i_1_n_1 ,\bit_reg[12]_i_1_n_2 ,\bit_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bit_reg[12]_i_1_n_4 ,\bit_reg[12]_i_1_n_5 ,\bit_reg[12]_i_1_n_6 ,\bit_reg[12]_i_1_n_7 }),
        .S(bit_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[12]_i_1_n_6 ),
        .Q(bit_reg[13]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[12]_i_1_n_5 ),
        .Q(bit_reg[14]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[12]_i_1_n_4 ),
        .Q(bit_reg[15]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[16]_i_1_n_7 ),
        .Q(bit_reg[16]),
        .R(\bit[0]_i_1_n_0 ));
  CARRY4 \bit_reg[16]_i_1 
       (.CI(\bit_reg[12]_i_1_n_0 ),
        .CO({\bit_reg[16]_i_1_n_0 ,\bit_reg[16]_i_1_n_1 ,\bit_reg[16]_i_1_n_2 ,\bit_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bit_reg[16]_i_1_n_4 ,\bit_reg[16]_i_1_n_5 ,\bit_reg[16]_i_1_n_6 ,\bit_reg[16]_i_1_n_7 }),
        .S(bit_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[16]_i_1_n_6 ),
        .Q(bit_reg[17]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[16]_i_1_n_5 ),
        .Q(bit_reg[18]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[16]_i_1_n_4 ),
        .Q(bit_reg[19]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[0]_i_2_n_6 ),
        .Q(bit_reg[1]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[20]_i_1_n_7 ),
        .Q(bit_reg[20]),
        .R(\bit[0]_i_1_n_0 ));
  CARRY4 \bit_reg[20]_i_1 
       (.CI(\bit_reg[16]_i_1_n_0 ),
        .CO({\bit_reg[20]_i_1_n_0 ,\bit_reg[20]_i_1_n_1 ,\bit_reg[20]_i_1_n_2 ,\bit_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bit_reg[20]_i_1_n_4 ,\bit_reg[20]_i_1_n_5 ,\bit_reg[20]_i_1_n_6 ,\bit_reg[20]_i_1_n_7 }),
        .S(bit_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[20]_i_1_n_6 ),
        .Q(bit_reg[21]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[20]_i_1_n_5 ),
        .Q(bit_reg[22]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[20]_i_1_n_4 ),
        .Q(bit_reg[23]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[24]_i_1_n_7 ),
        .Q(bit_reg[24]),
        .R(\bit[0]_i_1_n_0 ));
  CARRY4 \bit_reg[24]_i_1 
       (.CI(\bit_reg[20]_i_1_n_0 ),
        .CO({\bit_reg[24]_i_1_n_0 ,\bit_reg[24]_i_1_n_1 ,\bit_reg[24]_i_1_n_2 ,\bit_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bit_reg[24]_i_1_n_4 ,\bit_reg[24]_i_1_n_5 ,\bit_reg[24]_i_1_n_6 ,\bit_reg[24]_i_1_n_7 }),
        .S(bit_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[24]_i_1_n_6 ),
        .Q(bit_reg[25]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[24]_i_1_n_5 ),
        .Q(bit_reg[26]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[24]_i_1_n_4 ),
        .Q(bit_reg[27]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[28]_i_1_n_7 ),
        .Q(bit_reg[28]),
        .R(\bit[0]_i_1_n_0 ));
  CARRY4 \bit_reg[28]_i_1 
       (.CI(\bit_reg[24]_i_1_n_0 ),
        .CO({\NLW_bit_reg[28]_i_1_CO_UNCONNECTED [3],\bit_reg[28]_i_1_n_1 ,\bit_reg[28]_i_1_n_2 ,\bit_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bit_reg[28]_i_1_n_4 ,\bit_reg[28]_i_1_n_5 ,\bit_reg[28]_i_1_n_6 ,\bit_reg[28]_i_1_n_7 }),
        .S(bit_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[28]_i_1_n_6 ),
        .Q(bit_reg[29]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[0]_i_2_n_5 ),
        .Q(bit_reg[2]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[28]_i_1_n_5 ),
        .Q(bit_reg[30]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[28]_i_1_n_4 ),
        .Q(bit_reg[31]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[0]_i_2_n_4 ),
        .Q(bit_reg[3]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[4]_i_1_n_7 ),
        .Q(bit_reg[4]),
        .R(\bit[0]_i_1_n_0 ));
  CARRY4 \bit_reg[4]_i_1 
       (.CI(\bit_reg[0]_i_2_n_0 ),
        .CO({\bit_reg[4]_i_1_n_0 ,\bit_reg[4]_i_1_n_1 ,\bit_reg[4]_i_1_n_2 ,\bit_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bit_reg[4]_i_1_n_4 ,\bit_reg[4]_i_1_n_5 ,\bit_reg[4]_i_1_n_6 ,\bit_reg[4]_i_1_n_7 }),
        .S(bit_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[4]_i_1_n_6 ),
        .Q(bit_reg[5]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[4]_i_1_n_5 ),
        .Q(bit_reg[6]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[4]_i_1_n_4 ),
        .Q(bit_reg[7]),
        .R(\bit[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[8]_i_1_n_7 ),
        .Q(bit_reg[8]),
        .R(\bit[0]_i_1_n_0 ));
  CARRY4 \bit_reg[8]_i_1 
       (.CI(\bit_reg[4]_i_1_n_0 ),
        .CO({\bit_reg[8]_i_1_n_0 ,\bit_reg[8]_i_1_n_1 ,\bit_reg[8]_i_1_n_2 ,\bit_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bit_reg[8]_i_1_n_4 ,\bit_reg[8]_i_1_n_5 ,\bit_reg[8]_i_1_n_6 ,\bit_reg[8]_i_1_n_7 }),
        .S(bit_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_reg[8]_i_1_n_6 ),
        .Q(bit_reg[9]),
        .R(\bit[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \misoSignal[0]_i_1 
       (.I0(inData[0]),
        .I1(\outData[7]_i_2_n_0 ),
        .I2(cs),
        .I3(\misoSignal_reg_n_0_[0] ),
        .O(\misoSignal[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \misoSignal[1]_i_1 
       (.I0(inData[1]),
        .I1(\outData[7]_i_2_n_0 ),
        .I2(\misoSignal_reg_n_0_[0] ),
        .O(\misoSignal[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \misoSignal[2]_i_1 
       (.I0(inData[2]),
        .I1(\outData[7]_i_2_n_0 ),
        .I2(\misoSignal_reg_n_0_[1] ),
        .O(\misoSignal[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \misoSignal[3]_i_1 
       (.I0(inData[3]),
        .I1(\outData[7]_i_2_n_0 ),
        .I2(\misoSignal_reg_n_0_[2] ),
        .O(\misoSignal[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \misoSignal[4]_i_1 
       (.I0(inData[4]),
        .I1(\outData[7]_i_2_n_0 ),
        .I2(\misoSignal_reg_n_0_[3] ),
        .O(\misoSignal[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \misoSignal[5]_i_1 
       (.I0(inData[5]),
        .I1(\outData[7]_i_2_n_0 ),
        .I2(\misoSignal_reg_n_0_[4] ),
        .O(\misoSignal[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \misoSignal[6]_i_1 
       (.I0(inData[6]),
        .I1(\outData[7]_i_2_n_0 ),
        .I2(\misoSignal_reg_n_0_[5] ),
        .O(\misoSignal[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \misoSignal[7]_i_1 
       (.I0(inData[7]),
        .I1(\outData[7]_i_2_n_0 ),
        .I2(\misoSignal_reg_n_0_[6] ),
        .O(\misoSignal[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \misoSignal_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\misoSignal[0]_i_1_n_0 ),
        .Q(\misoSignal_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \misoSignal_reg[1] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\misoSignal[1]_i_1_n_0 ),
        .Q(\misoSignal_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \misoSignal_reg[2] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\misoSignal[2]_i_1_n_0 ),
        .Q(\misoSignal_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \misoSignal_reg[3] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\misoSignal[3]_i_1_n_0 ),
        .Q(\misoSignal_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \misoSignal_reg[4] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\misoSignal[4]_i_1_n_0 ),
        .Q(\misoSignal_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \misoSignal_reg[5] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\misoSignal[5]_i_1_n_0 ),
        .Q(\misoSignal_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \misoSignal_reg[6] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\misoSignal[6]_i_1_n_0 ),
        .Q(\misoSignal_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \misoSignal_reg[7] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\misoSignal[7]_i_1_n_0 ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[0] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(spi_mosi),
        .Q(\mosiSignal_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[1] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\mosiSignal_reg_n_0_[0] ),
        .Q(\mosiSignal_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[2] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\mosiSignal_reg_n_0_[1] ),
        .Q(\mosiSignal_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[3] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\mosiSignal_reg_n_0_[2] ),
        .Q(\mosiSignal_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[4] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\mosiSignal_reg_n_0_[3] ),
        .Q(\mosiSignal_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[5] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\mosiSignal_reg_n_0_[4] ),
        .Q(\mosiSignal_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[6] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\mosiSignal_reg_n_0_[5] ),
        .Q(\mosiSignal_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[7] 
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(\mosiSignal_reg_n_0_[6] ),
        .Q(\mosiSignal_reg_n_0_[7] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \outData[7]_i_1 
       (.I0(\outData[7]_i_2_n_0 ),
        .I1(cs),
        .O(\outData[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \outData[7]_i_2 
       (.I0(\outData[7]_i_3_n_0 ),
        .I1(\outData[7]_i_4_n_0 ),
        .I2(\outData[7]_i_5_n_0 ),
        .I3(\outData[7]_i_6_n_0 ),
        .I4(\outData[7]_i_7_n_0 ),
        .I5(\outData[7]_i_8_n_0 ),
        .O(\outData[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \outData[7]_i_3 
       (.I0(\outData_reg[7]_i_9_n_4 ),
        .I1(\outData_reg[7]_i_10_n_7 ),
        .I2(\outData_reg[7]_i_10_n_6 ),
        .I3(\outData_reg[7]_i_10_n_5 ),
        .I4(\outData_reg[7]_i_10_n_4 ),
        .I5(\outData_reg[7]_i_11_n_7 ),
        .O(\outData[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \outData[7]_i_4 
       (.I0(\outData_reg[7]_i_12_n_6 ),
        .I1(\outData_reg[7]_i_12_n_5 ),
        .I2(\outData_reg[7]_i_12_n_4 ),
        .I3(\outData_reg[7]_i_13_n_7 ),
        .I4(\outData_reg[7]_i_13_n_6 ),
        .I5(\outData_reg[7]_i_13_n_5 ),
        .O(\outData[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \outData[7]_i_5 
       (.I0(\outData_reg[7]_i_14_n_6 ),
        .I1(\outData_reg[7]_i_14_n_5 ),
        .I2(\outData_reg[7]_i_14_n_4 ),
        .I3(\outData_reg[7]_i_9_n_7 ),
        .I4(\outData_reg[7]_i_9_n_6 ),
        .I5(\outData_reg[7]_i_9_n_5 ),
        .O(\outData[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \outData[7]_i_6 
       (.I0(\outData_reg[7]_i_13_n_4 ),
        .I1(\outData_reg[7]_i_15_n_7 ),
        .I2(\outData_reg[7]_i_15_n_6 ),
        .I3(\outData_reg[7]_i_15_n_5 ),
        .I4(\outData_reg[7]_i_15_n_4 ),
        .I5(\outData_reg[7]_i_14_n_7 ),
        .O(\outData[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \outData[7]_i_7 
       (.I0(\outData_reg[7]_i_11_n_6 ),
        .I1(\outData_reg[7]_i_11_n_5 ),
        .O(\outData[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    \outData[7]_i_8 
       (.I0(\outData_reg[7]_i_16_n_7 ),
        .I1(\outData_reg[7]_i_16_n_6 ),
        .I2(bit_reg[0]),
        .I3(\outData_reg[7]_i_16_n_4 ),
        .I4(\outData_reg[7]_i_12_n_7 ),
        .I5(\outData_reg[7]_i_16_n_5 ),
        .O(\outData[7]_i_8_n_0 ));
  FDRE \outData_reg[0] 
       (.C(clk),
        .CE(\outData[7]_i_1_n_0 ),
        .D(\mosiSignal_reg_n_0_[0] ),
        .Q(outData[0]),
        .R(1'b0));
  FDRE \outData_reg[1] 
       (.C(clk),
        .CE(\outData[7]_i_1_n_0 ),
        .D(\mosiSignal_reg_n_0_[1] ),
        .Q(outData[1]),
        .R(1'b0));
  FDRE \outData_reg[2] 
       (.C(clk),
        .CE(\outData[7]_i_1_n_0 ),
        .D(\mosiSignal_reg_n_0_[2] ),
        .Q(outData[2]),
        .R(1'b0));
  FDRE \outData_reg[3] 
       (.C(clk),
        .CE(\outData[7]_i_1_n_0 ),
        .D(\mosiSignal_reg_n_0_[3] ),
        .Q(outData[3]),
        .R(1'b0));
  FDRE \outData_reg[4] 
       (.C(clk),
        .CE(\outData[7]_i_1_n_0 ),
        .D(\mosiSignal_reg_n_0_[4] ),
        .Q(outData[4]),
        .R(1'b0));
  FDRE \outData_reg[5] 
       (.C(clk),
        .CE(\outData[7]_i_1_n_0 ),
        .D(\mosiSignal_reg_n_0_[5] ),
        .Q(outData[5]),
        .R(1'b0));
  FDRE \outData_reg[6] 
       (.C(clk),
        .CE(\outData[7]_i_1_n_0 ),
        .D(\mosiSignal_reg_n_0_[6] ),
        .Q(outData[6]),
        .R(1'b0));
  FDRE \outData_reg[7] 
       (.C(clk),
        .CE(\outData[7]_i_1_n_0 ),
        .D(\mosiSignal_reg_n_0_[7] ),
        .Q(outData[7]),
        .R(1'b0));
  CARRY4 \outData_reg[7]_i_10 
       (.CI(\outData_reg[7]_i_9_n_0 ),
        .CO({\outData_reg[7]_i_10_n_0 ,\outData_reg[7]_i_10_n_1 ,\outData_reg[7]_i_10_n_2 ,\outData_reg[7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outData_reg[7]_i_10_n_4 ,\outData_reg[7]_i_10_n_5 ,\outData_reg[7]_i_10_n_6 ,\outData_reg[7]_i_10_n_7 }),
        .S(bit_reg[28:25]));
  CARRY4 \outData_reg[7]_i_11 
       (.CI(\outData_reg[7]_i_10_n_0 ),
        .CO({\NLW_outData_reg[7]_i_11_CO_UNCONNECTED [3:2],\outData_reg[7]_i_11_n_2 ,\outData_reg[7]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_outData_reg[7]_i_11_O_UNCONNECTED [3],\outData_reg[7]_i_11_n_5 ,\outData_reg[7]_i_11_n_6 ,\outData_reg[7]_i_11_n_7 }),
        .S({1'b0,bit_reg[31:29]}));
  CARRY4 \outData_reg[7]_i_12 
       (.CI(\outData_reg[7]_i_16_n_0 ),
        .CO({\outData_reg[7]_i_12_n_0 ,\outData_reg[7]_i_12_n_1 ,\outData_reg[7]_i_12_n_2 ,\outData_reg[7]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outData_reg[7]_i_12_n_4 ,\outData_reg[7]_i_12_n_5 ,\outData_reg[7]_i_12_n_6 ,\outData_reg[7]_i_12_n_7 }),
        .S(bit_reg[8:5]));
  CARRY4 \outData_reg[7]_i_13 
       (.CI(\outData_reg[7]_i_12_n_0 ),
        .CO({\outData_reg[7]_i_13_n_0 ,\outData_reg[7]_i_13_n_1 ,\outData_reg[7]_i_13_n_2 ,\outData_reg[7]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outData_reg[7]_i_13_n_4 ,\outData_reg[7]_i_13_n_5 ,\outData_reg[7]_i_13_n_6 ,\outData_reg[7]_i_13_n_7 }),
        .S(bit_reg[12:9]));
  CARRY4 \outData_reg[7]_i_14 
       (.CI(\outData_reg[7]_i_15_n_0 ),
        .CO({\outData_reg[7]_i_14_n_0 ,\outData_reg[7]_i_14_n_1 ,\outData_reg[7]_i_14_n_2 ,\outData_reg[7]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outData_reg[7]_i_14_n_4 ,\outData_reg[7]_i_14_n_5 ,\outData_reg[7]_i_14_n_6 ,\outData_reg[7]_i_14_n_7 }),
        .S(bit_reg[20:17]));
  CARRY4 \outData_reg[7]_i_15 
       (.CI(\outData_reg[7]_i_13_n_0 ),
        .CO({\outData_reg[7]_i_15_n_0 ,\outData_reg[7]_i_15_n_1 ,\outData_reg[7]_i_15_n_2 ,\outData_reg[7]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outData_reg[7]_i_15_n_4 ,\outData_reg[7]_i_15_n_5 ,\outData_reg[7]_i_15_n_6 ,\outData_reg[7]_i_15_n_7 }),
        .S(bit_reg[16:13]));
  CARRY4 \outData_reg[7]_i_16 
       (.CI(1'b0),
        .CO({\outData_reg[7]_i_16_n_0 ,\outData_reg[7]_i_16_n_1 ,\outData_reg[7]_i_16_n_2 ,\outData_reg[7]_i_16_n_3 }),
        .CYINIT(bit_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outData_reg[7]_i_16_n_4 ,\outData_reg[7]_i_16_n_5 ,\outData_reg[7]_i_16_n_6 ,\outData_reg[7]_i_16_n_7 }),
        .S(bit_reg[4:1]));
  CARRY4 \outData_reg[7]_i_9 
       (.CI(\outData_reg[7]_i_14_n_0 ),
        .CO({\outData_reg[7]_i_9_n_0 ,\outData_reg[7]_i_9_n_1 ,\outData_reg[7]_i_9_n_2 ,\outData_reg[7]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\outData_reg[7]_i_9_n_4 ,\outData_reg[7]_i_9_n_5 ,\outData_reg[7]_i_9_n_6 ,\outData_reg[7]_i_9_n_7 }),
        .S(bit_reg[24:21]));
  LUT1 #(
    .INIT(2'h1)) 
    spi_miso_i_1
       (.I0(cs),
        .O(spi_miso_i_1_n_0));
  FDRE spi_miso_reg
       (.C(clk),
        .CE(spi_miso_i_1_n_0),
        .D(p_1_in),
        .Q(spi_miso),
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
