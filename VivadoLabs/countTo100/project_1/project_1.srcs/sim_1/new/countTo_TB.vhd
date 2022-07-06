----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/27/2022 07:58:18 PM
-- Design Name: 
-- Module Name: countTo_TB - Behavioral
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

entity countTo_TB is
--  Port ( );
end countTo_TB;

architecture Behavioral of countTo_TB is
component CountTo is
    Port ( reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           sw : in STD_LOGIC);
end component;

    signal reset    : STD_LOGIC := '0';
    signal clk      : STD_LOGIC := '0';
    signal sw       : STD_LOGIC := '0';
begin
UUT : CountTo port map(
    reset => reset,
    clk => clk,
    sw => sw
);

clk <= not clk after 5 ns;
reset <= '1' , '0' after 100 ns;

sw <= '0', '1' after 120 ns, '0' after 150 ns ,'1' after 180 ns,'0' after 400ns, '1' after 1500 ns, '0' after 1550 ns;

end Behavioral;
