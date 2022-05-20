library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity ClockLab is
    Port ( CLK : in STD_LOGIC;
         SW : in STD_LOGIC;
         LED : out STD_LOGIC_VECTOR (4 downto 0));
end ClockLab;

architecture Behavioral of ClockLab is
    component clk_wiz_0
        port
(-- Clock in ports
        -- Clock out ports
            clk_out1          : out    std_logic;
            clk_out2          : out    std_logic;
            clk_out3          : out    std_logic;
            clk_out4          : out    std_logic;
            -- Status and control signals
            reset             : in     std_logic;
            locked            : out    std_logic;
            clk_in1           : in     std_logic
        );
    end component;

    signal CLK_OUT1 : std_logic := '0';
    signal CLK_OUT2 : std_logic := '0';
    signal CLK_OUT3 : std_logic := '0';
    signal CLK_OUT4 : std_logic := '0';
    signal locked : std_logic := '0';

    signal count1 : std_logic_vector (9 downto 0) := (others => '0');
    signal count2 : std_logic_vector (9 downto 0) := (others => '0');
    signal count3 : std_logic_vector (9 downto 0) := (others => '0');
    signal count4 : std_logic_vector (9 downto 0) := (others => '0');

begin
    CLK_U1 : clk_wiz_0 port map ( clk_out1 => CLK_OUT1, clk_out2 => CLK_OUT2, clk_out3 => CLK_OUT3, clk_out4 => CLK_OUT4, reset => SW, locked => locked, clk_in1 => CLK);

    process(CLK_OUT1)
    begin
        if rising_edge(CLK_OUT1) and locked = '1' then
            if SW = '1' then
                LED(0) <= '0';
                count1 <= (others => '0');
            else
                LED(0) <= count1(9);
            end if;
        end if;
        count1 <= count1 + 1;
    end process;

    process(CLK_OUT2)
    begin
        if rising_edge(CLK_OUT2) and locked = '1' then
            if SW = '1' then
                LED(1) <= '0';
                count2 <= (others => '0');
            else
                LED(1) <= count2(9);
            end if;
            count2 <= count2 + 1;
        end if;
    end process;

    process(CLK_OUT3)
    begin
        if rising_edge(CLK_OUT3) and locked = '1' then
            if SW = '1' then
                LED(2) <= '0';
                count3 <= (others => '0');
            else
                LED(2) <= count3(9);
            end if;
            count3 <= count3 + 1;
        end if;
    end process;

    process(CLK_OUT4)
    begin
        if rising_edge(CLK_OUT4) and locked = '1' then
            if SW = '1' then
                LED(3) <= '0';
                count4 <= (others => '0');
            else
                LED(3) <= count4(9);
            end if;
            count4 <= count4 + 1;
        end if;
    end process;

end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity ClockLab is
    Port ( CLK : in STD_LOGIC;
         SW : in STD_LOGIC;
         LED : out STD_LOGIC_VECTOR (4 downto 0));
end ClockLab;

architecture Behavioral of ClockLab is
    component clk_wiz_0
        port
(-- Clock in ports
        -- Clock out ports
            clk_out1          : out    std_logic;
            clk_out2          : out    std_logic;
            clk_out3          : out    std_logic;
            clk_out4          : out    std_logic;
            -- Status and control signals
            reset             : in     std_logic;
            locked            : out    std_logic;
            clk_in1           : in     std_logic
        );
    end component;

    signal CLK_OUT1 : std_logic := '0';
    signal CLK_OUT2 : std_logic := '0';
    signal CLK_OUT3 : std_logic := '0';
    signal CLK_OUT4 : std_logic := '0';
    signal locked : std_logic := '0';

    signal count1 : std_logic_vector (9 downto 0) := (others => '0');
    signal count2 : std_logic_vector (9 downto 0) := (others => '0');
    signal count3 : std_logic_vector (9 downto 0) := (others => '0');
    signal count4 : std_logic_vector (9 downto 0) := (others => '0');

begin
    CLK_U1 : clk_wiz_0 port map ( clk_out1 => CLK_OUT1, clk_out2 => CLK_OUT2, clk_out3 => CLK_OUT3, clk_out4 => CLK_OUT4, reset => SW, locked => locked, clk_in1 => CLK);

    process(CLK_OUT1)
    begin
        if rising_edge(CLK_OUT1) then
            if SW = '1' or locked = '0' then
                count1 <= (others => '0');
            else
                count1 <= count1 + 1;
            end if;
        end if;
    end process;

    process(CLK_OUT2)
    begin
        if rising_edge(CLK_OUT2) then
            if SW = '1' or locked = '0' then
                count2 <= (others => '0');
            else
                count2 <= count2 + 1;
            end if;
        end if;
    end process;

    process(CLK_OUT3)
    begin
        if rising_edge(CLK_OUT3) then
            if SW = '1' or locked = '0' then
                count3 <= (others => '0');
            else
                count3 <= count3 + 1;
            end if;
        end if;
    end process;

    process(CLK_OUT4)
    begin
        if rising_edge(CLK_OUT4) then
            if SW = '1' or locked = '0' then
                count4 <= (others => '0');
            else
                count4 <= count4 + 1;
            end if;
        end if;
    end process;
    
    LED(0) <= count1(9);
    LED(1) <= count2(9);
    LED(2) <= count3(9);
    LED(3) <= count4(9);
    LED(4) <= locked;
end Behavioral;
