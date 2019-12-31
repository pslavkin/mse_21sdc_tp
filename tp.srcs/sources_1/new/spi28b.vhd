library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity spi28b is
    Port ( spi_mosi : in    STD_LOGIC;
           stop_data: out   STD_LOGIC;
           spi_miso : out   STD_LOGIC;
           cs       : in    std_logic;
           outData  : out   std_logic_vector (7 downto 0);
           inData   : in    std_logic_vector (7 downto 0);
           ledsData : out   std_logic_vector (3 downto 0);
           spi_clk  : in    STD_LOGIC;
           sys_clk  : in    STD_LOGIC);
end spi28b;

architecture Behavioral of spi28b is
    signal mosiSignal : std_logic_vector (7 downto 0) := (others => '0');
    signal misoSignal : std_logic_vector (7 downto 0) := (others => '0');
    signal stop_state : STD_LOGIC :='0';

begin   
   stop_proc:process (sys_clk) is
      variable counter : integer range 0 to 50000000 :=0;
        begin
           if rising_edge(sys_clk) then
              counter := counter + 1;
              if counter = 20000000 then
                 counter := 0;
                 stop_state <= not stop_state;
              end if;
           end if;
        end process stop_proc;
        stop_data <= stop_state;

   spi_proc:process (spi_clk,cs) is
       variable count: integer range 0 to 8 :=0;
        begin
            if rising_edge(spi_clk) then
                if (cs = '0') then
                    mosiSignal <= mosiSignal(6 downto 0) & spi_mosi;
                    spi_miso   <= misoSignal(7-count);
                    count      := count +1;
                    if (count = 8) then
                       outData              <= mosiSignal(6 downto 0) & spi_mosi;
                       ledsData(1 downto 0) <= mosiSignal(0 downto 0) & spi_mosi;
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
        ledsData(3 downto 2)   <= cs & stop_state;
end Behavioral;
