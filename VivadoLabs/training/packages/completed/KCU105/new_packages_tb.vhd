-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  
  Library utilities_lib;
  use utilities_lib.string_utilities_sim_pkg.all;

library xil_defaultlib;
use xil_defaultlib.UART_LED_pkg.all;

  ENTITY new_packages_tb IS
  END new_packages_tb;

  ARCHITECTURE behavior OF new_packages_tb IS 
		signal slv_short  : std_logic_vector(  0 downto 0);
		signal slv_medium : std_logic_vector( 15 downto 0);
		signal slv_long   : std_logic_vector(255 downto 0);

  BEGIN
  
  
	  test: process
	     variable position       : integer range 0 to 100;
		  variable message        : string (1 to 26) := "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		  variable mixed_message  : string (1 to 26) := "X2345X7890X2345X7890X2345X";
		begin
			
			wait for 5 ns;
			
			report message;
			report integer'IMAGE(position);			
			
			position := strpos(message,'C');
			report "position of C in " & message & " is " & integer'IMAGE(position);
			
			position := strposlast(message,'X');
			report "last position of X in " & message & " is " & integer'IMAGE(position);
			wait for 1 fs;
			
			position := strpos(mixed_message,'X');
			report "first position of X in " & mixed_message & " is " & integer'IMAGE(position);
			position := strposnext(mixed_message,'X',13);
			report "next position of X after 13 character in " & mixed_message & " is " & integer'IMAGE(position);
			position := strposlast(mixed_message,'X');
			report "last position of X in " & mixed_message & " is " & integer'IMAGE(position);
			
			wait;			
			
		end process test;
		
		
		logic: process

				variable and_result : std_logic;
				variable or_result  : std_logic;
		   begin
				wait for 100 ps;
				
				-- test 1
				slv_short  <= (others=>'1');
				wait for 1 fs;
				and_result := and_bits_together(slv_short);
				or_result  := or_bits_together(slv_short);
				report "with slv_short set to '1', the results are " & std_logic'image(and_result) & " & " & std_logic'image(or_result);
				wait for 1 ps;
				
				
				-- test 2
				slv_medium <= X"A581";
				wait for 1 fs;				
				and_result := and_bits_together(slv_medium);
				or_result  := or_bits_together(slv_medium);
				report "with slv_short set to 16#A581#, the results are " & std_logic'image(and_result) & " & " & std_logic'image(or_result);
				wait for 1 ps;	

				-- test 3
				slv_long  <= (others=>'0');
				wait for 1 fs;				
				and_result := and_bits_together(slv_long);
				or_result  := or_bits_together(slv_long);
				report "with slv_long set to zeros, the results are " & std_logic'image(and_result) & " & " & std_logic'image(or_result);
				wait for 1 ps;				
				
				wait;
			end process logic;


  END;
