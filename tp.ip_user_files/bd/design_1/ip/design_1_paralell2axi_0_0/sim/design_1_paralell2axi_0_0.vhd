-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:paralell2axi:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_paralell2axi_0_0 IS
  PORT (
    emi : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    emo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    axi_m_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    axi_m_tvalid : OUT STD_LOGIC;
    axi_m_tlast : OUT STD_LOGIC;
    axi_m_tready : IN STD_LOGIC;
    axi_s_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    axi_s_tvalid : IN STD_LOGIC;
    axi_s_tlast : IN STD_LOGIC;
    axi_s_tready : OUT STD_LOGIC;
    clk : IN STD_LOGIC;
    leds : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rst : IN STD_LOGIC
  );
END design_1_paralell2axi_0_0;

ARCHITECTURE design_1_paralell2axi_0_0_arch OF design_1_paralell2axi_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_paralell2axi_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT paralell2axi IS
    PORT (
      emi : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      emo : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      axi_m_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      axi_m_tvalid : OUT STD_LOGIC;
      axi_m_tlast : OUT STD_LOGIC;
      axi_m_tready : IN STD_LOGIC;
      axi_s_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      axi_s_tvalid : IN STD_LOGIC;
      axi_s_tlast : IN STD_LOGIC;
      axi_s_tready : OUT STD_LOGIC;
      clk : IN STD_LOGIC;
      leds : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rst : IN STD_LOGIC
    );
  END COMPONENT paralell2axi;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_paralell2axi_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axi_m:axi_s, ASSOCIATED_RESET rst, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF axi_s_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 axi_s TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axi_s_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 axi_s TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF axi_s_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 axi_s TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_s_tdata: SIGNAL IS "XIL_INTERFACENAME axi_s, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data_out} bitwidth {attribs {resolve_type generated dependency data_out_bitwidth format long minimum {} maximu" & 
"m {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 8}, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axi_s_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 axi_s TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF axi_m_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 axi_m TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF axi_m_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 axi_m TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF axi_m_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 axi_m TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_m_tdata: SIGNAL IS "XIL_INTERFACENAME axi_m, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axi_m_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 axi_m TDATA";
BEGIN
  U0 : paralell2axi
    PORT MAP (
      emi => emi,
      emo => emo,
      axi_m_tdata => axi_m_tdata,
      axi_m_tvalid => axi_m_tvalid,
      axi_m_tlast => axi_m_tlast,
      axi_m_tready => axi_m_tready,
      axi_s_tdata => axi_s_tdata,
      axi_s_tvalid => axi_s_tvalid,
      axi_s_tlast => axi_s_tlast,
      axi_s_tready => axi_s_tready,
      clk => clk,
      leds => leds,
      rst => rst
    );
END design_1_paralell2axi_0_0_arch;
