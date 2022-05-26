----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2022 07:22:28 PM
-- Design Name: 
-- Module Name: dspLab - Behavioral
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

entity dspLab is

end dspLab;

architecture Behavioral of dspLab is
COMPONENT dsp_macro_0
  PORT (
    CLK : IN STD_LOGIC;
    SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    A : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  );
END COMPONENT;
    
    signal CLK : STD_LOGIC := '0';
    signal SEL : STD_LOGIC_VECTOR(1 DOWNTO 0) := (others => '0');
    signal A : STD_LOGIC_VECTOR(24 DOWNTO 0) := (others => '0');
    signal B : STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
    signal P : STD_LOGIC_VECTOR(47 DOWNTO 0) := (others => '0');
    
begin
    DSP: dsp_macro_0 port map ( CLK => CLK, SEL => SEL, A => A, B => B, P => P);

    CLK <= not CLK after 5 ns;
    
    process
    begin
    A <= std_logic_vector(to_unsigned(2, A'length));
    B <= std_logic_vector(to_unsigned(2, B'length));
    SEL <= "00";
    wait for 100 ns;
    A <= std_logic_vector(to_unsigned(2, A'length));
    B <= std_logic_vector(to_unsigned(2, B'length));
    SEL <= "01";
    wait for 100 ns;
    
    end process;
end Behavioral;
