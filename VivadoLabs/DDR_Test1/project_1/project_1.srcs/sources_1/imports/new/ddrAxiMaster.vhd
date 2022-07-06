----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/24/2022 01:55:11 PM
-- Design Name: 
-- Module Name: ddrAxiMaster - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ddrAxiMaster is
  Port ( 
        s_axi_awid      : out std_logic_vector (3 downto 0);
        s_axi_awaddr    : out std_logic_vector (26 downto 0);
        s_axi_awlen     : out std_logic_vector (7 downto 0);
        s_axi_awsize    : out std_logic_vector (2 downto 0);
        s_axi_awburst   : out std_logic_vector (1 downto 0);
        s_axi_awlock    : out std_logic;
        s_axi_awcache   : out std_logic_vector (3 downto 0);
        s_axi_awprot    : out std_logic_vector (2 downto 0);
        s_axi_awqos     : out std_logic_vector (3 downto 0);
        s_axi_awvalid   : out std_logic;
        s_axi_awready   : in std_logic;
        s_axi_wdata     : out std_logic_vector (127 downto 0);
        s_axi_wstrb     : out std_logic_vector (15 downto 0);
        s_axi_wlast     : out std_logic;
        s_axi_wvalid    : out std_logic;
        s_axi_wready    : in std_logic;
        s_axi_bready    : out std_logic;
        s_axi_bid       : in std_logic_vector (3 downto 0);
        s_axi_bresp     : in std_logic_vector ( 2 downto 0);
        s_axi_bvalid    : in std_logic;
        s_axi_arid      : out std_logic_vector (3 downto 0);
        s_axi_araddr    : out std_logic_vector (26 downto 0);
        s_axi_arlen     : out std_logic_vector (7 downto 0);
        s_axi_arsize    : out std_logic_vector (2 downto 0);
        s_axi_arburst   : out std_logic_vector (1 downto 0);
        s_axi_arlock    : out std_logic;
        s_axi_arcache   : out std_logic_vector (3 downto 0);
        s_axi_arprot    : out std_logic_vector (2 downto 0);
        s_axi_arqos     : out std_logic_vector (3 downto 0);
        s_axi_arvalid   : out std_logic;
        s_axi_arready   : in std_logic;
        s_axi_rready    : out std_logic;
        s_axi_rid       : in std_logic_vector (3 downto 0);
        s_axi_rdata     : in std_logic_vector (127 downto 0);
        s_axi_rresp     : in std_logic_vector (1 downto 0);
        s_axi_rlast     : in std_logic;
        s_axi_rvalid    : in std_logic;
        clk             : in std_logic;
        reset           : in std_logic  
  );
end ddrAxiMaster;

architecture Behavioral of ddrAxiMaster is

begin


end Behavioral;
