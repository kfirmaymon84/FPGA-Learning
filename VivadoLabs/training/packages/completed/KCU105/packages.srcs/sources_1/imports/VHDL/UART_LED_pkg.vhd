--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package UART_LED_pkg is
 component uart_rx is
      generic (
               BAUD_RATE         : integer := 57600;                 -- serves as clock divisor
               CLOCK_RATE        : integer := 100000000              -- freq of clk
            );
       Port ( rst_clk_rx         : in  STD_LOGIC;
              clk_rx             : in  STD_LOGIC;
              rxd_i              : in  STD_LOGIC;
              rx_data            : out STD_LOGIC_VECTOR (7 downto 0);
              rx_data_rdy        : out STD_LOGIC;
              frm_err            : out STD_LOGIC
            );
   end component uart_rx;      
    
   component reset_bridge is
       Port(clk_dst         : IN std_logic;
            rst_in         : IN std_logic;          
            rst_out         : OUT std_logic
           );
   end component reset_bridge;
       
   component meta_harden is
       Port ( clk_dst            : in  STD_LOGIC;
              rst_dst            : in  STD_LOGIC;
              signal_src         : in  STD_LOGIC;
              signal_dst         : out  STD_LOGIC
              );
   end component meta_harden;
   
   component LED_manager is
       Port(
           Channel_1_data      : IN  std_logic_vector(7 downto 0);
           Channel_2_data         : IN  std_logic_vector(7 downto 0);
           Channel_1_enable    : IN  std_logic;
           Channel_2_enable     : IN  std_logic;
           Selector             : IN  std_logic;
           clock                 : IN  std_logic;
           reset                 : IN  std_logic;          
           data_out             : OUT std_logic_vector(7 downto 0)
       );
    end component LED_manager;
-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
constant gnd_i                  : std_logic_vector(7 downto 0) := (others=>'0');
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
function and_bits_together (signal slv : in std_logic_vector) return std_logic;
function or_bits_together  (signal slv : in std_logic_vector) return std_logic;
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

end UART_LED_pkg;

package body UART_LED_pkg is
    
    function and_bits_together (signal slv : in std_logic_vector) return std_logic is
        variable return_sl : std_logic := 'U';
	begin
        return_sl := '1';
        andAll: for i in 0 to slv'length-1 loop
                    return_sl := return_sl AND slv(i);
				end loop;
        return return_sl; 
    end function and_bits_together;
	  
    function or_bits_together (signal slv : in std_logic_vector) return std_logic is
	   variable return_sl : std_logic := 'U';
    begin
        return_sl := '0';
        andAll: for i in 0 to slv'length-1 loop
                    return_sl := return_sl OR slv(i);
				end loop;
        return return_sl; 
    end function or_bits_together;
---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end UART_LED_pkg;
