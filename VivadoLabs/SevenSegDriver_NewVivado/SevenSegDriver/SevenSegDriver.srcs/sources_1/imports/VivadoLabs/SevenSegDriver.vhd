library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity seveSegDriver is
    port(
        clk		: in std_logic;
        reset   : in std_logic;
        numIn	: in std_logic_vector (22 downto 0);
        dp      : in std_logic_vector (2 downto 0);
        segOut  : out std_logic_vector (7 downto 0);
        segEn   : out std_logic_vector (7 downto 0)
    );
end seveSegDriver;

architecture arc_seveSegDriver of seveSegDriver is
    signal counter : integer range 0 to 1250000 := 0;
    signal segEnMask : std_logic_vector (7 downto 0) := (others => '0');
begin

process(clk, reset)
begin
    if rising_edge(clk) then
        if reset = '1' then
            segOut <= (others => '1');
            counter <= 0;
            segEnMask <= (others => '1'); -- disable all digits
        else
            if counter < 125000 then
                counter <= counter + 1;
            else
                counter <= 0;
                case segEnMask is 
                    when "11111110" => segEnMask <= "11111101";  
                    when "11111101" => segEnMask <= "11111011";
                    when "11111011" => segEnMask <= "11110111"; 
                    when "11110111" => segEnMask <= "11101111";
                    when "11101111" => segEnMask <= "11011111";
                    when "11011111" => segEnMask <= "10111111";
                    when "10111111" => segEnMask <= "01111111";
                    when "01111111" => segEnMask <= "11111110";
                    when others => segEnMask <= "11111110";        
                end case;
            end if;
        end if;
    end if;
    segEn <= segEnMask;
end process;
	

end arc_seveSegDriver;