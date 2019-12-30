library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity tp_tb is
end;

architecture arq of tp_tb is
   component spi28b is
    port ( spi_mosi : in    STD_LOGIC;
           spi_miso : out   STD_LOGIC;
           cs       : in    std_logic;
           outData  : out   std_logic_vector (7 downto 0);
           inData   : in    std_logic_vector (7 downto 0);
           ledsData : out   std_logic_vector (3 downto 0);
           clk      : in    STD_LOGIC
        );
   end component;

    signal spi_mosi_tb : STD_LOGIC;
    signal spi_miso_tb : STD_LOGIC;
    signal cs_tb       : std_logic := '1';
    signal outData_tb  : std_logic_vector (7 downto 0) := "01010101";
    signal inData_tb   : std_logic_vector (7 downto 0) := "00000000";
    signal ledsData_tb : std_logic_vector (3 downto 0);
    signal clk_tb      : STD_LOGIC := '0';
    signal rst_tb      : STD_LOGIC;
    signal ii          : integer;

    signal mosiData_tb  : std_logic_vector (7 downto 0):="00000000";
      
begin
--   clk_tb   <= not clk_tb after 20 ns;
   rst_tb   <= '0';
--   cs_tb    <= not cs_tb after 320 ns;
               --'0' after 5 ns;


   cs_proc: process is
   begin
      clk_tb <= '1';
      cs_tb <= '1';
      wait for 100 ns;
      cs_tb<='0';
      wait for 100 ns;
      clk_loop:for k in 0 to 15 loop
         wait for 100 ns;
         clk_tb <= not clk_tb;
      end loop clk_loop;
      wait for 100 ns;
      cs_tb <= '1';
      wait for 1000 ns;
   end process;

   spi_proc: process(clk_tb)
      variable i              :integer   := 0;
      variable inData_integer :integer   := 0;
      variable mosiData_integer :integer := 100;

      begin
         if falling_edge(clk_tb)  then
            if cs_tb = '0' then
               i:=i+1;
               spi_mosi_tb <= mosiData_tb(7);
               if(i/=8) then
                  mosiData_tb <= mosiData_tb(6 downto 0) & '0';
               else
                  i                := 0;
                  mosiData_integer := mosiData_integer+1;
                  mosiData_tb      <= std_logic_vector (to_unsigned(mosiData_integer,mosiData_tb'length));
                  inData_integer   := inData_integer+1;
                  inData_tb        <= std_logic_vector (to_unsigned(inData_integer,inData_tb'length));
               end if;
            else 
               i:=0;
               mosiData_tb      <= std_logic_vector (to_unsigned(mosiData_integer,mosiData_tb'length));
            end if;
         end if;
      ii<=i;
   end process;

   spi_inst: spi28b
    port map ( 
                spi_mosi => spi_mosi_tb,
                spi_miso => spi_miso_tb,
                cs       => cs_tb      ,
                outData  => outData_tb ,
                inData   => outData_tb , --inData_tb  ,
                ledsData => ledsData_tb,
                clk      => clk_tb
        );

end arq;
