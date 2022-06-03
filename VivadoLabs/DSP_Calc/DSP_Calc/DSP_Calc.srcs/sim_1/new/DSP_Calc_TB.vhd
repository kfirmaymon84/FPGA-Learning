----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2022 10:22:22 PM
-- Design Name: 
-- Module Name: DSP_Calc_TB - Behavioral
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

entity DSP_Calc_TB is
--  Port ( );
end DSP_Calc_TB;

architecture Behavioral of DSP_Calc_TB is
    component DSP_Calc is
        Port ( CLK : in STD_LOGIC;
               RESET : in STD_LOGIC;
               DATA_IN_A : in STD_LOGIC_VECTOR (15 downto 0);
               DATA_IN_B : in STD_LOGIC_VECTOR (15 downto 0);
               SEL : in STD_LOGIC_VECTOR (2 downto 0);
               DATA_OUT : out STD_LOGIC_VECTOR (19 downto 0));
    end component;
    signal CLK       : STD_LOGIC := '0';
    signal RESET     : STD_LOGIC := '0';
    signal DATA_IN_A : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal DATA_IN_B : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal SEL       : STD_LOGIC_VECTOR (2 downto 0)  := (others => '0');
    signal DATA_OUT  : STD_LOGIC_VECTOR (19 downto 0) := (others => '0');
begin
    UUT: DSP_Calc port map (CLK => CLK, RESET => RESET, DATA_IN_A => DATA_IN_A, DATA_IN_B => DATA_IN_B, SEL => SEL, DATA_OUT => DATA_OUT);

    CLK <= not CLK after 5ns;
    RESET <= '1', '0' after 20ns;
    
    process
    begin
    
    -- init
    DATA_IN_A <= (others => '0');
    DATA_IN_B <= (others => '0');
    SEL <= (others => '0');
    wait for 200 ns;
    
    -- ADD
    DATA_IN_A <= X"0001";
    DATA_IN_B <= X"0000";
    SEL <= (others => '0');
    wait for 100 ns;
    
    DATA_IN_A <= X"0001";
    DATA_IN_B <= X"0001";
    SEL <= (others => '0');
    wait for 100 ns;
    
    DATA_IN_A <= X"0008";
    DATA_IN_B <= X"0008";
    SEL <= (others => '0');
    wait for 100 ns;
    
    -- SUB
    DATA_IN_A <= X"0008";
    DATA_IN_B <= X"0004";
    SEL <= "001";
    wait for 100 ns;
    
    -- SUB
    DATA_IN_A <= X"0005";
    DATA_IN_B <= X"0002";
    SEL <= "001";
    wait for 100 ns;
    
    -- SUB
    DATA_IN_A <= X"0004";
    DATA_IN_B <= X"0008";
    SEL <= "001";
    wait for 100 ns;
    
    -- MUL
    DATA_IN_A <= X"0004";
    DATA_IN_B <= X"0004";
    SEL <= "010";
    wait for 100 ns;
    
    -- MUL
    DATA_IN_A <= X"0001";
    DATA_IN_B <= X"0001";
    SEL <= "010";
    wait for 100 ns;
    
    -- MUL
    DATA_IN_A <= X"0005";
    DATA_IN_B <= X"000A";
    SEL <= "010";
    wait for 100 ns;
    wait;
    end process;
end Behavioral;
