library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity VGA_Driver is
    Port (
        vga_r : out std_logic_vector(3 downto 0);
        vga_g : out std_logic_vector(3 downto 0);
        vga_b : out std_logic_vector(3 downto 0);
        vga_hs : out std_logic;
        vga_vs : out std_logic;
        
        addressOut  : out std_logic_vector (18 downto 0);
        dataIn      : in std_logic_vector (11 downto 0);
        clk         : in std_logic;
        reset       : in std_logic
    );
end VGA_Driver;

architecture Behavioral of VGA_Driver is
    signal pix_clock : std_logic := '0';
    signal clk_2 : std_logic := '0';
    signal h_cnt : unsigned(9 downto 0) := (others => '0');
    signal v_cnt : unsigned(9 downto 0) := (others => '0');
begin
    clk_div_2: process(clk, reset)
    begin
        if (reset = '1') then
            clk_2 <= '0';
        elsif rising_edge(clk) then
            clk_2 <= not clk_2;
        end if;
    end process;

    pix_clk_gen: process(clk_2, reset)
    begin
        if (reset = '1') then
            pix_clock <= '0';
        elsif rising_edge(clk_2) then
            pix_clock <= not pix_clock;
        end if;
    end process;

    control: process(pix_clock, reset)
    begin

        if (reset = '1') then
            h_cnt <= to_unsigned(0, h_cnt'length);
            v_cnt <= to_unsigned(0, v_cnt'length);
        elsif rising_edge(pix_clock) then

            if (h_cnt < 640 and v_cnt < 480) then
                if (h_cnt = 0 or v_cnt = 0 or
                    h_cnt = 639 or v_cnt = 479) then
                    vga_r <= X"F";
                    vga_g <= X"0";
                    vga_b <= X"0";
                elsif (h_cnt(0) = '1' and v_cnt(1) = '1') then
                    vga_r <= X"F";
                    vga_g <= X"F";
                    vga_b <= X"F";
                else
                    vga_r <= X"0";
                    vga_g <= X"F";
                    vga_b <= X"0";
                end if;
            else
                vga_r <= X"0";
                vga_g <= X"0";
                vga_b <= X"0";
            end if;

            if (h_cnt < 800) then
                h_cnt <= h_cnt + 1;
            else
                h_cnt <= to_unsigned(0, h_cnt'length);
                if (v_cnt < 524) then
                    v_cnt <= v_cnt + 1;
                else
                    v_cnt <= to_unsigned(0, v_cnt'length);
                end if;
            end if;
        end if;
    end process;

    vga_hs <= '0' when h_cnt >= (640+16) and h_cnt < (640 + 16 + 96) else '1'; -- H sync pulse
    vga_vs <= '0' when v_cnt >= (480 + 10) and v_cnt < (480 + 10 + 2) else '1'; -- Y sync pulse
end Behavioral;
