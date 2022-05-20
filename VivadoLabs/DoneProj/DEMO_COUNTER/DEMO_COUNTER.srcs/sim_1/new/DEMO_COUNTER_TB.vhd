----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/01/2022 03:27:25 PM
-- Design Name: 
-- Module Name: DEMO_COUNTER_TB - Behavioral
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

entity DEMO_COUNTER_TB is
--  Port ( );
end DEMO_COUNTER_TB;

architecture Behavioral of DEMO_COUNTER_TB is
    component DEMO_COUNTER
        Port ( clock : in STD_LOGIC;
               reset : in STD_LOGIC;
               ce : in STD_LOGIC;
               counter : out STD_LOGIC_VECTOR (9 downto 0));
    end component;
    
   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal ce : std_logic := '0';
   
   -- Output
   signal counter : std_logic_vector (9 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10ns;
begin
    -- UUT map declertion
    UUT: DEMO_COUNTER port map(
                            clock => clock,
                            reset => reset,
                            ce => ce,
                            counter => counter);

    -- clock init
    clock <= not clock after clock_period / 2;
    
    -- reset process
    process
    begin
        reset <= '1';
        wait for clock_period * 10;
        
        reset <= '0';
        wait;
    end process;
    
   -- counter test process
   process
   begin
   -- ce rise after 15 clocks
   ce <= '1' after clock_period * 15;
   wait for clock_period * (15 + 100);
   ce <= '0';
   wait;
   end process; 
end Behavioral;
