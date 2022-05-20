library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity DEMO_COUNTER is
    Port ( clock : in STD_LOGIC;
         reset : in STD_LOGIC;
         ce : in STD_LOGIC;
         counter : out STD_LOGIC_VECTOR (9 downto 0));
end DEMO_COUNTER;

architecture Behavioral of DEMO_COUNTER is
    signal count : std_logic_vector (9 downto 0);
begin

    process (clock)
    begin
        if clock='1' and clock'event then
            if reset ='1' then
                count <= (others => '0');
            elsif ce='1' then
                count <= count + 1;
            end if;
        end if;
    end process;

    counter <= count;
end Behavioral;
