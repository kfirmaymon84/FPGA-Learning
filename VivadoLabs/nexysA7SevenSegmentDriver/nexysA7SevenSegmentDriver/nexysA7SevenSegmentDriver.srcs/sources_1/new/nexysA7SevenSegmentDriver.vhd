library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity seveSegDriver is
    port(
        clk		: in std_logic;
        reset   : in std_logic;
        numIn	: in std_logic_vector (31 downto 0);
        dp      : in std_logic_vector (2 downto 0);
        segOut  : out std_logic_vector (7 downto 0);
        anodeEn   : out std_logic_vector (7 downto 0)
    );
end seveSegDriver;

architecture arc_seveSegDriver of seveSegDriver is
    signal counter : integer range 0 to 1250000 := 0;
    signal anodeEnMask : std_logic_vector (7 downto 0) := (others => '0');
    signal segOutMask  : std_logic_vector (7 downto 0) := (others => '0');
    
    signal num : integer range 0 to 99999999;
    signal dig0, dig1, dig2, dig3, dig4, dig5, dig6, dig7: std_logic_vector (3 downto 0);
    
    function BCD_TO_SEGMENT(
        bcd : in std_logic_vector (3 downto 0))
        return std_logic_vector is
    begin
        case bcd is             --DPGFEDCBA 
            when "0000" => return "11000000";
            when "0001" => return "11111001";
            when "0010" => return "10100100";
            when "0011" => return "10110000";
            when "0100" => return "10011001";
            when "0101" => return "10010010";
            when "0110" => return "10000011";
            when "0111" => return "11111000";
            when "1000" => return "10000000";
            when "1001" => return "10011000";
            when others => return "11111111";
        end case;    
    end;  
    
    
begin
-- Anode enable
process(clk, reset)
begin
    if rising_edge(clk) then
        if reset = '1' then
            counter <= 125000;
            anodeEnMask <= (others => '1'); -- disable all digits
            segOutMask <= (others => '1'); -- disable all segments     
        else
            if counter < 125000 then
                counter <= counter + 1;
            else
                counter <= 0;
                case anodeEnMask is 
                    when "11111110" => 
                        anodeEnMask <= "11111101";
                        segOutMask <= BCD_TO_SEGMENT(dig1);  
                    when "11111101" => 
                        anodeEnMask <= "11111011";
                        segOutMask <= BCD_TO_SEGMENT(dig2); 
                    when "11111011" => 
                        anodeEnMask <= "11110111";
                        segOutMask <= BCD_TO_SEGMENT(dig3);  
                    when "11110111" => 
                        anodeEnMask <= "11101111";
                        segOutMask <= BCD_TO_SEGMENT(dig4); 
                    when "11101111" => 
                        anodeEnMask <= "11011111";
                        segOutMask <= BCD_TO_SEGMENT(dig5); 
                    when "11011111" => 
                        anodeEnMask <= "10111111";
                        segOutMask <= BCD_TO_SEGMENT(dig6); 
                    when "10111111" => 
                        anodeEnMask <= "01111111";
                        segOutMask <= BCD_TO_SEGMENT(dig7); 
                    when "01111111" => 
                        anodeEnMask <= "11111110";
                        segOutMask <= BCD_TO_SEGMENT(dig0); 
                    when others => 
                        anodeEnMask <= "01111111";            
                end case;  
            end if;
        end if;
    end if;
    segOut <= segOutMask;
    anodeEn <= anodeEnMask;
end process;
	
-- digit convertion 	
process(clk,reset)
begin
    if rising_edge(clk) then
        if reset = '1' then
            dig0 <= (others => '0');
            dig1 <= (others => '0');
            dig2 <= (others => '0');
            dig3 <= (others => '0');
            dig4 <= (others => '0');
            dig5 <= (others => '0');
            dig6 <= (others => '0');
            dig7 <= (others => '0');
        else 
            num <= to_integer(unsigned(numIn));
            dig0 <= std_logic_vector(to_unsigned(num mod 10,4));
            dig1 <= std_logic_vector(to_unsigned(num / 10 mod 10,4));
            dig2 <= std_logic_vector(to_unsigned(num / 100 mod 10,4));
            dig3 <= std_logic_vector(to_unsigned(num / 1000 mod 10,4));
            
            dig4 <= std_logic_vector(to_unsigned(num / 10000 mod 10,4));
            dig5 <= std_logic_vector(to_unsigned(num / 100000 mod 10,4));
            dig6 <= std_logic_vector(to_unsigned(num / 1000000 mod 10,4));
            dig7 <= std_logic_vector(to_unsigned(num / 10000000 mod 10,4));
        end if; 
    end if;
end process;	
	
end arc_seveSegDriver;
