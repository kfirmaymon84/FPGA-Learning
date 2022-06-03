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

-- IP VLNV: xilinx.com:module_ref:GPIO_demo:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_GPIO_demo_0_0 IS
  PORT (
    SW : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    BTN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    CLK : IN STD_LOGIC;
    LED : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    SSEG_CA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    SSEG_AN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    UART_TXD : OUT STD_LOGIC;
    RGB1_Red : OUT STD_LOGIC;
    RGB1_Green : OUT STD_LOGIC;
    RGB1_Blue : OUT STD_LOGIC;
    RGB2_Red : OUT STD_LOGIC;
    RGB2_Green : OUT STD_LOGIC;
    RGB2_Blue : OUT STD_LOGIC;
    micClk : OUT STD_LOGIC;
    micLRSel : OUT STD_LOGIC;
    micData : IN STD_LOGIC;
    ampPWM : OUT STD_LOGIC;
    ampSD : OUT STD_LOGIC
  );
END design_1_GPIO_demo_0_0;

ARCHITECTURE design_1_GPIO_demo_0_0_arch OF design_1_GPIO_demo_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_GPIO_demo_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT GPIO_demo IS
    PORT (
      SW : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      BTN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      CLK : IN STD_LOGIC;
      LED : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      SSEG_CA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      SSEG_AN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      UART_TXD : OUT STD_LOGIC;
      RGB1_Red : OUT STD_LOGIC;
      RGB1_Green : OUT STD_LOGIC;
      RGB1_Blue : OUT STD_LOGIC;
      RGB2_Red : OUT STD_LOGIC;
      RGB2_Green : OUT STD_LOGIC;
      RGB2_Blue : OUT STD_LOGIC;
      micClk : OUT STD_LOGIC;
      micLRSel : OUT STD_LOGIC;
      micData : IN STD_LOGIC;
      ampPWM : OUT STD_LOGIC;
      ampSD : OUT STD_LOGIC
    );
  END COMPONENT GPIO_demo;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_GPIO_demo_0_0_arch: ARCHITECTURE IS "GPIO_demo,Vivado 2021.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_GPIO_demo_0_0_arch : ARCHITECTURE IS "design_1_GPIO_demo_0_0,GPIO_demo,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_GPIO_demo_0_0_arch: ARCHITECTURE IS "design_1_GPIO_demo_0_0,GPIO_demo,{x_ipProduct=Vivado 2021.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=GPIO_demo,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_GPIO_demo_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_CLK_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
BEGIN
  U0 : GPIO_demo
    PORT MAP (
      SW => SW,
      BTN => BTN,
      CLK => CLK,
      LED => LED,
      SSEG_CA => SSEG_CA,
      SSEG_AN => SSEG_AN,
      UART_TXD => UART_TXD,
      RGB1_Red => RGB1_Red,
      RGB1_Green => RGB1_Green,
      RGB1_Blue => RGB1_Blue,
      RGB2_Red => RGB2_Red,
      RGB2_Green => RGB2_Green,
      RGB2_Blue => RGB2_Blue,
      micClk => micClk,
      micLRSel => micLRSel,
      micData => micData,
      ampPWM => ampPWM,
      ampSD => ampSD
    );
END design_1_GPIO_demo_0_0_arch;
