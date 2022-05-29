----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2022 09:58:41 PM
-- Design Name: 
-- Module Name: DSP_Calc - Behavioral
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

entity DSP_Calc is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           DATA_IN_A : in STD_LOGIC_VECTOR (15 downto 0);
           DATA_IN_B : in STD_LOGIC_VECTOR (15 downto 0);
           SEL : in STD_LOGIC_VECTOR (2 downto 0);
           DATA_OUT : out STD_LOGIC_VECTOR (19 downto 0));
end DSP_Calc;

architecture Behavioral of DSP_Calc is
COMPONENT dsp_macro_0
  PORT (
    CLK : IN STD_LOGIC;
    SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    A : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    C : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  );
END COMPONENT;
    signal dataInA : std_logic_vector (17 downto 0) := (others =>'0');
    signal dataInB : std_logic_vector (17 downto 0) := (others =>'0');
    signal dataInC : std_logic_vector (47 downto 0) := (others =>'0');
    signal dataOut : std_logic_vector (47 downto 0) := (others =>'0');
    signal opSel   : std_logic_vector (1 downto 0) := (others =>'0');
begin
    DSP_ADD_SUB_MUL : dsp_macro_0 port map(CLK => CLK, SEL => opSel, A => dataInA, B => dataInB, C => dataInC,
            P => dataOut);
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                dataInA <= (others => '0');
                dataInB <= (others => '0');
                dataInC <= (others => '0');
                opSel <= (others => '0');
            else
                case SEL is
                    when "000" => -- ADD A+C
                        opSel <= "00";
                        dataInA <= "00" & DATA_IN_A;
                        dataInB <= (others => '0');
                        dataInC <= X"00000000" &  DATA_IN_B;                    
                    when "001" => -- SUB A-C 
                        opSel <= "01";
                        dataInA <=  "00" & DATA_IN_A;
                        dataInB <= (others => '0');
                        dataInC <=  X"00000000" & DATA_IN_B; 
                    when "010" => -- MUL A*B
                        opSel <= "10";
                        dataInA <=  "00" & DATA_IN_A;
                        dataInB <=  "00" & DATA_IN_B;
                        dataInC <= (others => '0');
                    when "011" => 
                        opSel <= "11";
                    when others => opSel <= "00";
                end case;
            end if;
        end if;
    end process;
    DATA_OUT <= dataOut(19 downto 0);
end Behavioral;
