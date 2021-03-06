--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
--Date        : Wed Jan 22 02:19:14 2020
--Host        : work1 running 64-bit Debian GNU/Linux 10 (buster)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    outData_0 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=7,da_board_cnt=4,da_clkrst_cnt=8,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_processing_system7_0_0 is
  port (
    GPIO_I : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIO_O : out STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIO_T : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SPI0_SCLK_I : in STD_LOGIC;
    SPI0_SCLK_O : out STD_LOGIC;
    SPI0_SCLK_T : out STD_LOGIC;
    SPI0_MOSI_I : in STD_LOGIC;
    SPI0_MOSI_O : out STD_LOGIC;
    SPI0_MOSI_T : out STD_LOGIC;
    SPI0_MISO_I : in STD_LOGIC;
    SPI0_MISO_O : out STD_LOGIC;
    SPI0_MISO_T : out STD_LOGIC;
    SPI0_SS_I : in STD_LOGIC;
    SPI0_SS_O : out STD_LOGIC;
    SPI0_SS1_O : out STD_LOGIC;
    SPI0_SS2_O : out STD_LOGIC;
    SPI0_SS_T : out STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component design_1_processing_system7_0_0;
  component design_1_rst_ps7_0_10M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_ps7_0_10M_0;
  component design_1_axis_data_fifo_0_1 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component design_1_axis_data_fifo_0_1;
  component design_1_axis_data_fifo_0_2 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component design_1_axis_data_fifo_0_2;
  component design_1_paralell2axi_0_0 is
  port (
    emi : in STD_LOGIC_VECTOR ( 31 downto 0 );
    emo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_m_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_m_tvalid : out STD_LOGIC;
    axi_m_tlast : out STD_LOGIC;
    axi_m_tready : in STD_LOGIC;
    axi_s_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_s_tvalid : in STD_LOGIC;
    axi_s_tlast : in STD_LOGIC;
    axi_s_tready : out STD_LOGIC;
    clk : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC
  );
  end component design_1_paralell2axi_0_0;
  component design_1_xfft_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_status_channel_halt : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC;
    event_data_out_channel_halt : out STD_LOGIC
  );
  end component design_1_xfft_0_0;
  component design_1_xfft_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tlast : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tlast : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_status_channel_halt : out STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC;
    event_data_out_channel_halt : out STD_LOGIC
  );
  end component design_1_xfft_0_1;
  component design_1_join_16from8_0_0 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_config_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_config_tvalid : out STD_LOGIC;
    m_axis_config_tready : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component design_1_join_16from8_0_0;
  component design_1_slice_8from32_0_0 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_config_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_config_tvalid : out STD_LOGIC;
    m_axis_config_tready : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component design_1_slice_8from32_0_0;
  signal I_xfft_0_M_AXIS_DATA_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal I_xfft_0_M_AXIS_DATA_TLAST : STD_LOGIC;
  signal I_xfft_0_M_AXIS_DATA_TREADY : STD_LOGIC;
  signal I_xfft_0_M_AXIS_DATA_TVALID : STD_LOGIC;
  signal axis_data_fifo_In_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_data_fifo_In_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_In_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_In_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_Out_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_data_fifo_Out_M_AXIS_TLAST : STD_LOGIC;
  signal axis_data_fifo_Out_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_Out_M_AXIS_TVALID : STD_LOGIC;
  signal join_16from8_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal join_16from8_0_m_axis_TLAST : STD_LOGIC;
  signal join_16from8_0_m_axis_TREADY : STD_LOGIC;
  signal join_16from8_0_m_axis_TVALID : STD_LOGIC;
  signal paralell2axi_0_axi_m_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal paralell2axi_0_axi_m_TLAST : STD_LOGIC;
  signal paralell2axi_0_axi_m_TREADY : STD_LOGIC;
  signal paralell2axi_0_axi_m_TVALID : STD_LOGIC;
  signal paralell2axi_0_emo : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal paralell2axi_0_leds : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_GPIO_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rst_ps7_0_10M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal slice_8from32_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal slice_8from32_0_m_axis_TLAST : STD_LOGIC;
  signal slice_8from32_0_m_axis_TREADY : STD_LOGIC;
  signal slice_8from32_0_m_axis_TVALID : STD_LOGIC;
  signal slice_8from32_0_m_axis_config_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal slice_8from32_0_m_axis_config_TREADY : STD_LOGIC;
  signal slice_8from32_0_m_axis_config_TVALID : STD_LOGIC;
  signal NLW_D_xfft_1_event_data_in_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_D_xfft_1_event_data_out_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_D_xfft_1_event_frame_started_UNCONNECTED : STD_LOGIC;
  signal NLW_D_xfft_1_event_status_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_D_xfft_1_event_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_D_xfft_1_event_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_D_xfft_1_m_axis_data_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_D_xfft_1_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_D_xfft_1_s_axis_config_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_D_xfft_1_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_D_xfft_1_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_I_xfft_0_event_data_in_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_I_xfft_0_event_data_out_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_I_xfft_0_event_frame_started_UNCONNECTED : STD_LOGIC;
  signal NLW_I_xfft_0_event_status_channel_halt_UNCONNECTED : STD_LOGIC;
  signal NLW_I_xfft_0_event_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_I_xfft_0_event_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_join_16from8_0_m_axis_config_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_join_16from8_0_m_axis_config_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MISO_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MISO_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MOSI_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MOSI_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SCLK_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SCLK_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS1_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS2_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_GPIO_T_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rst_ps7_0_10M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_10M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_10M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_10M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
  outData_0(3 downto 0) <= paralell2axi_0_leds(3 downto 0);
D_xfft_1: component design_1_xfft_0_1
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      aresetn => rst_ps7_0_10M_peripheral_aresetn(0),
      event_data_in_channel_halt => NLW_D_xfft_1_event_data_in_channel_halt_UNCONNECTED,
      event_data_out_channel_halt => NLW_D_xfft_1_event_data_out_channel_halt_UNCONNECTED,
      event_frame_started => NLW_D_xfft_1_event_frame_started_UNCONNECTED,
      event_status_channel_halt => NLW_D_xfft_1_event_status_channel_halt_UNCONNECTED,
      event_tlast_missing => NLW_D_xfft_1_event_tlast_missing_UNCONNECTED,
      event_tlast_unexpected => NLW_D_xfft_1_event_tlast_unexpected_UNCONNECTED,
      m_axis_data_tdata(47 downto 0) => NLW_D_xfft_1_m_axis_data_tdata_UNCONNECTED(47 downto 0),
      m_axis_data_tlast => NLW_D_xfft_1_m_axis_data_tlast_UNCONNECTED,
      m_axis_data_tready => '1',
      m_axis_data_tvalid => NLW_D_xfft_1_m_axis_data_tvalid_UNCONNECTED,
      s_axis_config_tdata(7 downto 0) => B"00000000",
      s_axis_config_tready => NLW_D_xfft_1_s_axis_config_tready_UNCONNECTED,
      s_axis_config_tvalid => '0',
      s_axis_data_tdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axis_data_tlast => '0',
      s_axis_data_tready => NLW_D_xfft_1_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => '0'
    );
I_xfft_0: component design_1_xfft_0_0
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      aresetn => rst_ps7_0_10M_peripheral_aresetn(0),
      event_data_in_channel_halt => NLW_I_xfft_0_event_data_in_channel_halt_UNCONNECTED,
      event_data_out_channel_halt => NLW_I_xfft_0_event_data_out_channel_halt_UNCONNECTED,
      event_frame_started => NLW_I_xfft_0_event_frame_started_UNCONNECTED,
      event_status_channel_halt => NLW_I_xfft_0_event_status_channel_halt_UNCONNECTED,
      event_tlast_missing => NLW_I_xfft_0_event_tlast_missing_UNCONNECTED,
      event_tlast_unexpected => NLW_I_xfft_0_event_tlast_unexpected_UNCONNECTED,
      m_axis_data_tdata(31 downto 0) => I_xfft_0_M_AXIS_DATA_TDATA(31 downto 0),
      m_axis_data_tlast => I_xfft_0_M_AXIS_DATA_TLAST,
      m_axis_data_tready => I_xfft_0_M_AXIS_DATA_TREADY,
      m_axis_data_tvalid => I_xfft_0_M_AXIS_DATA_TVALID,
      s_axis_config_tdata(7 downto 0) => slice_8from32_0_m_axis_config_TDATA(7 downto 0),
      s_axis_config_tready => slice_8from32_0_m_axis_config_TREADY,
      s_axis_config_tvalid => slice_8from32_0_m_axis_config_TVALID,
      s_axis_data_tdata(15 downto 0) => join_16from8_0_m_axis_TDATA(15 downto 0),
      s_axis_data_tlast => join_16from8_0_m_axis_TLAST,
      s_axis_data_tready => join_16from8_0_m_axis_TREADY,
      s_axis_data_tvalid => join_16from8_0_m_axis_TVALID
    );
axis_data_fifo_In: component design_1_axis_data_fifo_0_1
     port map (
      m_axis_tdata(7 downto 0) => axis_data_fifo_In_M_AXIS_TDATA(7 downto 0),
      m_axis_tlast => axis_data_fifo_In_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_In_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_In_M_AXIS_TVALID,
      s_axis_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_aresetn => rst_ps7_0_10M_peripheral_aresetn(0),
      s_axis_tdata(7 downto 0) => paralell2axi_0_axi_m_TDATA(7 downto 0),
      s_axis_tlast => paralell2axi_0_axi_m_TLAST,
      s_axis_tready => paralell2axi_0_axi_m_TREADY,
      s_axis_tvalid => paralell2axi_0_axi_m_TVALID
    );
axis_data_fifo_Out: component design_1_axis_data_fifo_0_2
     port map (
      m_axis_tdata(7 downto 0) => axis_data_fifo_Out_M_AXIS_TDATA(7 downto 0),
      m_axis_tlast => axis_data_fifo_Out_M_AXIS_TLAST,
      m_axis_tready => axis_data_fifo_Out_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_Out_M_AXIS_TVALID,
      s_axis_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_aresetn => rst_ps7_0_10M_peripheral_aresetn(0),
      s_axis_tdata(7 downto 0) => slice_8from32_0_m_axis_TDATA(7 downto 0),
      s_axis_tlast => slice_8from32_0_m_axis_TLAST,
      s_axis_tready => slice_8from32_0_m_axis_TREADY,
      s_axis_tvalid => slice_8from32_0_m_axis_TVALID
    );
join_16from8_0: component design_1_join_16from8_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      m_axis_config_tdata(7 downto 0) => NLW_join_16from8_0_m_axis_config_tdata_UNCONNECTED(7 downto 0),
      m_axis_config_tready => '1',
      m_axis_config_tvalid => NLW_join_16from8_0_m_axis_config_tvalid_UNCONNECTED,
      m_axis_tdata(15 downto 0) => join_16from8_0_m_axis_TDATA(15 downto 0),
      m_axis_tlast => join_16from8_0_m_axis_TLAST,
      m_axis_tready => join_16from8_0_m_axis_TREADY,
      m_axis_tvalid => join_16from8_0_m_axis_TVALID,
      rst => rst_ps7_0_10M_peripheral_aresetn(0),
      s_axis_tdata(7 downto 0) => axis_data_fifo_In_M_AXIS_TDATA(7 downto 0),
      s_axis_tlast => axis_data_fifo_In_M_AXIS_TLAST,
      s_axis_tready => axis_data_fifo_In_M_AXIS_TREADY,
      s_axis_tvalid => axis_data_fifo_In_M_AXIS_TVALID
    );
paralell2axi_0: component design_1_paralell2axi_0_0
     port map (
      axi_m_tdata(7 downto 0) => paralell2axi_0_axi_m_TDATA(7 downto 0),
      axi_m_tlast => paralell2axi_0_axi_m_TLAST,
      axi_m_tready => paralell2axi_0_axi_m_TREADY,
      axi_m_tvalid => paralell2axi_0_axi_m_TVALID,
      axi_s_tdata(7 downto 0) => axis_data_fifo_Out_M_AXIS_TDATA(7 downto 0),
      axi_s_tlast => axis_data_fifo_Out_M_AXIS_TLAST,
      axi_s_tready => axis_data_fifo_Out_M_AXIS_TREADY,
      axi_s_tvalid => axis_data_fifo_Out_M_AXIS_TVALID,
      clk => processing_system7_0_FCLK_CLK0,
      emi(31 downto 0) => processing_system7_0_GPIO_O(31 downto 0),
      emo(31 downto 0) => paralell2axi_0_emo(31 downto 0),
      leds(3 downto 0) => paralell2axi_0_leds(3 downto 0),
      rst => rst_ps7_0_10M_peripheral_aresetn(0)
    );
processing_system7_0: component design_1_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      GPIO_I(31 downto 0) => paralell2axi_0_emo(31 downto 0),
      GPIO_O(31 downto 0) => processing_system7_0_GPIO_O(31 downto 0),
      GPIO_T(31 downto 0) => NLW_processing_system7_0_GPIO_T_UNCONNECTED(31 downto 0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARREADY => '0',
      M_AXI_GP0_ARSIZE(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP0_ARVALID => NLW_processing_system7_0_M_AXI_GP0_ARVALID_UNCONNECTED,
      M_AXI_GP0_AWADDR(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWREADY => '0',
      M_AXI_GP0_AWSIZE(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP0_AWVALID => NLW_processing_system7_0_M_AXI_GP0_AWVALID_UNCONNECTED,
      M_AXI_GP0_BID(11 downto 0) => B"000000000000",
      M_AXI_GP0_BREADY => NLW_processing_system7_0_M_AXI_GP0_BREADY_UNCONNECTED,
      M_AXI_GP0_BRESP(1 downto 0) => B"00",
      M_AXI_GP0_BVALID => '0',
      M_AXI_GP0_RDATA(31 downto 0) => B"00000000000000000000000000000000",
      M_AXI_GP0_RID(11 downto 0) => B"000000000000",
      M_AXI_GP0_RLAST => '0',
      M_AXI_GP0_RREADY => NLW_processing_system7_0_M_AXI_GP0_RREADY_UNCONNECTED,
      M_AXI_GP0_RRESP(1 downto 0) => B"00",
      M_AXI_GP0_RVALID => '0',
      M_AXI_GP0_WDATA(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WDATA_UNCONNECTED(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_WLAST => NLW_processing_system7_0_M_AXI_GP0_WLAST_UNCONNECTED,
      M_AXI_GP0_WREADY => '0',
      M_AXI_GP0_WSTRB(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI_GP0_WVALID => NLW_processing_system7_0_M_AXI_GP0_WVALID_UNCONNECTED,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      SPI0_MISO_I => '0',
      SPI0_MISO_O => NLW_processing_system7_0_SPI0_MISO_O_UNCONNECTED,
      SPI0_MISO_T => NLW_processing_system7_0_SPI0_MISO_T_UNCONNECTED,
      SPI0_MOSI_I => '0',
      SPI0_MOSI_O => NLW_processing_system7_0_SPI0_MOSI_O_UNCONNECTED,
      SPI0_MOSI_T => NLW_processing_system7_0_SPI0_MOSI_T_UNCONNECTED,
      SPI0_SCLK_I => '0',
      SPI0_SCLK_O => NLW_processing_system7_0_SPI0_SCLK_O_UNCONNECTED,
      SPI0_SCLK_T => NLW_processing_system7_0_SPI0_SCLK_T_UNCONNECTED,
      SPI0_SS1_O => NLW_processing_system7_0_SPI0_SS1_O_UNCONNECTED,
      SPI0_SS2_O => NLW_processing_system7_0_SPI0_SS2_O_UNCONNECTED,
      SPI0_SS_I => '0',
      SPI0_SS_O => NLW_processing_system7_0_SPI0_SS_O_UNCONNECTED,
      SPI0_SS_T => NLW_processing_system7_0_SPI0_SS_T_UNCONNECTED
    );
rst_ps7_0_10M: component design_1_rst_ps7_0_10M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_10M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_rst_ps7_0_10M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_10M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_10M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_10M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
slice_8from32_0: component design_1_slice_8from32_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      m_axis_config_tdata(7 downto 0) => slice_8from32_0_m_axis_config_TDATA(7 downto 0),
      m_axis_config_tready => slice_8from32_0_m_axis_config_TREADY,
      m_axis_config_tvalid => slice_8from32_0_m_axis_config_TVALID,
      m_axis_tdata(7 downto 0) => slice_8from32_0_m_axis_TDATA(7 downto 0),
      m_axis_tlast => slice_8from32_0_m_axis_TLAST,
      m_axis_tready => slice_8from32_0_m_axis_TREADY,
      m_axis_tvalid => slice_8from32_0_m_axis_TVALID,
      rst => rst_ps7_0_10M_peripheral_aresetn(0),
      s_axis_tdata(31 downto 0) => I_xfft_0_M_AXIS_DATA_TDATA(31 downto 0),
      s_axis_tlast => I_xfft_0_M_AXIS_DATA_TLAST,
      s_axis_tready => I_xfft_0_M_AXIS_DATA_TREADY,
      s_axis_tvalid => I_xfft_0_M_AXIS_DATA_TVALID
    );
end STRUCTURE;
