----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2022 09:12:54 PM
-- Design Name: 
-- Module Name: stateMachineLab_TB - Behavioral
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

entity stateMachineLab_TB is
    --  Port ( );
end stateMachineLab_TB;

architecture Behavioral of stateMachineLab_TB is
    component stateMachineLab
        Port ( reset : in STD_LOGIC;
             clk : in STD_LOGIC;
             RED_W: out std_logic;
             GREEN_W: out std_logic;
             RED_C: out std_logic;
             ORANGE_C: out std_logic;
             GREEN_C: out std_logic);
    end component;
    signal reset : STD_LOGIC :='0';
    signal clk : STD_LOGIC:='0';
    signal RED_W: std_logic:='0';
    signal GREEN_W: std_logic:='0';
    signal RED_C: std_logic:='0';
    signal ORANGE_C: std_logic:='0';
    signal GREEN_C: std_logic:='0';
begin
    UUT : stateMachineLab port map(reset => reset, clk => clk, RED_W => RED_W, GREEN_W => GREEN_W,
                 RED_C => RED_C, ORANGE_C => ORANGE_C, GREEN_C => GREEN_C);

    clk <= not clk after 5 ns;
    reset <= '1', '0' after 100ns;
    
end Behavioral;
