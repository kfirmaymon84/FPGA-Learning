----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2022 03:12:54 PM
-- Design Name: 
-- Module Name: bh_mem_SDPR_TB - Behavioral
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
use ieee.std_logic_unsigned.all;

entity bh_mem_SDPR_TB is
    --  Port ( );
end bh_mem_SDPR_TB;

architecture Behavioral of bh_mem_SDPR_TB is
    component bh_mem_SDPR
        Port (
            reset : in std_logic;
            ADRESS_W : IN std_logic_vector (7 downto 0);
            ADRESS_R : IN std_logic_vector (7 downto 0);
            CLK :IN std_logic;
            DATA_IN_A : IN std_logic_vector (9 downto 0);
            WEA : IN std_logic_vector (0 downto 0);
            DATA_OUT_B : out std_logic_vector (9 downto 0)
        );
    end component;
    signal reset : std_logic := '0';
    signal ADRESS_W :  std_logic_vector (7 downto 0) := (others => '0');
    signal ADRESS_R :  std_logic_vector (7 downto 0) := (others => '0');
    signal CLK : std_logic := '0';
    signal DATA_IN_A :  std_logic_vector (9 downto 0) := (others => '0');
    signal WEA : std_logic_vector (0 downto 0) := (others => '0');
    signal DATA_OUT_B : std_logic_vector (9 downto 0) ;
begin
    UUT : bh_mem_SDPR port map (reset => reset, ADRESS_W => ADRESS_W, ADRESS_R => ADRESS_R, CLK => CLK, DATA_IN_A => DATA_IN_A ,WEA => WEA, DATA_OUT_B => DATA_OUT_B);

    CLK <= not clk after 5 ns;
    reset <= '1', '0' after 100 ns;


    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '0' then
                WEA(0) <= not WEA(0);
                DATA_IN_A <= '0' & ADRESS_W  & '0';
                if WEA(0) = '1' then 
                    ADRESS_W <= ADRESS_W + 1;
                    ADRESS_R <= ADRESS_R + 1;
                end if;
            else
                ADRESS_W  <= (others => '0');
                ADRESS_R  <= (others => '0');
                DATA_IN_A <= (others => '0');
                WEA(0) <= '0';
            end if;
        end if;
    end process;
end Behavioral;
