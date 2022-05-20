----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/16/2017 07:21:16 PM
-- Design Name: 
-- Module Name: LED_manager - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LED_manager is
    Port ( Channel_1_data : in STD_LOGIC_VECTOR (7 downto 0);
           Channel_2_data : in STD_LOGIC_VECTOR (7 downto 0);
           Channel_1_enable : in STD_LOGIC;
           Channel_2_enable : in STD_LOGIC;
           selector : in STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end LED_manager;

architecture Behavioral of LED_manager is
COMPONENT register8 
    PORT (
            clock : in  STD_LOGIC;
            reset : in  STD_LOGIC;
            enable : in  STD_LOGIC;
            data_in : in  STD_LOGIC_VECTOR (7 downto 0);
            data_out : out  STD_LOGIC_VECTOR (7 downto 0)
           );
  END COMPONENT;         

    signal Channel_1_registered_data : std_logic_vector(7 downto 0);
    signal Channel_2_registered_data : std_logic_vector(7 downto 0);
    signal mux_data_selected : std_logic_vector(7 downto 0);          --combinational output of multiplexer

begin
 regCh1: register8 port map(clock => clock,
                      reset => reset,
                      enable => Channel_1_enable,
                      data_in => Channel_1_data,
                      data_out => Channel_1_registered_data );
                      
   regCh2: register8 port map(clock => clock,
                       reset => reset,
                       enable => Channel_2_enable,
                       data_in => Channel_2_data,
                       data_out => Channel_2_registered_data );   

   
   --construct a two input multiplexer
   with selector select     
       mux_data_selected <= Channel_1_registered_data when '0',
                            Channel_2_registered_data when '1',
                            (others => '-') when others;     

   -- registering output
   data_out <= mux_data_selected when rising_edge(clock);


end Behavioral;
