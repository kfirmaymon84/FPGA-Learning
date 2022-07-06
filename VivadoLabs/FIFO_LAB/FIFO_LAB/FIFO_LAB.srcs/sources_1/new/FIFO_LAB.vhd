library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity FIFO_LAB is
  Port (    CLK     : in std_logic;
            CLK2    : in std_logic;
            RESET   : in std_logic);
end FIFO_LAB;

architecture Behavioral of FIFO_LAB is
    COMPONENT fifo_generator_0
      PORT (
        rst : IN STD_LOGIC;
        wr_clk : IN STD_LOGIC;
        rd_clk : IN STD_LOGIC;
        din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        wr_en : IN STD_LOGIC;
        rd_en : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        full : OUT STD_LOGIC;
        empty : OUT STD_LOGIC;
        wr_rst_busy : OUT STD_LOGIC;
        rd_rst_busy : OUT STD_LOGIC
      );
    END COMPONENT;
        signal rst          : STD_LOGIC := '0';
        signal wr_clk       : STD_LOGIC := '0';
        signal rd_clk       : STD_LOGIC := '0';
        signal din          : STD_LOGIC_VECTOR(15 DOWNTO 0) := (others => '0');
        signal wr_en        : STD_LOGIC := '0';
        signal rd_en        : STD_LOGIC := '0';
        signal dout         : STD_LOGIC_VECTOR(15 DOWNTO 0) := (others => '0');
        signal full         : STD_LOGIC := '0';
        signal empty        : STD_LOGIC := '0';
        signal wr_rst_busy  : STD_LOGIC := '0';
        signal rd_rst_busy  : std_logic := '0';
        
    signal counterWr    : std_logic_vector ( 15 downto 0) := (others => '0');
    signal readBuff     : std_logic_vector ( 15 downto 0) := (others => '0');
begin
    FIFO_U1 : fifo_generator_0 port map (   rst => rst,
                                            wr_clk => wr_clk,
                                            rd_clk => rd_clk, 
                                            din => din, 
                                            wr_en => wr_en, 
                                            rd_en => rd_en, 
                                            dout => dout, 
                                            full => full, 
                                            empty => empty,
                                            wr_rst_busy => wr_rst_busy,
                                            rd_rst_busy => rd_rst_busy);
                                                
    -- counter
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                counterWr <= (others => '0');    
            else
                counterWr <= counterWr + 1;
            end if;
        end if;
    end process;

    -- Write
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                    
            else
                if wr_rst_busy = '0' and full = '0' then
                    wr_en <= '1';
                else
                    wr_en <= '0';                                        
                end if;
            end if;
        end if;
    end process;
    
    -- Read
    process(CLK2)
    begin
        if rising_edge(CLK2) then
            if RESET = '1' then
                                                
            else
                if empty = '0' and rd_rst_busy = '0' then
                    rd_en <= '1';
                else
                    rd_en <= '0';
                end if;                    
            end if;
        end if;
    end process;

    readBuff <= dout;
    din <= counterWr;
    wr_clk <= CLK;
    rd_clk <= CLK2;
end Behavioral;
