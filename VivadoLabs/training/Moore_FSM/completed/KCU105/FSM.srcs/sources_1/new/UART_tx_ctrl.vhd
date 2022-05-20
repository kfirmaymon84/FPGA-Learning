----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2016 02:49:45 PM
-- Design Name: 
-- Module Name: UART_tx_ctrl - Behavioral
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

entity UART_tx_ctrl is
    Port ( tx_data_in : in STD_LOGIC_VECTOR (7 downto 0);
           tx_start : in STD_LOGIC;
           tx_baud_rate_enable : in STD_LOGIC;
           tx_serial_out : out STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in STD_LOGIC);
end UART_tx_ctrl;

architecture Behavioral of UART_tx_ctrl is

    signal count_value  :   integer range 0 to 7 := 7;
    signal count_reset  :   std_logic := '0';
    -- signals associated with the one-shot
    signal start_transmitting   : std_logic := '0';
    signal reset_oneShot        : std_logic := '0';    
    signal registered_data      : std_logic_vector(7 downto 0) := (others=>'0');
       
begin
    -- count up from 0 to 7
    process (clock) 
    begin
       if rising_edge(clock) then
          if (reset='1') or (count_reset= '1') then 
              count_value <= 0;
          elsif tx_baud_rate_enable='1' then
               count_value <= count_value + 1;
          end if;
       end if;
    end process;

    -- one-shot to capture short duration events 
    -- in this case, the tx_start
    oneShot: process (clock)
    begin
        if rising_edge(clock) then		    -- active only on clock edge
            if (reset ='1') or 			    -- is external reset asserted?
                (reset_oneShot = '1') then	-- what about a reset from the FSM?
                start_transmitting <= '0';	-- don't tell the FSM to begin
            else				            -- reset not asserted
                if (tx_start = '1') then		-- has a start been requested?
                    start_transmitting <= '1';	-- let the FSM know
                    registered_data <= tx_data_in;	-- store the data while valid
                end if;		-- end of tx_start test				
            end if;			-- end of reset/non-reset activities
        end if;				-- end of synch events
    end process oneShot;

    -- Finite State Machine for controlling serial tramsission
    FSM_tx: process (clock)
     type valid_states is (IDLE, START, DATA, STOP);
     variable state  : valid_states := IDLE;
    begin
        if rising_edge(clock) then      -- active only on clock edge
            if (reset = '1') then		-- is the external reset asserted?
                state := IDLE;
                tx_serial_out <= '1';	-- line idle
                reset_oneShot <= '1';	-- keep it reset
                count_reset   <= '1';	-- preload the counter and prevent from counting
            else						-- reset not asserted
                if (tx_baud_rate_enable = '1') then -- don't operate every clock, only @ baud
                    case state is
                        when IDLE =>
                            -- actions
                            tx_serial_out <= '1';	-- idle the RS-232 line
                            reset_oneShot <= '0';	-- enable the one-shot to look for xmit requests
                            count_reset   <= '1';	-- preload the counter and don't start counting
    
                            -- transitions
                            if (start_transmitting = '1') then	-- transition when request is made
                                state := START;			        -- to the START state
                            end if;
                                        
                        when START =>
                            -- actions
                            tx_serial_out <= '0';		-- start bit is always 0
                            count_reset <= '0';			-- let the counter count
                                            
                            -- transitions
                            state := DATA;			    -- always happens
                    
                        when DATA =>
                            -- actions
                            tx_serial_out <= registered_data(count_value);	-- select the proper bit
                            if (count_value = 7) then
                                count_reset <= '1';
                            end if;
                                                        
                            -- transitions
                            if (count_value = 7) then	-- if done
                                state := STOP;
                            end if;
                                                        
                        when STOP =>
                            -- actions
                            tx_serial_out <= '1';		-- stop bit is always line idle
                            reset_oneShot <= '1';		-- clear the 1shot for next event
                                                        
                            -- transitions
                            state := IDLE;              -- always

                    end case;	-- end of states			
                end if;			-- end of baud enable test
            end if;				-- end of reset/non-reset activities
        end if;					-- end of synch activities
    end process FSM_tx;    
    
end Behavioral;