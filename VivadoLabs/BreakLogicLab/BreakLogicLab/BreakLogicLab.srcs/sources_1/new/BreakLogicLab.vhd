----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/16/2022 08:47:09 PM
-- Design Name: 
-- Module Name: BreakLogicLab - Behavioral
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

entity BreakLogicLab is
    Port ( CLK : in STD_LOGIC;
         RESET : in STD_LOGIC;
         A : in STD_LOGIC_VECTOR (59 downto 0);
         B : in STD_LOGIC_VECTOR (59 downto 0);
         COMP_OUT : out STD_LOGIC);
end BreakLogicLab;

architecture Behavioral of BreakLogicLab is
    signal inA : std_logic_vector (59 downto 0);
    signal inB : std_logic_vector (59 downto 0);
begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            inA <= A;
            inB <= B;
        end if;
    end process;

    process(CLK)
    begin
        if rising_edge(CLK) then
            if reset = '1' then
                COMP_OUT <= '0';
            else
                if inA = inB then
                    COMP_OUT <= '1';
                else
                    COMP_OUT <= '0';
                end if;
            end if;
        end if;
    end process;


end Behavioral;
