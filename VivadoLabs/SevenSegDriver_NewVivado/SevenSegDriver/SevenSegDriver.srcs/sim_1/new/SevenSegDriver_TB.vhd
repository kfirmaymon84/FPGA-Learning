-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 3.5.2022 13:02:27 UTC

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_unsigned.all;

entity tb_seveSegDriver is
end tb_seveSegDriver;

architecture tb of tb_seveSegDriver is

    component seveSegDriver
        port (clk    : in std_logic;
              reset  : in std_logic;
              numIn  : in std_logic_vector (22 downto 0);
              dp     : in std_logic_vector (2 downto 0);
              segOut : out std_logic_vector (7 downto 0);
              segEn  : out std_logic_vector (7 downto 0));
    end component;

    signal clk    : std_logic := '0';
    signal reset  : std_logic := '0';
    signal numIn  : std_logic_vector (22 downto 0) := (others => '0');
    signal dp     : std_logic_vector (2 downto 0) := (others => '0');
    signal segOut : std_logic_vector (7 downto 0) := (others => '0');
    signal segEn  : std_logic_vector (7 downto 0) := (others => '0');

begin

    dut : seveSegDriver
    port map (clk    => clk,
              reset  => reset,
              numIn  => numIn,
              dp     => dp,
              segOut => segOut,
              segEn  => segEn);

    -- Clock generation
    clk <= not clk after 5 ns;

    reset <= '1' , '0' after 100 ns;
end tb;