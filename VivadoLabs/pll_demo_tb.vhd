----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2019 07:17:43 PM
-- Design Name: 
-- Module Name: PLL_Demo_TB - Behavioral
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

entity PLL_Demo_TB is
--  Port ( );
end PLL_Demo_TB;

architecture Behavioral of PLL_Demo_TB is

component PLL_Demo is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal CLK : STD_LOGIC := '0';
signal RST : STD_LOGIC := '0';
signal LED : STD_LOGIC_VECTOR (3 downto 0);

begin

UUT : PLL_Demo 
    Port map
         ( CLK => CLK,
           RST => RST,
           LED => LED);

RST <= '1', '0' after 20ns;
CLK <= not CLK after 5 ns;

end Behavioral;
