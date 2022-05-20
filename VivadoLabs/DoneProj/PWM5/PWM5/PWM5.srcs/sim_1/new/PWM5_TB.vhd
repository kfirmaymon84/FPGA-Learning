library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity tb_PWM5 is
end tb_PWM5;

architecture tb of tb_PWM5 is

    component PWM5
        port (reset : in std_logic;
              clock : in std_logic;
              load  : in std_logic;
              data  : in std_logic_vector (6 downto 0);
              pwm   : out std_logic);
    end component;

    signal reset : std_logic := '1';
    signal clock : std_logic := '0';
    signal load  : std_logic := '0';
    signal data  : std_logic_vector (6 downto 0):= "0001111";
    signal pwm   : std_logic := '0';

begin

    dut : PWM5
    port map (reset => reset,
              clock => clock,
              load  => load,
              data  => data,
              pwm   => pwm);


    clock <= not clock after 5 ns;
    reset <= '1', '0' after 100 ns;
    process 
    begin
        wait for 2 us;
        data <= std_logic_vector(to_unsigned(1,7));
        load <= '1';
        wait for 20 ns;
        load <= '0';
        wait for 20 ns;
        
        wait for 2 us;
        data <= std_logic_vector(to_unsigned(50,7));
        load <= '1';
        wait for 20 ns;
        load <= '0';
        wait for 20 ns;
         
        wait for 2 us;
        data <= std_logic_vector(to_unsigned(75,7));
        load <= '1';
        wait for 20 ns;
        load <= '0';
        wait for 20 ns;
        
        
        wait for 2 us;
        data <= std_logic_vector(to_unsigned(99,7));
        load <= '1';
        wait for 20 ns;
        load <= '0';
        wait for 20 ns; 
        
        wait;
    end process;
    
end tb;
