-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:module_ref:ddrAxiMaster:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_ddrAxiMaster_0_0 IS
  PORT (
    s_axi_awid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awaddr : OUT STD_LOGIC_VECTOR(26 DOWNTO 0);
    s_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_awlock : OUT STD_LOGIC;
    s_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_awvalid : OUT STD_LOGIC;
    s_axi_awready : IN STD_LOGIC;
    s_axi_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axi_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_wlast : OUT STD_LOGIC;
    s_axi_wvalid : OUT STD_LOGIC;
    s_axi_wready : IN STD_LOGIC;
    s_axi_bready : OUT STD_LOGIC;
    s_axi_bid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_bresp : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_bvalid : IN STD_LOGIC;
    s_axi_arid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_araddr : OUT STD_LOGIC_VECTOR(26 DOWNTO 0);
    s_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_arlock : OUT STD_LOGIC;
    s_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_arvalid : OUT STD_LOGIC;
    s_axi_arready : IN STD_LOGIC;
    s_axi_rready : OUT STD_LOGIC;
    s_axi_rid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rlast : IN STD_LOGIC;
    s_axi_rvalid : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC
  );
END design_1_ddrAxiMaster_0_0;

ARCHITECTURE design_1_ddrAxiMaster_0_0_arch OF design_1_ddrAxiMaster_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_ddrAxiMaster_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ddrAxiMaster IS
    PORT (
      s_axi_awid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awaddr : OUT STD_LOGIC_VECTOR(26 DOWNTO 0);
      s_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_awlock : OUT STD_LOGIC;
      s_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_awvalid : OUT STD_LOGIC;
      s_axi_awready : IN STD_LOGIC;
      s_axi_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_wlast : OUT STD_LOGIC;
      s_axi_wvalid : OUT STD_LOGIC;
      s_axi_wready : IN STD_LOGIC;
      s_axi_bready : OUT STD_LOGIC;
      s_axi_bid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_bresp : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_bvalid : IN STD_LOGIC;
      s_axi_arid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_araddr : OUT STD_LOGIC_VECTOR(26 DOWNTO 0);
      s_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_arlock : OUT STD_LOGIC;
      s_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_arvalid : OUT STD_LOGIC;
      s_axi_arready : IN STD_LOGIC;
      s_axi_rready : OUT STD_LOGIC;
      s_axi_rid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rlast : IN STD_LOGIC;
      s_axi_rvalid : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC
    );
  END COMPONENT ddrAxiMaster;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_ddrAxiMaster_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_awid: SIGNAL IS "XIL_INTERFACENAME s_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 27, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1," & 
" RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWID";
BEGIN
  U0 : ddrAxiMaster
    PORT MAP (
      s_axi_awid => s_axi_awid,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awlen => s_axi_awlen,
      s_axi_awsize => s_axi_awsize,
      s_axi_awburst => s_axi_awburst,
      s_axi_awlock => s_axi_awlock,
      s_axi_awcache => s_axi_awcache,
      s_axi_awprot => s_axi_awprot,
      s_axi_awqos => s_axi_awqos,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bready => s_axi_bready,
      s_axi_bid => s_axi_bid,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_arid => s_axi_arid,
      s_axi_araddr => s_axi_araddr,
      s_axi_arlen => s_axi_arlen,
      s_axi_arsize => s_axi_arsize,
      s_axi_arburst => s_axi_arburst,
      s_axi_arlock => s_axi_arlock,
      s_axi_arcache => s_axi_arcache,
      s_axi_arprot => s_axi_arprot,
      s_axi_arqos => s_axi_arqos,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rready => s_axi_rready,
      s_axi_rid => s_axi_rid,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rlast => s_axi_rlast,
      s_axi_rvalid => s_axi_rvalid,
      clk => clk,
      reset => reset
    );
END design_1_ddrAxiMaster_0_0_arch;
