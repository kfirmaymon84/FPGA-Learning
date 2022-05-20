----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:21:07 01/29/2009 
-- Design Name: 
-- Module Name:    tb_uart_driver - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.numeric_std.all;

library std;
use STD.TEXTIO.all;

--library utilities_lib;
--use utilities_lib.time_utilities_pkg.all;
--use utilities_lib.string_utilities_synth_pkg.all;


entity tb_uart_driver is
    generic ( 
       MESSAGE     : String := "default";
       BIT_PERIOD  : time := 8681 ns            -- corresponds to 115200 baud
      );
   port ( 
       rst_clk_rx        : in  std_logic;
       data_sent         : out std_logic;
       data_to_send      : out std_logic_vector(7 downto 0);
       data_out_serial   : out std_logic
      );
end tb_uart_driver;


architecture Behavioral of tb_uart_driver is 

    begin
    
       send_char_bitper: process
             variable char_to_send      : character := '?';     
             variable char_code         : integer range 0 to 255 := 0;
             variable slv_char_to_send  : std_logic_vector(7 downto 0) := (others=>'U');
             variable char_as_string    : string (1 to 1);
             variable hex_as_string     : string (1 to 6);
             variable console_message   : string (1 to 40);
             
          begin
          
             data_to_send      <= (others=>'0');                   -- hold the parallel data lines inactive
             data_out_serial   <= '1';                             -- line should be driven high when not in use
             data_sent         <= '0';                             -- nothing sent yet

--             wait until (rst_clk_rx = '0');                        -- wait for the reset to be deasserted
             wait for 5 us;                                        -- give the receiver time to wake up
          
             -- loop through the entire message
             
             
                -- break the string into characters
                -- convert the character into a std_logic_vector of 8 bit
                
                
                -- send the start bit, then the 8 data bits, then the stop bit
                
                
             -- wait sufficiently long for the receiver to acquire the data and halt the simulation
             wait for 1 ms;
             assert false
             report "***** Simulation Ending due to all data being transmitted! *****"
             severity failure;

             wait;
             
          end process send_char_bitper;

    end Behavioral;


