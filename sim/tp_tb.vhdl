library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity tp_tb is
end;

architecture arq of tp_tb is

   component split_1to8 is
    port(
           m_axis_tdata  : out STD_LOGIC_VECTOR (7 downto 0);
           m_axis_tvalid : out STD_LOGIC;
           m_axis_tlast  : out STD_LOGIC;
           m_axis_tready : in  STD_LOGIC;

           s_axis_tdata  : in  STD_LOGIC_VECTOR (7 downto 0);
           s_axis_tvalid : in  STD_LOGIC;
           s_axis_tlast  : in  STD_LOGIC;
           s_axis_tready : out STD_LOGIC;

           clk           : in  STD_LOGIC;
           rst           : in  STD_LOGIC);
   end component split_1to8;

   signal m_axis_tdata_tb  : STD_LOGIC_VECTOR (7 downto 0):=(others=>'0');
   signal m_axis_tvalid_tb : STD_LOGIC:='0';
   signal m_axis_tlast_tb  : STD_LOGIC:='0';
   signal m_axis_tready_tb : STD_LOGIC:='1';

   signal s_axis_tdata_tb  : STD_LOGIC_VECTOR (7 downto 0):="01110111";
   signal s_axis_tvalid_tb : STD_LOGIC:='1';
   signal s_axis_tlast_tb  : STD_LOGIC:='0';
   signal s_axis_tready_tb : STD_LOGIC:='0';
   signal clk_tb           : STD_LOGIC:='0';
   signal rst_tb           : STD_LOGIC:='0';

begin
   clk_tb   <= not clk_tb after 100 ns; --10Mhz
   rst_tb   <= '1' after 180 ns;

   test_proc:process(s_axis_tready_tb) is
   begin
      if rising_edge(s_axis_tready_tb) then
         s_axis_tdata_tb <= "10010101";
         end if;

   end process test_proc;

split_1to8_inst:split_1to8
    port map(  
           m_axis_tdata  =>m_axis_tdata_tb  ,
           m_axis_tvalid =>m_axis_tvalid_tb ,
           m_axis_tlast  =>m_axis_tlast_tb  ,
           m_axis_tready =>m_axis_tready_tb ,
           s_axis_tdata  =>s_axis_tdata_tb  ,
           s_axis_tvalid =>s_axis_tvalid_tb ,
           s_axis_tlast  =>s_axis_tlast_tb  ,
           s_axis_tready =>s_axis_tready_tb ,
           clk           =>clk_tb           ,
           rst           =>rst_tb           );

end arq;
