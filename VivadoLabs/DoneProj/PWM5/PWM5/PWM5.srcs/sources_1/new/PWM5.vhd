library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity PWM5 is
    Port ( reset : in STD_LOGIC;
         clock : in STD_LOGIC;
         load : in STD_LOGIC;
         data : in STD_LOGIC_VECTOR (6 downto 0);
         pwm : out STD_LOGIC);
end PWM5;

architecture Behavioral of PWM5 is
    signal loadFlag : std_logic := '0';
    signal lastLoad : std_logic := '0';
    signal pwmConter : std_logic_vector (6 downto 0) := (others => '0');
    signal pwmHighLimit : std_logic_vector (6 downto 0) := (others => '0');
begin

    process(clock)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                loadFlag <= '0';
                lastLoad <= '0';
                pwmConter <= (others => '0');
                pwmHighLimit <= "0000001";
                pwm <= '0';
            else
                loadFlag <= not lastLoad and load;
                lastLoad <= load;

                if loadFlag = '1' then
                    if data < 100 and data > 0 then
                        pwmHighLimit <= data - 1;
                    else
                        pwmHighLimit <= "0000001";
                    end if;
                end if;

                if pwmConter < 99 then
                    pwmConter <= pwmConter + 1;
                    if pwmConter >= pwmHighLimit then
                        pwm <= '0';
                    end if;
                else
                    pwmConter <= (others => '0');
                    pwm <= '1';
                end if;


            end if;
        end if;
    end process;



end Behavioral;
