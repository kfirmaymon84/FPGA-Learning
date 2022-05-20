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
        segEn   : out std_logic_vector (7 downto 0);
	);
end seveSegDriver;

architecture arc_seveSegDriver of seveSegDriver is 
    signal counter : intageer range 0 to 1250000 := 0;
	signal segEnMask : std_logic_vector (7 downto 0) := (others => '0');
begin

    process(clk, reset)
    begin
        if clk'event and clk = '1' then
            if reset = '1' then
                segOut <= (others => '1');
				counter <= (others => '0');
				segEnMask <= (others => '0');
            else
				if counter < 125000 then 
					counter <= counter + 1;
				else
					counter <= 0;
					if segEnMask = 0 then 
						segEnMask <= 1;
					else
						segEnMask <= segEnMask sll 1;
					end if;
				end if;
            end if;
        end if;
    end process;
	
	segEn <= segEnMask;
end arc_seveSegDriver;