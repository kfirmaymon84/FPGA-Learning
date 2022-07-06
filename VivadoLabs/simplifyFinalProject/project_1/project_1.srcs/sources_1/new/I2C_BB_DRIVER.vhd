library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity i2c_sender is
    port (
        clk   : in    std_logic;
        siod  : inout std_logic;
        sioc  : out   std_logic;


        resend   : in  STD_LOGIC;
        finished : out  STD_LOGIC
    );
end i2c_sender;

architecture behavioral of i2c_sender is
    -- this value gives a 254 cycle pause before the initial frame is sent
    signal divider    : unsigned (7 downto 0) := "00000001";
    signal busy_sr    : std_logic_vector(31 downto 0) := (others => '0');
    signal data_sr    : std_logic_vector(31 downto 0) := (others => '1');

    signal advance          : STD_LOGIC;
    signal sreg             : std_logic_vector(15 downto 0);
    signal address          : std_logic_vector(7 downto 0) := (others => '0');
    constant camera_address : std_logic_vector(7 downto 0) := x"42"; -- 42"; -- Device write ID - see top of page 11 of data signal
    signal send             : std_logic;
begin


    -- finish flag
    with sreg select finished  <= '1' when x"FFFF", '0' when others;
    with sreg select send  <= '0' when x"FFFF", '1' when others;

    -- send reg and data to i2c driver
    process(clk)
    begin
        if rising_edge(clk) then
            if resend = '1' then
                address <= (others => '0');
            elsif advance = '1' then
                address <= std_logic_vector(unsigned(address)+1);
            end if;

            case address is
                when x"00" => sreg <= x"1280"; -- COM7   Reset
                when x"01" => sreg <= x"1280"; -- COM7   Reset
                when x"02" => sreg <= x"1204"; -- COM7   Size & RGB output        
                when x"03" => sreg <= x"1140";
                when x"04" => sreg <= x"0C00";
                when x"05" => sreg <= x"3E00";
                when x"06" => sreg <= x"8C00";
                when x"07" => sreg <= x"0400";
                when x"08" => sreg <= x"40D0";
                when x"09" => sreg <= x"3A04";
                when x"0A" => sreg <= x"1438";
                when x"0B" => sreg <= x"4F40";
                when x"0C" => sreg <= x"5034";
                when x"0D" => sreg <= x"510C";
                when x"0E" => sreg <= x"5217";
                when x"0F" => sreg <= x"5329";
                when x"10" => sreg <= x"5440";
                when x"11" => sreg <= x"581E";
                when x"12" => sreg <= x"3DC0";
                when x"13" => sreg <= x"1140";
                when x"14" => sreg <= x"1711";
                when x"15" => sreg <= x"1861";
                when x"16" => sreg <= x"32A4";
                when x"17" => sreg <= x"1903";
                when x"18" => sreg <= x"1A7B";
                when x"19" => sreg <= x"030A";
                when x"1A" => sreg <= x"0E61";
                when x"1B" => sreg <= x"0F4B";
                when x"1C" => sreg <= x"1602";
                when x"1D" => sreg <= x"1E37";
                when x"1E" => sreg <= x"2102";
                when x"1F" => sreg <= x"2291";
                when x"20" => sreg <= x"2907";
                when x"21" => sreg <= x"330B";
                when x"22" => sreg <= x"350B";
                when x"23" => sreg <= x"371D";
                when x"24" => sreg <= x"3871";
                when x"25" => sreg <= x"392A";
                when x"26" => sreg <= x"3C78";
                when x"27" => sreg <= x"4D40";
                when x"28" => sreg <= x"4E20";
                when x"29" => sreg <= x"6900";
                when x"2A" => sreg <= x"6B0A";
                when x"2B" => sreg <= x"7410";
                when x"2C" => sreg <= x"8D4F";
                when x"2D" => sreg <= x"8E00";
                when x"2E" => sreg <= x"8F00";
                when x"2F" => sreg <= x"9000";
                when x"30" => sreg <= x"9100";
                when x"31" => sreg <= x"9600";
                when x"32" => sreg <= x"9A00";
                when x"33" => sreg <= x"B084";
                when x"34" => sreg <= x"B10C";
                when x"35" => sreg <= x"B20E";
                when x"36" => sreg <= x"B382";
                when x"37" => sreg <= x"B80A";
                when others => sreg <= x"ffff";
            end case;
        end if;
    end process;


    process(busy_sr, data_sr(31))
    begin
        if busy_sr(11 downto 10) = "10" or
            busy_sr(20 downto 19) = "10" or
            busy_sr(29 downto 28) = "10"  then 
            siod <= 'Z';
        else
            siod <= data_sr(31);
        end if;
    end process;


    process(clk)
    begin
        if rising_edge(clk) then
            advance <= '0';
            if busy_sr(31) = '0' then
                SIOC <= '1';
                if send = '1' then
                    if divider = "00000000" then
                        data_sr <= "100" &   camera_address & '0'  &   sreg(15 downto 8) & '0' & sreg(7 downto 0) & '0' & "01";
                        busy_sr <= "111" & "111111111" & "111111111" & "111111111" & "11";
                        advance <= '1';
                    else
                        divider <= divider+1; -- this only happens on powerup
                    end if;
                end if;
            else

                case busy_sr(32-1 downto 32-3) & busy_sr(2 downto 0) is
                    when "111"&"111" => -- start seq #1
                        case divider(7 downto 6) is
                            when "00"   => SIOC <= '1';
                            when "01"   => SIOC <= '1';
                            when "10"   => SIOC <= '1';
                            when others => SIOC <= '1';
                        end case;
                    when "111"&"110" => -- start seq #2
                        case divider(7 downto 6) is
                            when "00"   => SIOC <= '1';
                            when "01"   => SIOC <= '1';
                            when "10"   => SIOC <= '1';
                            when others => SIOC <= '1';
                        end case;
                    when "111"&"100" => -- start seq #3
                        case divider(7 downto 6) is
                            when "00"   => SIOC <= '0';
                            when "01"   => SIOC <= '0';
                            when "10"   => SIOC <= '0';
                            when others => SIOC <= '0';
                        end case;
                    when "110"&"000" => -- end seq #1
                        case divider(7 downto 6) is
                            when "00"   => SIOC <= '0';
                            when "01"   => SIOC <= '1';
                            when "10"   => SIOC <= '1';
                            when others => SIOC <= '1';
                        end case;
                    when "100"&"000" => -- end seq #2
                        case divider(7 downto 6) is
                            when "00"   => SIOC <= '1';
                            when "01"   => SIOC <= '1';
                            when "10"   => SIOC <= '1';
                            when others => SIOC <= '1';
                        end case;
                    when "000"&"000" => -- Idle
                        case divider(7 downto 6) is
                            when "00"   => SIOC <= '1';
                            when "01"   => SIOC <= '1';
                            when "10"   => SIOC <= '1';
                            when others => SIOC <= '1';
                        end case;
                    when others      =>
                        case divider(7 downto 6) is
                            when "00"   => SIOC <= '0';
                            when "01"   => SIOC <= '1';
                            when "10"   => SIOC <= '1';
                            when others => SIOC <= '0';
                        end case;
                end case;

                if divider = "11111111" then
                    busy_sr <= busy_sr(32-2 downto 0) & '0';
                    data_sr <= data_sr(32-2 downto 0) & '1';
                    divider <= (others => '0');
                else
                    divider <= divider+1;
                end if;
            end if;
        end if;
    end process;
end behavioral;