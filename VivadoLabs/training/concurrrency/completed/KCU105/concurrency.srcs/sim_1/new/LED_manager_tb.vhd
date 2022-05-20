----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2016 08:07:22 AM
-- Design Name: 
-- Module Name: LED_manager_tb - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LED_manager_tb is
--  Port ( );
end LED_manager_tb;

architecture Behavioral of LED_manager_tb is

    COMPONENT LED_manager
    PORT(
         Channel_1_data   : IN  std_logic_vector(7 downto 0);
         Channel_2_data   : IN  std_logic_vector(7 downto 0);
         Channel_1_enable : IN  std_logic;
         Channel_2_enable : IN  std_logic;
         Selector         : IN  std_logic;
         clock            : IN  std_logic;
         reset            : IN  std_logic;
         data_out         : OUT std_logic_vector(7 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal Channel_1_data   : std_logic_vector(7 downto 0) := (others => '0');
   signal Channel_2_data   : std_logic_vector(7 downto 0) := (others => '0');
   signal Channel_1_enable : std_logic := '0';
   signal Channel_2_enable : std_logic := '0';
   signal Selector         : std_logic := '0';
   signal clock            : std_logic := '0';
   signal reset            : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;

begin
	-- Instantiate the Unit Under Test (UUT)
    uut: LED_manager PORT MAP (
          Channel_1_data   => Channel_1_data,
          Channel_2_data   => Channel_2_data,
          Channel_1_enable => Channel_1_enable,
          Channel_2_enable => Channel_2_enable,
          Selector         => Selector,
          clock            => clock,
          reset            => reset,
          data_out         => data_out
        );
    
	    -- reset generation
        reset <= '1', '0' after clock_period * 10;
        
        -- clock generation
        clock <= not clock after 5 ns;
        
        -- selector generation
        selector <= '0', '1' after clock_period * 20, '0' after clock_period * 50, '1' after clock_period * 100;
        
        -- data generation
        Channel_1_data <= channel_1_data + X"03" after clock_period * 2;
        Channel_2_data <= channel_2_data + X"04" after clock_period * 3;
        Channel_1_enable <= '1';
        Channel_2_enable <= '1';
     
end Behavioral;
