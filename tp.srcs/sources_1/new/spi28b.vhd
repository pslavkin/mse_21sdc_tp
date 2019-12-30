library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity spi28b is
    Port ( spi_mosi : in    STD_LOGIC;
           spi_miso : out   STD_LOGIC;
           cs       : in    std_logic;
           outData  : out   std_logic_vector (7 downto 0);
           inData   : in    std_logic_vector (7 downto 0);
           ledsData : out   std_logic_vector (3 downto 0);
           clk      : in    STD_LOGIC);
end spi28b;

architecture Behavioral of spi28b is
    signal mosiSignal : std_logic_vector (7 downto 0) := (others => '0');
    signal misoSignal : std_logic_vector (7 downto 0) := (others => '0');

begin   
--   cs_proc:process (cs) is
--        begin
--           if falling_edge(cs) then
--              misoSignal <= inData;
--           end if;
--        end process cs_proc;

   spi_proc:process (clk,cs) is
       variable count: integer range 0 to 8 :=0;
        begin
            if rising_edge(clk) then
                if (cs = '0') then
                    mosiSignal <= mosiSignal(6 downto 0) & spi_mosi;
                    spi_miso   <= misoSignal(7-count);
                    count      := count +1;
                    if (count = 8) then
                       outData              <= mosiSignal(6 downto 0) & spi_mosi;
                       ledsData(2 downto 0) <= mosiSignal(1 downto 0) & spi_mosi;
                       count                := 0;
                    end if;
                end if;
             end if;
           if falling_edge(cs) then
              misoSignal <= inData;
           end if;
           if cs = '1' then
              count := 0;
           end if;
        end process;
        ledsData(3)   <= cs;
end Behavioral;
