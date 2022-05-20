----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2022 10:37:28 PM
-- Design Name: 
-- Module Name: ParkCounter - Behavioral
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
use IEEE.std_logic_unsigned.ALL;

entity ParkCounter is
    Port ( clock : in STD_LOGIC;
         reset : in STD_LOGIC;
         ci : in STD_LOGIC;
         co : in STD_LOGIC;
         ps : out STD_LOGIC_VECTOR (9 downto 0);
         enable : out STD_LOGIC);
end ParkCounter;

architecture Behavioral of ParkCounter is
    signal LastCi : std_logic := '0';
    signal LastCo : std_logic := '0';
    signal CarInFlag : std_logic := '0';
    signal CarOutFlag : std_logic := '0';
    signal CarConter : std_logic_vector (9 downto 0) := (others => '0');
begin

    -- sensors normalize to one clk pulse
    process(clock)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                LastCi <= '0';
                LastCo <= '0';
                CarInFlag <= '0';
                CarOutFlag <= '0';
                CarConter <= (others => '0');
                enable <= '0';
            else
                CarInFlag  <= not LastCi and ci;
                CarOutFlag <= not LastCo and co;
                LastCi <= ci;
                LastCo <= co;

                if reset /= '1' then
                    if CarInFlag  = '1' and CarConter < 1000 then
                        CarConter <= CarConter + 1;
                    elsif CarOutFlag = '1' and CarConter > 0 then
                        CarConter <= CarConter - 1;
                    end if;

                    if CarConter = 1000 then
                        enable <= '0';
                    else
                        enable <= '1';
                    end if;
                end if;
            end if;
        end if;
    end process;

    ps <= CarConter;
end Behavioral;
