--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:12:30 06/12/2009
-- Design Name:   
-- Module Name:   C:/training/dsgnVHDL/labs/Spartan3E/FSM/UART_tx_ctrl_tb.vhd
-- Project Name:  FSM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UART_tx_ctrl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY UART_tx_ctrl_tb IS
END UART_tx_ctrl_tb;
 
ARCHITECTURE behavior OF UART_tx_ctrl_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_tx_ctrl
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         tx_data_in : IN  std_logic_vector(7 downto 0);
         tx_start : IN  std_logic;
         tx_baud_rate_enable : IN  std_logic;
         tx_serial_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal tx_data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal tx_start : std_logic := '0';
   signal tx_baud_rate_enable : std_logic := '0';

 	--Outputs
   signal tx_serial_out : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_tx_ctrl PORT MAP (
          clock => clock,
          reset => reset,
          tx_data_in => tx_data_in,
          tx_start => tx_start,
          tx_baud_rate_enable => tx_baud_rate_enable,
          tx_serial_out => tx_serial_out
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
	
	-- baud rate generator
	baud_gen: process
		begin
			tx_baud_rate_enable <= '0';
			wait for 8.68055 us - clock_period;
			
			tx_baud_rate_enable <= '1';
			wait for clock_period;
		end process baud_gen;
 
	reset <= '1', '0' after 100 ns;

   -- Stimulus process
   stim_proc: process
   begin		
      tx_data_in <= X"E1";
		tx_start <= '0';
		wait until (reset = '0') and (tx_baud_rate_enable = '1');	-- must wait until first baud enable for state machine to start
      wait for 200 ns;
		
		tx_start <= '1';
		wait for clock_period;		
		tx_start <= '0';

      wait for 500 us;
   end process;

END;
