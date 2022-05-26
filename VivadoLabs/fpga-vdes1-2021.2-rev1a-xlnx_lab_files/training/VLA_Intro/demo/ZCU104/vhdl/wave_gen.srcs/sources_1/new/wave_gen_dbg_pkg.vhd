----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/30/2013 10:43:45 AM
-- Design Name: 
-- Module Name: wave_gen_dbg_pkg - Behavioral
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
use IEEE.NUMERIC_STD.ALL;



package wave_gen_dbg_pkg is

   component vio_sample_button IS
      port (
         CLK        : IN  STD_LOGIC;
         PROBE_OUT0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
      );
   end component vio_sample_button;
   
   component ila_rx_side IS
      port (
         CLK          : IN  STD_LOGIC;
         PROBE0       : IN  STD_LOGIC_VECTOR( 1 DOWNTO 0);
         PROBE1       : IN  STD_LOGIC_VECTOR( 7 DOWNTO 0);
         PROBE2       : IN  STD_LOGIC_VECTOR(31 DOWNTO 0)
       );
   end component ila_rx_side;
   
   component ila_tx_side is
      port (
         CLK         : IN  STD_LOGIC;
         PROBE0      : IN  STD_LOGIC_VECTOR( 2 DOWNTO 0);
         PROBE1      : IN  STD_LOGIC_VECTOR( 7 DOWNTO 0);
         PROBE2      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0)
      );
   end component ila_tx_side;

end package wave_gen_dbg_pkg;

