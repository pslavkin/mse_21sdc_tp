// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Dec 31 11:26:06 2019
// Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
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
    stop_data,
    spi_miso,
    cs,
    outData,
    inData,
    ledsData,
    spi_clk,
    sys_clk);
  input spi_mosi;
  output stop_data;
  output spi_miso;
  input cs;
  output [7:0]outData;
  input [7:0]inData;
  output [3:0]ledsData;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 spi_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input spi_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME sys_clk, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input sys_clk;

  wire cs;
  wire [7:0]inData;
  wire [1:0]\^ledsData ;
  wire [7:2]\^outData ;
  wire spi_clk;
  wire spi_miso;
  wire spi_mosi;
  wire stop_data;
  wire sys_clk;

  assign ledsData[3] = cs;
  assign ledsData[2] = stop_data;
  assign ledsData[1:0] = \^ledsData [1:0];
  assign outData[7:2] = \^outData [7:2];
  assign outData[1:0] = \^ledsData [1:0];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi28b U0
       (.cs(cs),
        .inData(inData),
        .outData({\^outData ,\^ledsData }),
        .spi_clk(spi_clk),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .stop_data(stop_data),
        .sys_clk(sys_clk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi28b
   (spi_miso,
    outData,
    stop_data,
    inData,
    cs,
    spi_clk,
    spi_mosi,
    sys_clk);
  output spi_miso;
  output [7:0]outData;
  output stop_data;
  input [7:0]inData;
  input cs;
  input spi_clk;
  input spi_mosi;
  input sys_clk;

  wire [2:0]count_reg;
  wire \counter[0]_i_1_n_0 ;
  wire [25:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[0]_i_3_n_0 ;
  wire \counter_reg[0]_i_3_n_1 ;
  wire \counter_reg[0]_i_3_n_2 ;
  wire \counter_reg[0]_i_3_n_3 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire cs;
  wire [7:0]inData;
  wire [7:0]misoSignal;
  wire [0:0]mosiSignal;
  wire \mosiSignal_reg_n_0_[6] ;
  wire [7:0]outData;
  wire [2:0]p_0_in;
  wire [25:0]p_0_in__0;
  wire [6:2]p_1_in;
  wire [1:1]p_3_out;
  wire spi_clk;
  wire spi_miso;
  wire spi_miso_i_1_n_0;
  wire spi_miso_i_3_n_0;
  wire spi_miso_i_4_n_0;
  wire spi_miso_reg_i_2_n_0;
  wire spi_mosi;
  wire stop_data;
  wire stop_state_i_1_n_0;
  wire stop_state_i_2_n_0;
  wire stop_state_i_3_n_0;
  wire stop_state_i_4_n_0;
  wire stop_state_i_5_n_0;
  wire stop_state_i_6_n_0;
  wire stop_state_reg_i_10_n_0;
  wire stop_state_reg_i_10_n_1;
  wire stop_state_reg_i_10_n_2;
  wire stop_state_reg_i_10_n_3;
  wire stop_state_reg_i_12_n_0;
  wire stop_state_reg_i_12_n_1;
  wire stop_state_reg_i_12_n_2;
  wire stop_state_reg_i_12_n_3;
  wire stop_state_reg_i_7_n_0;
  wire stop_state_reg_i_7_n_1;
  wire stop_state_reg_i_7_n_2;
  wire stop_state_reg_i_7_n_3;
  wire stop_state_reg_i_8_n_0;
  wire stop_state_reg_i_8_n_1;
  wire stop_state_reg_i_8_n_2;
  wire stop_state_reg_i_8_n_3;
  wire stop_state_reg_i_9_n_0;
  wire stop_state_reg_i_9_n_1;
  wire stop_state_reg_i_9_n_2;
  wire stop_state_reg_i_9_n_3;
  wire sys_clk;
  wire [3:1]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_stop_state_reg_i_11_CO_UNCONNECTED;
  wire [3:1]NLW_stop_state_reg_i_11_O_UNCONNECTED;

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
       (.C(spi_clk),
        .CE(spi_miso_i_1_n_0),
        .CLR(cs),
        .D(p_0_in[0]),
        .Q(count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(spi_clk),
        .CE(spi_miso_i_1_n_0),
        .CLR(cs),
        .D(p_0_in[1]),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(spi_clk),
        .CE(spi_miso_i_1_n_0),
        .CLR(cs),
        .D(p_0_in[2]),
        .Q(count_reg[2]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \counter[0]_i_1 
       (.I0(stop_state_i_6_n_0),
        .I1(stop_state_i_5_n_0),
        .I2(stop_state_i_4_n_0),
        .I3(stop_state_i_3_n_0),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[2]),
        .O(\counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4 
       (.I0(counter_reg[0]),
        .O(p_0_in__0[0]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],p_0_in__0[0]}));
  CARRY4 \counter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_3_n_0 ,\counter_reg[0]_i_3_n_1 ,\counter_reg[0]_i_3_n_2 ,\counter_reg[0]_i_3_n_3 }),
        .CYINIT(counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[4:1]),
        .S(counter_reg[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [3:1],\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[24]_i_1_O_UNCONNECTED [3:2],\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,counter_reg[25:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
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
       (.C(spi_clk),
        .CE(spi_miso_i_1_n_0),
        .D(spi_mosi),
        .Q(mosiSignal),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[1] 
       (.C(spi_clk),
        .CE(spi_miso_i_1_n_0),
        .D(mosiSignal),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[2] 
       (.C(spi_clk),
        .CE(spi_miso_i_1_n_0),
        .D(p_1_in[2]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[3] 
       (.C(spi_clk),
        .CE(spi_miso_i_1_n_0),
        .D(p_1_in[3]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[4] 
       (.C(spi_clk),
        .CE(spi_miso_i_1_n_0),
        .D(p_1_in[4]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[5] 
       (.C(spi_clk),
        .CE(spi_miso_i_1_n_0),
        .D(p_1_in[5]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mosiSignal_reg[6] 
       (.C(spi_clk),
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
       (.C(spi_clk),
        .CE(p_3_out),
        .D(spi_mosi),
        .Q(outData[0]),
        .R(1'b0));
  FDRE \outData_reg[1] 
       (.C(spi_clk),
        .CE(p_3_out),
        .D(mosiSignal),
        .Q(outData[1]),
        .R(1'b0));
  FDRE \outData_reg[2] 
       (.C(spi_clk),
        .CE(p_3_out),
        .D(p_1_in[2]),
        .Q(outData[2]),
        .R(1'b0));
  FDRE \outData_reg[3] 
       (.C(spi_clk),
        .CE(p_3_out),
        .D(p_1_in[3]),
        .Q(outData[3]),
        .R(1'b0));
  FDRE \outData_reg[4] 
       (.C(spi_clk),
        .CE(p_3_out),
        .D(p_1_in[4]),
        .Q(outData[4]),
        .R(1'b0));
  FDRE \outData_reg[5] 
       (.C(spi_clk),
        .CE(p_3_out),
        .D(p_1_in[5]),
        .Q(outData[5]),
        .R(1'b0));
  FDRE \outData_reg[6] 
       (.C(spi_clk),
        .CE(p_3_out),
        .D(p_1_in[6]),
        .Q(outData[6]),
        .R(1'b0));
  FDRE \outData_reg[7] 
       (.C(spi_clk),
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
       (.C(spi_clk),
        .CE(spi_miso_i_1_n_0),
        .D(spi_miso_reg_i_2_n_0),
        .Q(spi_miso),
        .R(1'b0));
  MUXF7 spi_miso_reg_i_2
       (.I0(spi_miso_i_3_n_0),
        .I1(spi_miso_i_4_n_0),
        .O(spi_miso_reg_i_2_n_0),
        .S(count_reg[2]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    stop_state_i_1
       (.I0(stop_state_i_2_n_0),
        .I1(stop_state_i_3_n_0),
        .I2(stop_state_i_4_n_0),
        .I3(stop_state_i_5_n_0),
        .I4(stop_state_i_6_n_0),
        .I5(stop_data),
        .O(stop_state_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    stop_state_i_2
       (.I0(p_0_in__0[1]),
        .I1(p_0_in__0[2]),
        .O(stop_state_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    stop_state_i_3
       (.I0(p_0_in__0[11]),
        .I1(p_0_in__0[12]),
        .I2(p_0_in__0[10]),
        .I3(p_0_in__0[9]),
        .I4(p_0_in__0[14]),
        .I5(p_0_in__0[13]),
        .O(stop_state_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    stop_state_i_4
       (.I0(p_0_in__0[17]),
        .I1(p_0_in__0[18]),
        .I2(p_0_in__0[16]),
        .I3(p_0_in__0[15]),
        .I4(p_0_in__0[19]),
        .I5(p_0_in__0[20]),
        .O(stop_state_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    stop_state_i_5
       (.I0(p_0_in__0[24]),
        .I1(p_0_in__0[23]),
        .I2(p_0_in__0[21]),
        .I3(p_0_in__0[22]),
        .I4(p_0_in__0[25]),
        .I5(counter_reg[0]),
        .O(stop_state_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    stop_state_i_6
       (.I0(p_0_in__0[5]),
        .I1(p_0_in__0[6]),
        .I2(p_0_in__0[3]),
        .I3(p_0_in__0[4]),
        .I4(p_0_in__0[7]),
        .I5(p_0_in__0[8]),
        .O(stop_state_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stop_state_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(stop_state_i_1_n_0),
        .Q(stop_data),
        .R(1'b0));
  CARRY4 stop_state_reg_i_10
       (.CI(stop_state_reg_i_9_n_0),
        .CO({stop_state_reg_i_10_n_0,stop_state_reg_i_10_n_1,stop_state_reg_i_10_n_2,stop_state_reg_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[24:21]),
        .S(counter_reg[24:21]));
  CARRY4 stop_state_reg_i_11
       (.CI(stop_state_reg_i_10_n_0),
        .CO(NLW_stop_state_reg_i_11_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_stop_state_reg_i_11_O_UNCONNECTED[3:1],p_0_in__0[25]}),
        .S({1'b0,1'b0,1'b0,counter_reg[25]}));
  CARRY4 stop_state_reg_i_12
       (.CI(\counter_reg[0]_i_3_n_0 ),
        .CO({stop_state_reg_i_12_n_0,stop_state_reg_i_12_n_1,stop_state_reg_i_12_n_2,stop_state_reg_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[8:5]),
        .S(counter_reg[8:5]));
  CARRY4 stop_state_reg_i_7
       (.CI(stop_state_reg_i_12_n_0),
        .CO({stop_state_reg_i_7_n_0,stop_state_reg_i_7_n_1,stop_state_reg_i_7_n_2,stop_state_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[12:9]),
        .S(counter_reg[12:9]));
  CARRY4 stop_state_reg_i_8
       (.CI(stop_state_reg_i_7_n_0),
        .CO({stop_state_reg_i_8_n_0,stop_state_reg_i_8_n_1,stop_state_reg_i_8_n_2,stop_state_reg_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[16:13]),
        .S(counter_reg[16:13]));
  CARRY4 stop_state_reg_i_9
       (.CI(stop_state_reg_i_8_n_0),
        .CO({stop_state_reg_i_9_n_0,stop_state_reg_i_9_n_1,stop_state_reg_i_9_n_2,stop_state_reg_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[20:17]),
        .S(counter_reg[20:17]));
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
