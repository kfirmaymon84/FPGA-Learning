----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2022 10:45:31 PM
-- Design Name: 
-- Module Name: ParkCounter_TB - Behavioral
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
use IEEE.std_logic_unsigned.all;

entity ParkCounter_TB is
    --  Port ( );
end ParkCounter_TB;

architecture Behavioral of ParkCounter_TB is
    component ParkCounter is
        Port ( clock : in STD_LOGIC;
             reset : in STD_LOGIC;
             ci : in STD_LOGIC;
             co : in STD_LOGIC;
             ps : out STD_LOGIC_VECTOR (9 downto 0);
             enable : out STD_LOGIC);
    end component;

    signal clock : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    signal ci : STD_LOGIC := '0';
    signal co : STD_LOGIC := '0';
    signal ps : STD_LOGIC_VECTOR (9 downto 0) := (others => '0');
    signal enable : STD_LOGIC := '0';
    
    signal cnt : std_logic_vector (31 downto 0) := (others => '0');
begin

    UUT : ParkCounter port map (clock => clock, reset => reset, ci => ci, co => co, ps => ps, enable => enable);

    clock <= not clock after 5 ns;
    reset <= '1', '0' after 100 ns;
    
    process
    begin
        if cnt < 2020 then
            ci <= not ci;
        elsif cnt < 2520 then 
            co <= not co;
        end if;
        cnt <= cnt + 1;
        wait for 20 ns;
    end process;
end Behavioral;
