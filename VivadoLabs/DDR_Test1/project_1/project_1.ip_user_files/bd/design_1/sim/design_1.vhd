--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Fri Jun 24 16:07:20 2022
--Host        : KfirLaptop running 64-bit major release  (build 9200)
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
    ddr2_sdram_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    ddr2_sdram_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr2_sdram_cas_n : out STD_LOGIC;
    ddr2_sdram_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr2_sdram_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_ras_n : out STD_LOGIC;
    ddr2_sdram_we_n : out STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=5,da_clkrst_cnt=2,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_mig_7series_0_0 is
  port (
    sys_rst : in STD_LOGIC;
    clk_ref_i : in STD_LOGIC;
    ddr2_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr2_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    ddr2_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr2_ras_n : out STD_LOGIC;
    ddr2_cas_n : out STD_LOGIC;
    ddr2_we_n : out STD_LOGIC;
    ddr2_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ui_clk_sync_rst : out STD_LOGIC;
    ui_clk : out STD_LOGIC;
    ui_addn_clk_0 : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 26 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 26 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    sys_clk_i : in STD_LOGIC;
    init_calib_complete : out STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  end component design_1_mig_7series_0_0;
  component design_1_ddrAxiMaster_0_0 is
  port (
    s_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : out STD_LOGIC_VECTOR ( 26 downto 0 );
    s_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : out STD_LOGIC;
    s_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : out STD_LOGIC;
    s_axi_awready : in STD_LOGIC;
    s_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : out STD_LOGIC;
    s_axi_wvalid : out STD_LOGIC;
    s_axi_wready : in STD_LOGIC;
    s_axi_bready : out STD_LOGIC;
    s_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bvalid : in STD_LOGIC;
    s_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : out STD_LOGIC_VECTOR ( 26 downto 0 );
    s_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : out STD_LOGIC;
    s_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : out STD_LOGIC;
    s_axi_arready : in STD_LOGIC;
    s_axi_rready : out STD_LOGIC;
    s_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : in STD_LOGIC;
    s_axi_rvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component design_1_ddrAxiMaster_0_0;
  component design_1_axi_smc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 26 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 26 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 26 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 26 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    aclk1 : in STD_LOGIC
  );
  end component design_1_axi_smc_0;
  component design_1_rst_mig_7series_0_81M_0 is
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
  end component design_1_rst_mig_7series_0_81M_0;
  component design_1_rst_clk_wiz_0_100M_0 is
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
  end component design_1_rst_clk_wiz_0_100M_0;
  signal axi_smc_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal axi_smc_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_smc_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal axi_smc_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_smc_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_smc_M00_AXI_RLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_smc_M00_AXI_WLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_smc_M00_AXI_WVALID : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_ARADDR : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal ddrAxiMaster_0_s_axi_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ddrAxiMaster_0_s_axi_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ddrAxiMaster_0_s_axi_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ddrAxiMaster_0_s_axi_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ddrAxiMaster_0_s_axi_ARLOCK : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ddrAxiMaster_0_s_axi_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ddrAxiMaster_0_s_axi_ARREADY : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ddrAxiMaster_0_s_axi_ARVALID : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_AWADDR : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal ddrAxiMaster_0_s_axi_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ddrAxiMaster_0_s_axi_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ddrAxiMaster_0_s_axi_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ddrAxiMaster_0_s_axi_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ddrAxiMaster_0_s_axi_AWLOCK : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ddrAxiMaster_0_s_axi_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ddrAxiMaster_0_s_axi_AWREADY : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ddrAxiMaster_0_s_axi_AWVALID : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ddrAxiMaster_0_s_axi_BREADY : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ddrAxiMaster_0_s_axi_BVALID : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal ddrAxiMaster_0_s_axi_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ddrAxiMaster_0_s_axi_RLAST : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_RREADY : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ddrAxiMaster_0_s_axi_RVALID : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal ddrAxiMaster_0_s_axi_WLAST : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_WREADY : STD_LOGIC;
  signal ddrAxiMaster_0_s_axi_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ddrAxiMaster_0_s_axi_WVALID : STD_LOGIC;
  signal mig_7series_0_DDR2_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal mig_7series_0_DDR2_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mig_7series_0_DDR2_CAS_N : STD_LOGIC;
  signal mig_7series_0_DDR2_CKE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR2_CK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR2_CK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR2_CS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR2_DM : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mig_7series_0_DDR2_DQ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mig_7series_0_DDR2_DQS_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mig_7series_0_DDR2_DQS_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mig_7series_0_DDR2_ODT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_DDR2_RAS_N : STD_LOGIC;
  signal mig_7series_0_DDR2_WE_N : STD_LOGIC;
  signal mig_7series_0_mmcm_locked : STD_LOGIC;
  signal mig_7series_0_ui_clk : STD_LOGIC;
  signal mig_7series_0_ui_clk_sync_rst : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal rst_clk_wiz_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_81M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_clock_1 : STD_LOGIC;
  signal NLW_mig_7series_0_init_calib_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_mig_7series_0_ui_addn_clk_0_UNCONNECTED : STD_LOGIC;
  signal NLW_mig_7series_0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mig_7series_0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rst_clk_wiz_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_81M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_mig_7series_0_81M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_81M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_81M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ddr2_sdram_cas_n : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram CAS_N";
  attribute X_INTERFACE_INFO of ddr2_sdram_ras_n : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram RAS_N";
  attribute X_INTERFACE_INFO of ddr2_sdram_we_n : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram WE_N";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ddr2_sdram_addr : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram ADDR";
  attribute X_INTERFACE_PARAMETER of ddr2_sdram_addr : signal is "XIL_INTERFACENAME ddr2_sdram, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of ddr2_sdram_ba : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram BA";
  attribute X_INTERFACE_INFO of ddr2_sdram_ck_n : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram CK_N";
  attribute X_INTERFACE_INFO of ddr2_sdram_ck_p : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram CK_P";
  attribute X_INTERFACE_INFO of ddr2_sdram_cke : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram CKE";
  attribute X_INTERFACE_INFO of ddr2_sdram_cs_n : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram CS_N";
  attribute X_INTERFACE_INFO of ddr2_sdram_dm : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram DM";
  attribute X_INTERFACE_INFO of ddr2_sdram_dq : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram DQ";
  attribute X_INTERFACE_INFO of ddr2_sdram_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram DQS_N";
  attribute X_INTERFACE_INFO of ddr2_sdram_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram DQS_P";
  attribute X_INTERFACE_INFO of ddr2_sdram_odt : signal is "xilinx.com:interface:ddrx:1.0 ddr2_sdram ODT";
begin
  ddr2_sdram_addr(12 downto 0) <= mig_7series_0_DDR2_ADDR(12 downto 0);
  ddr2_sdram_ba(2 downto 0) <= mig_7series_0_DDR2_BA(2 downto 0);
  ddr2_sdram_cas_n <= mig_7series_0_DDR2_CAS_N;
  ddr2_sdram_ck_n(0) <= mig_7series_0_DDR2_CK_N(0);
  ddr2_sdram_ck_p(0) <= mig_7series_0_DDR2_CK_P(0);
  ddr2_sdram_cke(0) <= mig_7series_0_DDR2_CKE(0);
  ddr2_sdram_cs_n(0) <= mig_7series_0_DDR2_CS_N(0);
  ddr2_sdram_dm(1 downto 0) <= mig_7series_0_DDR2_DM(1 downto 0);
  ddr2_sdram_odt(0) <= mig_7series_0_DDR2_ODT(0);
  ddr2_sdram_ras_n <= mig_7series_0_DDR2_RAS_N;
  ddr2_sdram_we_n <= mig_7series_0_DDR2_WE_N;
  reset_1 <= reset;
  sys_clock_1 <= sys_clock;
axi_smc: component design_1_axi_smc_0
     port map (
      M00_AXI_araddr(26 downto 0) => axi_smc_M00_AXI_ARADDR(26 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_smc_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_smc_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_smc_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_smc_M00_AXI_ARVALID,
      M00_AXI_awaddr(26 downto 0) => axi_smc_M00_AXI_AWADDR(26 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_smc_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_smc_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      M00_AXI_rdata(127 downto 0) => axi_smc_M00_AXI_RDATA(127 downto 0),
      M00_AXI_rlast => axi_smc_M00_AXI_RLAST,
      M00_AXI_rready => axi_smc_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_smc_M00_AXI_RVALID,
      M00_AXI_wdata(127 downto 0) => axi_smc_M00_AXI_WDATA(127 downto 0),
      M00_AXI_wlast => axi_smc_M00_AXI_WLAST,
      M00_AXI_wready => axi_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(15 downto 0) => axi_smc_M00_AXI_WSTRB(15 downto 0),
      M00_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      S00_AXI_araddr(26 downto 0) => ddrAxiMaster_0_s_axi_ARADDR(26 downto 0),
      S00_AXI_arburst(1 downto 0) => ddrAxiMaster_0_s_axi_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => ddrAxiMaster_0_s_axi_ARCACHE(3 downto 0),
      S00_AXI_arid(3 downto 0) => ddrAxiMaster_0_s_axi_ARID(3 downto 0),
      S00_AXI_arlen(7 downto 0) => ddrAxiMaster_0_s_axi_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => ddrAxiMaster_0_s_axi_ARLOCK,
      S00_AXI_arprot(2 downto 0) => ddrAxiMaster_0_s_axi_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => ddrAxiMaster_0_s_axi_ARQOS(3 downto 0),
      S00_AXI_arready => ddrAxiMaster_0_s_axi_ARREADY,
      S00_AXI_arsize(2 downto 0) => ddrAxiMaster_0_s_axi_ARSIZE(2 downto 0),
      S00_AXI_arvalid => ddrAxiMaster_0_s_axi_ARVALID,
      S00_AXI_awaddr(26 downto 0) => ddrAxiMaster_0_s_axi_AWADDR(26 downto 0),
      S00_AXI_awburst(1 downto 0) => ddrAxiMaster_0_s_axi_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => ddrAxiMaster_0_s_axi_AWCACHE(3 downto 0),
      S00_AXI_awid(3 downto 0) => ddrAxiMaster_0_s_axi_AWID(3 downto 0),
      S00_AXI_awlen(7 downto 0) => ddrAxiMaster_0_s_axi_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => ddrAxiMaster_0_s_axi_AWLOCK,
      S00_AXI_awprot(2 downto 0) => ddrAxiMaster_0_s_axi_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => ddrAxiMaster_0_s_axi_AWQOS(3 downto 0),
      S00_AXI_awready => ddrAxiMaster_0_s_axi_AWREADY,
      S00_AXI_awsize(2 downto 0) => ddrAxiMaster_0_s_axi_AWSIZE(2 downto 0),
      S00_AXI_awvalid => ddrAxiMaster_0_s_axi_AWVALID,
      S00_AXI_bid(3 downto 0) => ddrAxiMaster_0_s_axi_BID(3 downto 0),
      S00_AXI_bready => ddrAxiMaster_0_s_axi_BREADY,
      S00_AXI_bresp(1 downto 0) => ddrAxiMaster_0_s_axi_BRESP(1 downto 0),
      S00_AXI_bvalid => ddrAxiMaster_0_s_axi_BVALID,
      S00_AXI_rdata(127 downto 0) => ddrAxiMaster_0_s_axi_RDATA(127 downto 0),
      S00_AXI_rid(3 downto 0) => ddrAxiMaster_0_s_axi_RID(3 downto 0),
      S00_AXI_rlast => ddrAxiMaster_0_s_axi_RLAST,
      S00_AXI_rready => ddrAxiMaster_0_s_axi_RREADY,
      S00_AXI_rresp(1 downto 0) => ddrAxiMaster_0_s_axi_RRESP(1 downto 0),
      S00_AXI_rvalid => ddrAxiMaster_0_s_axi_RVALID,
      S00_AXI_wdata(127 downto 0) => ddrAxiMaster_0_s_axi_WDATA(127 downto 0),
      S00_AXI_wlast => ddrAxiMaster_0_s_axi_WLAST,
      S00_AXI_wready => ddrAxiMaster_0_s_axi_WREADY,
      S00_AXI_wstrb(15 downto 0) => ddrAxiMaster_0_s_axi_WSTRB(15 downto 0),
      S00_AXI_wvalid => ddrAxiMaster_0_s_axi_WVALID,
      aclk => mig_7series_0_ui_clk,
      aclk1 => clk_wiz_0_clk_out1,
      aresetn => rst_mig_7series_0_81M_peripheral_aresetn(0)
    );
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => clk_wiz_0_locked,
      resetn => reset_1
    );
ddrAxiMaster_0: component design_1_ddrAxiMaster_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      reset => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      s_axi_araddr(26 downto 0) => ddrAxiMaster_0_s_axi_ARADDR(26 downto 0),
      s_axi_arburst(1 downto 0) => ddrAxiMaster_0_s_axi_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => ddrAxiMaster_0_s_axi_ARCACHE(3 downto 0),
      s_axi_arid(3 downto 0) => ddrAxiMaster_0_s_axi_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => ddrAxiMaster_0_s_axi_ARLEN(7 downto 0),
      s_axi_arlock => ddrAxiMaster_0_s_axi_ARLOCK,
      s_axi_arprot(2 downto 0) => ddrAxiMaster_0_s_axi_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => ddrAxiMaster_0_s_axi_ARQOS(3 downto 0),
      s_axi_arready => ddrAxiMaster_0_s_axi_ARREADY,
      s_axi_arsize(2 downto 0) => ddrAxiMaster_0_s_axi_ARSIZE(2 downto 0),
      s_axi_arvalid => ddrAxiMaster_0_s_axi_ARVALID,
      s_axi_awaddr(26 downto 0) => ddrAxiMaster_0_s_axi_AWADDR(26 downto 0),
      s_axi_awburst(1 downto 0) => ddrAxiMaster_0_s_axi_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => ddrAxiMaster_0_s_axi_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => ddrAxiMaster_0_s_axi_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => ddrAxiMaster_0_s_axi_AWLEN(7 downto 0),
      s_axi_awlock => ddrAxiMaster_0_s_axi_AWLOCK,
      s_axi_awprot(2 downto 0) => ddrAxiMaster_0_s_axi_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => ddrAxiMaster_0_s_axi_AWQOS(3 downto 0),
      s_axi_awready => ddrAxiMaster_0_s_axi_AWREADY,
      s_axi_awsize(2 downto 0) => ddrAxiMaster_0_s_axi_AWSIZE(2 downto 0),
      s_axi_awvalid => ddrAxiMaster_0_s_axi_AWVALID,
      s_axi_bid(3 downto 0) => ddrAxiMaster_0_s_axi_BID(3 downto 0),
      s_axi_bready => ddrAxiMaster_0_s_axi_BREADY,
      s_axi_bresp(2) => '0',
      s_axi_bresp(1 downto 0) => ddrAxiMaster_0_s_axi_BRESP(1 downto 0),
      s_axi_bvalid => ddrAxiMaster_0_s_axi_BVALID,
      s_axi_rdata(127 downto 0) => ddrAxiMaster_0_s_axi_RDATA(127 downto 0),
      s_axi_rid(3 downto 0) => ddrAxiMaster_0_s_axi_RID(3 downto 0),
      s_axi_rlast => ddrAxiMaster_0_s_axi_RLAST,
      s_axi_rready => ddrAxiMaster_0_s_axi_RREADY,
      s_axi_rresp(1 downto 0) => ddrAxiMaster_0_s_axi_RRESP(1 downto 0),
      s_axi_rvalid => ddrAxiMaster_0_s_axi_RVALID,
      s_axi_wdata(127 downto 0) => ddrAxiMaster_0_s_axi_WDATA(127 downto 0),
      s_axi_wlast => ddrAxiMaster_0_s_axi_WLAST,
      s_axi_wready => ddrAxiMaster_0_s_axi_WREADY,
      s_axi_wstrb(15 downto 0) => ddrAxiMaster_0_s_axi_WSTRB(15 downto 0),
      s_axi_wvalid => ddrAxiMaster_0_s_axi_WVALID
    );
mig_7series_0: component design_1_mig_7series_0_0
     port map (
      aresetn => rst_mig_7series_0_81M_peripheral_aresetn(0),
      clk_ref_i => clk_wiz_0_clk_out1,
      ddr2_addr(12 downto 0) => mig_7series_0_DDR2_ADDR(12 downto 0),
      ddr2_ba(2 downto 0) => mig_7series_0_DDR2_BA(2 downto 0),
      ddr2_cas_n => mig_7series_0_DDR2_CAS_N,
      ddr2_ck_n(0) => mig_7series_0_DDR2_CK_N(0),
      ddr2_ck_p(0) => mig_7series_0_DDR2_CK_P(0),
      ddr2_cke(0) => mig_7series_0_DDR2_CKE(0),
      ddr2_cs_n(0) => mig_7series_0_DDR2_CS_N(0),
      ddr2_dm(1 downto 0) => mig_7series_0_DDR2_DM(1 downto 0),
      ddr2_dq(15 downto 0) => ddr2_sdram_dq(15 downto 0),
      ddr2_dqs_n(1 downto 0) => ddr2_sdram_dqs_n(1 downto 0),
      ddr2_dqs_p(1 downto 0) => ddr2_sdram_dqs_p(1 downto 0),
      ddr2_odt(0) => mig_7series_0_DDR2_ODT(0),
      ddr2_ras_n => mig_7series_0_DDR2_RAS_N,
      ddr2_we_n => mig_7series_0_DDR2_WE_N,
      init_calib_complete => NLW_mig_7series_0_init_calib_complete_UNCONNECTED,
      mmcm_locked => mig_7series_0_mmcm_locked,
      s_axi_araddr(26 downto 0) => axi_smc_M00_AXI_ARADDR(26 downto 0),
      s_axi_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => axi_smc_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_smc_M00_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => axi_smc_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_smc_M00_AXI_ARVALID,
      s_axi_awaddr(26 downto 0) => axi_smc_M00_AXI_AWADDR(26 downto 0),
      s_axi_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_smc_M00_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => axi_smc_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_smc_M00_AXI_AWVALID,
      s_axi_bid(3 downto 0) => NLW_mig_7series_0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => axi_smc_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smc_M00_AXI_BVALID,
      s_axi_rdata(127 downto 0) => axi_smc_M00_AXI_RDATA(127 downto 0),
      s_axi_rid(3 downto 0) => NLW_mig_7series_0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => axi_smc_M00_AXI_RLAST,
      s_axi_rready => axi_smc_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smc_M00_AXI_RVALID,
      s_axi_wdata(127 downto 0) => axi_smc_M00_AXI_WDATA(127 downto 0),
      s_axi_wlast => axi_smc_M00_AXI_WLAST,
      s_axi_wready => axi_smc_M00_AXI_WREADY,
      s_axi_wstrb(15 downto 0) => axi_smc_M00_AXI_WSTRB(15 downto 0),
      s_axi_wvalid => axi_smc_M00_AXI_WVALID,
      sys_clk_i => clk_wiz_0_clk_out1,
      sys_rst => reset_1,
      ui_addn_clk_0 => NLW_mig_7series_0_ui_addn_clk_0_UNCONNECTED,
      ui_clk => mig_7series_0_ui_clk,
      ui_clk_sync_rst => mig_7series_0_ui_clk_sync_rst
    );
rst_clk_wiz_0_100M: component design_1_rst_clk_wiz_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_wiz_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_1,
      interconnect_aresetn(0) => NLW_rst_clk_wiz_0_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_wiz_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_wiz_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
rst_mig_7series_0_81M: component design_1_rst_mig_7series_0_81M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_mig_7series_0_81M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => mig_7series_0_mmcm_locked,
      ext_reset_in => mig_7series_0_ui_clk_sync_rst,
      interconnect_aresetn(0) => NLW_rst_mig_7series_0_81M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_mig_7series_0_81M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_mig_7series_0_81M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_mig_7series_0_81M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => mig_7series_0_ui_clk
    );
end STRUCTURE;
