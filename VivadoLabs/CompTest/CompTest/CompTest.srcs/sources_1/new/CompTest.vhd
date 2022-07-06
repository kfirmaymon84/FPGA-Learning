----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/16/2022 06:06:12 PM
-- Design Name: 
-- Module Name: CompTest - Behavioral
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

entity CompTest is
    Port ( CLK : in STD_LOGIC;
         RESET : in STD_LOGIC;
         IN1 : in STD_LOGIC_VECTOR (5 downto 0);
         IN2 : in STD_LOGIC_VECTOR (5 downto 0);
         res : out STD_LOGIC);
end CompTest;

architecture Behavioral of CompTest is
    signal INA : STD_LOGIC_VECTOR (5 downto 0);
    signal INB : STD_LOGIC_VECTOR (5 downto 0);
    signal ISEq1 : std_logic ;
    signal ISEq2 : std_logic ;
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                INA <= (others => '0');
                INB <= (others => '0');
            else
                INA <= in1;
                INB <= in2;
            end if;
        end if;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                ISEq1 <= '0';
            elsif INA(2 downto 0) = INB(2 downto 0) then
                ISEq1 <= '1';
            else
                ISEq1 <= '0';
            end if;
        end if;
    end process;


    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                ISEq2 <= '0';
            elsif INA(5 downto 3) = INB(5 downto 3) then
                ISEq2 <= '1';
            else
                ISEq2 <= '0';
            end if;
        end if;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                res <= '0';
            elsif ISEq1 = '1' and ISEq2 = '1' then
                res <= '1';
            else
                res <= '0';
            end if;
        end if;
    end process;

    -- process(clk)
    --    begin
    --        if rising_edge(clk) then
    --            if reset = '1' then
    --                INA <= (others => '0');
    --                INB <= (others => '0');
    --            else
    --                INA <= in1;
    --                INB <= in2;
    --            end if;
    --        end if;
    --    end process;

    --    process(clk)
    --    begin
    --        if rising_edge(clk) then
    --            if reset = '1' then
    --                res <= '0';
    --            elsif INA = INB then
    --                res <= '1';
    --            else
    --                res <= '0';
    --            end if;
    --        end if;
    --    end process;
end Behavioral;
