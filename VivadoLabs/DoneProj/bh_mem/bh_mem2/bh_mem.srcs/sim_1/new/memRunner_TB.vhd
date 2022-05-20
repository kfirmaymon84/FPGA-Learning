----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2022 09:10:56 PM
-- Design Name: 
-- Module Name: memRunner_TB - Behavioral
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

entity memRunner_TB is
    --  Port ( );
end memRunner_TB;

architecture Behavioral of memRunner_TB is
    component memRunner
        Port ( clk : in STD_LOGIC;
             reset : in STD_LOGIC;
             dout : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal dout : STD_LOGIC_VECTOR (7 downto 0):= (others => '0');
begin

    UUT: memRunner port map (clk => clk, reset => reset, dout => dout);
    clk <= not clk after 5 ns;

    --reset process 
    process
    begin
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait;
    end process;


end Behavioral;
