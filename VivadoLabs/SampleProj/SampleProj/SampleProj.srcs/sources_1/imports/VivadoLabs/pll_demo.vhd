----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2019 06:39:09 PM
-- Design Name: 
-- Module Name: PLL_Demo - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PLL_Demo is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (3 downto 0));
end PLL_Demo;

architecture Behavioral of PLL_Demo is

component Simple_PLL
port
 (-- Clock out ports
  clk_out1          : out    std_logic;
  clk_out2          : out    std_logic;
  clk_out3          : out    std_logic;
  clk_out4          : out    std_logic;
  -- Status and control signals
  reset             : in     std_logic;
  locked            : out    std_logic;
  -- Clock in ports
  clk_in1           : in     std_logic
 );
end component;

signal clk_50          : std_logic := '0';
signal clk_100          : std_logic := '0';
signal clk_150          : std_logic := '0';
signal clk_300          : std_logic := '0';
signal locked            : std_logic := '0';

component demo_counter is
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           counter : out STD_LOGIC_VECTOR (9 downto 0));
end component;

signal counter_50  :  STD_LOGIC_VECTOR (9 downto 0) := (others => '0');
signal counter_100 :  STD_LOGIC_VECTOR (9 downto 0) := (others => '0');
signal counter_150 :  STD_LOGIC_VECTOR (9 downto 0) := (others => '0');
signal counter_300 :  STD_LOGIC_VECTOR (9 downto 0) := (others => '0');

begin

MMCM : Simple_PLL
   port map ( 
  -- Clock out ports  
   clk_out1 => clk_150,
   clk_out2 => clk_50,
   clk_out3 => clk_300,
   clk_out4 => clk_100,
  -- Status and control signals                
   reset => RST,
   locked => locked,
   -- Clock in ports
   clk_in1 => CLK
 );

count_50 : demo_counter
   port map ( 
   clock => clk_50,
   reset => RST,
   ce => locked,
   counter => counter_50
 );

LED (3) <= counter_50(9);

count_100 : demo_counter
   port map ( 
   clock => clk_100,
   reset => RST,
   ce => locked,
   counter => counter_100
 );

LED (2) <= counter_100(9);

count_150 : demo_counter
   port map ( 
   clock => clk_150,
   reset => RST,
   ce => locked,
   counter => counter_150
 );

LED (1) <= counter_150(9);

count_300 : demo_counter
   port map ( 
   clock => clk_300,
   reset => RST,
   ce => locked,
   counter => counter_300
 );

LED (0) <= counter_300(9);

end Behavioral;
