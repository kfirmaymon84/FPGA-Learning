library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.ALL;

entity RAD_Detector is
    Port ( clk_50MHz : in STD_LOGIC;
           reset : in STD_LOGIC;
           RAD : in STD_LOGIC;
           ALARM : out STD_LOGIC);
end RAD_Detector;

architecture Behavioral of RAD_Detector is
    signal   count       : std_logic_vector (9 downto 0);
    constant alarmOnVal  : integer := 500;
begin

            process (clk_50MHz)
            begin
                if rising_edge(clk_50MHz) then
                    if reset ='1' then
                        count <= (others => '0');
                    elsif RAD = '1' and count < alarmOnVal then 
                        count <= count + 1;
                    elsif RAD = '0' then
                        count <= (others => '0');
                    else
                        count <= count;
                    end if;
                end if;
            end process;

    
            process (count)
            begin
                if count = alarmOnVal then
                    ALARM <= '1';
                else
                    ALARM <= '0';
                end if;
            end process;
            
end Behavioral;
