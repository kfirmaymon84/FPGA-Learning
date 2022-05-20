----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2017 10:10:34 AM
-- Design Name: 
-- Module Name: reset_bridge - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reset_bridge is
    Port ( clk_dst : in STD_LOGIC;
           rst_in : in STD_LOGIC;
           rst_out : out STD_LOGIC);
end reset_bridge;

architecture Behavioral of reset_bridge is

begin

process (clk_dst, rst_in)
    variable rst_meta :std_logic := '0';
        
    begin  
        if (rst_in = '1') then
           rst_out <= '1';
           rst_meta := '1';
        elsif (rising_edge(clk_dst)) then
           rst_out <= rst_meta;
           rst_meta := '0';
        end if; 
end process;

end Behavioral;
