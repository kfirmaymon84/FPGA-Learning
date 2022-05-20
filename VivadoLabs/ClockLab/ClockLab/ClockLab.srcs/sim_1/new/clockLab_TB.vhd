----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2022 06:40:28 PM
-- Design Name: 
-- Module Name: clockLab_TB - Behavioral
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

entity clockLab_TB is
    --  Port ( );
end clockLab_TB;

architecture Behavioral of clockLab_TB is
    component ClockLab is
        Port ( CLK : in STD_LOGIC;
             SW : in STD_LOGIC;
             LED : out STD_LOGIC_VECTOR (4 downto 0));
    end component;
    
    signal CLK : std_logic := '0';
    signal SW : std_logic := '1';
    signal LED : std_logic_vector (4 downto 0) := (others => '0');
    
begin

    UUT : ClockLab port map ( CLK => CLK, SW => SW, LED => LED); 

    CLK <= not clk after 5 ns;
    SW <= '1' , '0' after 100 ns; 
end Behavioral;
