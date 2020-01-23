library ieee; --{{{
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity all_tb is
end; --}}}
architecture arq of all_tb is --{{{
   type   axiStates is (waitingSvalid, waitingMready);
   signal state   :axiStates := waitingSvalid; --}}}

   signal clk_tb            : STD_LOGIC:= '0';
   signal rst_tb            : STD_LOGIC:= '0';
   component slice_1from8 is --{{{
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
   end component slice_1from8; --}}}
   component slice_2from8 is --{{{
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
   end component slice_2from8; --}}}
   component mapper is --{{{
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
   end component mapper; --}}}
   component cordic is --{{{
   generic(
             N     : natural := 16; --Ancho de la palabra
             ITER  : natural := 10); -- numero de iteraciones por defecto
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
   end component cordic; --}}}
   component join_16from8 is --{{{
    port(
           m_axis_tdata  : out STD_LOGIC_VECTOR (15 downto 0);
           m_axis_tvalid : out STD_LOGIC;
           m_axis_tlast  : out STD_LOGIC;
           m_axis_tready : in  STD_LOGIC;

           s_axis_tdata  : in  STD_LOGIC_VECTOR (7 downto 0);
           s_axis_tvalid : in  STD_LOGIC;
           s_axis_tlast  : in  STD_LOGIC;
           s_axis_tready : out STD_LOGIC;

           m_axis_config_tdata  : out STD_LOGIC_VECTOR (7 downto 0);
           m_axis_config_tvalid : out STD_LOGIC;
           m_axis_config_tready : in  STD_LOGIC;

           clk           : in  STD_LOGIC;
           rst           : in  STD_LOGIC);
   end component join_16from8; --}}}
   component join_48from16 is --{{{
    port(
           m_axis_tdata  : out STD_LOGIC_VECTOR (47 downto 0);
           m_axis_tvalid : out STD_LOGIC;
           m_axis_tlast  : out STD_LOGIC;
           m_axis_tready : in  STD_LOGIC;

           s_axis_tdata  : in  STD_LOGIC_VECTOR (15 downto 0);
           s_axis_tvalid : in  STD_LOGIC;
           s_axis_tlast  : in  STD_LOGIC;
           s_axis_tready : out STD_LOGIC;

           clk           : in  STD_LOGIC;
           rst           : in  STD_LOGIC);
   end component join_48from16; --}}}
   component slice_8from48 is --{{{
    port(
           m_axis_tdata         : out STD_LOGIC_VECTOR (7  downto 0);
           m_axis_tvalid        : out STD_LOGIC;
           m_axis_tlast         : out STD_LOGIC;
           m_axis_tready        : in  STD_LOGIC;

           s_axis_tdata         : in  STD_LOGIC_VECTOR (47 downto 0);
           s_axis_tvalid        : in  STD_LOGIC;
           s_axis_tlast         : in  STD_LOGIC;
           s_axis_tready        : out STD_LOGIC;

           m_axis_config_tdata  : out STD_LOGIC_VECTOR (7  downto 0);
           m_axis_config_tvalid : out STD_LOGIC;
           m_axis_config_tready : in  STD_LOGIC;

           clk                  : in  STD_LOGIC;
           rst                  : in  STD_LOGIC);
   end component slice_8from48; --}}}

   signal m1_axis_tdata:  STD_LOGIC_VECTOR (7 downto 0):=(others=>'0'); --{{{
   signal m1_axis_tvalid: STD_LOGIC:='0';
   signal m1_axis_tlast:  STD_LOGIC:='0';
   signal m1_axis_tready: STD_LOGIC:='1';
   signal s1_axis_tdata:  STD_LOGIC_VECTOR (7 downto 0):= (others=>'0');
   signal s1_axis_tvalid: STD_LOGIC:='1';
   signal s1_axis_tlast:  STD_LOGIC:='0';
   signal s1_axis_tready: STD_LOGIC:='0'; --}}}
   signal axis2_tdata:  STD_LOGIC_VECTOR (7 downto 0):=(others=>'0'); --{{{
   signal axis2_tvalid: STD_LOGIC:='0';
   signal axis2_tlast:  STD_LOGIC:='0';
   signal axis2_tready: STD_LOGIC:='0'; --}}}
   signal axis3_tdata:  STD_LOGIC_VECTOR (7 downto 0):=(others=>'0'); --{{{
   signal axis3_tvalid: STD_LOGIC:='0';
   signal axis3_tlast:  STD_LOGIC:='0';
   signal axis3_tready: STD_LOGIC:='0'; --}}}
   signal axis4_tdata:  STD_LOGIC_VECTOR (7 downto 0):=(others=>'0'); --{{{
   signal axis4_tvalid: STD_LOGIC:='0';
   signal axis4_tlast:  STD_LOGIC:='0';
   signal axis4_tready: STD_LOGIC:='0'; --}}}
   signal axisO_tdata:  STD_LOGIC_VECTOR (7 downto 0):=(others=>'0');  --{{{
   signal axisO_tvalid: STD_LOGIC:='0';
   signal axisO_tlast:  STD_LOGIC:='0';
   signal axisO_tready: STD_LOGIC:='1';  --}}}
   signal axis10_tdata:  STD_LOGIC_VECTOR (15 downto 0):=(others=>'0'); --{{{
   signal axis10_tvalid: STD_LOGIC:='0';
   signal axis10_tlast:  STD_LOGIC:='0';
   signal axis10_tready: STD_LOGIC:='0'; --}}}
   signal axis11_tdata:  STD_LOGIC_VECTOR (15 downto 0):=(others=>'0'); --{{{
   signal axis11_tvalid: STD_LOGIC:='0';
   signal axis11_tlast:  STD_LOGIC:='0';
   signal axis11_tready: STD_LOGIC:='0'; --}}}
   signal axis20_tdata:  STD_LOGIC_VECTOR (47 downto 0):=(others=>'0'); --{{{
   signal axis20_tvalid: STD_LOGIC:='0';
   signal axis20_tlast:  STD_LOGIC:='0';
   signal axis20_tready: STD_LOGIC:='0'; --}}}


begin
   clk_tb   <= not clk_tb after 100 ns; --10Mhz
   rst_tb   <= '1' after 180 ns;
   axi_master_proc:process (clk_tb) is --{{{
      variable bitCounter :integer range 0 to 8;
      variable data :integer range -128 to 127:=0;
      variable data1 :std_logic_vector (3 downto 0);
      variable data2 :natural range 0 to 15;
   begin
      if rising_edge(clk_tb) then
         if rst_tb = '0' then
            state          <= waitingSvalid;
            s1_axis_tready <= '1';
            s1_axis_tvalid <= '1'; --que haga de cuentqa que siempre tiene un dato
            m1_axis_tvalid <= '0';
            m1_axis_tdata  <= (others => '0');
            data           := 0;
            data2          := 0;
         else
            case state is
               when waitingSvalid =>
                  if s1_axis_tvalid= '1' then                           --espero e que este listo para enviar algo
                     s1_axis_tready <='0';
                     bitCounter     := 0;
  --                   data1 := std_logic_vector(to_unsigned(data2,4));
  --                   if data2= 15 then
  --                      data2 := 0;
  --                   else
  --                      data2 := data2 + 1;
  --                   end if;
                       data := data+1;
                       if data = 120 then
                          data := -120;
                       end if;
                       m1_axis_tdata  <= std_logic_vector(to_signed(data,8));
  --                   m1_axis_tdata  <= "000000" & data1(1 downto 0);
                     --m1_axis_tdata  <= "0000" & data1(3 downto 0);
                     m1_axis_tvalid <= '1';                         --como puedo mandar, le avoso que tengo dato
                     state          <= waitingMready;               --cambio de estado, y le doy un clk para que ponga el dato
                  end if;
               when waitingMready =>
                  if m1_axis_tready= '1' then                           --lo puedo empezar a mandar al otro lado?
                     bitCounter := bitCounter+1;                     --incremento
                     if bitCounter < 2 then                             --perfecto, porque bit voy?   
                      --  m1_axis_tdata  <= "000000" & data1(3 downto 2);
                        m1_axis_tdata<= std_logic_vector(to_signed(data,8));
                     else
                        m1_axis_tvalid <= '0';
                        s1_axis_tready <= '1';
                        state          <= waitingSvalid;                    --cambio de estado, y le doy un clk para que ponga el dato
                     end if;
                  end if;
            end case;
         end if;
      end if;
   end process axi_master_proc; --}}}
--slice_1from8_inst:slice_1from8 --{{{
--    port map(  
--           m_axis_tdata  =>s3_axis_tdata,
--           m_axis_tvalid =>s3_axis_tvalid,
--           m_axis_tlast  =>s3_axis_tlast,
--           m_axis_tready =>s3_axis_tready,
--           s_axis_tdata  =>m3_axis_tdata,
--           s_axis_tvalid =>m3_axis_tvalid,
--           s_axis_tlast  =>m3_axis_tlast,
--           s_axis_tready =>m3_axis_tready,
--           clk           =>clk_tb           ,
--           rst           =>rst_tb           ); --}}}
--slice_2from8_inst:slice_2from8 --{{{
--    port map(  
--           m_axis_tdata  =>s3_axis_tdata,
--           m_axis_tvalid =>s3_axis_tvalid,
--           m_axis_tlast  =>s3_axis_tlast,
--           m_axis_tready =>s3_axis_tready,
--           s_axis_tdata  =>m3_axis_tdata,
--           s_axis_tvalid =>m3_axis_tvalid,
--           s_axis_tlast  =>m3_axis_tlast,
--           s_axis_tready =>m3_axis_tready,
--           clk           =>clk_tb           ,
--           rst           =>rst_tb           ); --}}}
--mapper_inst:mapper --{{{
--    port map(
--           m_axis_tdata  =>axis2_tdata,
--           m_axis_tvalid =>axis2_tvalid,
--           m_axis_tlast  =>axis2_tlast,
--           m_axis_tready =>axis2_tready,
--           s_axis_tdata  =>m1_axis_tdata,
--           s_axis_tvalid =>m1_axis_tvalid,
--           s_axis_tlast  =>m1_axis_tlast,
--           s_axis_tready =>m1_axis_tready,
--           clk           =>clk_tb           ,
--           rst           =>rst_tb           ); --}}}
--coordic_inst:cordic --{{{
--   generic map(
--             N     => 16,
--             ITER  => 10)
--    port map(  
--           m_axis_tdata  =>axisO_tdata,
--           m_axis_tvalid =>axisO_tvalid,
--           m_axis_tlast  >axisO_tlast,
--           m_axis_tready =>axisO_tready,
--           s_axis_tdata  =>axis2_tdata,
--           s_axis_tvalid =>axis2_tvalid,
--           s_axis_tlast  =>axis2_tlast,
--           s_axis_tready =>axis2_tready,
--           clk           =>clk_tb           ,
--           rst           =>rst_tb           ); --}}}

join_16from8_inst:join_16from8 --{{{
    port map(  
           m_axis_tdata         => axis10_tdata,
           m_axis_tvalid        => axis10_tvalid,
           m_axis_tlast         => axis10_tlast,
           m_axis_tready        => axis10_tready,
           s_axis_tdata         => m1_axis_tdata,
           s_axis_tvalid        => m1_axis_tvalid,
           s_axis_tlast         => m1_axis_tlast,
           s_axis_tready        => m1_axis_tready,
           m_axis_config_tdata  => axis4_tdata,
           m_axis_config_tvalid => axis4_tvalid,
           m_axis_config_tready => axis4_tready,
           clk                  => clk_tb           ,
           rst                  => rst_tb           ); --}}}
join_48from16_inst:join_48from16 --{{{
    port map(  
           m_axis_tdata         => axis20_tdata,
           m_axis_tvalid        => axis20_tvalid,
           m_axis_tlast         => axis20_tlast,
           m_axis_tready        => axis20_tready,
           s_axis_tdata         => axis10_tdata,
           s_axis_tvalid        => axis10_tvalid,
           s_axis_tlast         => axis10_tlast,
           s_axis_tready        => axis10_tready,
           clk                  => clk_tb ,
           rst                  => rst_tb           ); --}}}
slice_8from48_inst:slice_8from48 --{{{
    port map(  
           m_axis_tdata         => axisO_tdata,
           m_axis_tvalid        => axisO_tvalid,
           m_axis_tlast         => axisO_tlast,
           m_axis_tready        => axisO_tready,
           s_axis_tdata         => axis20_tdata,
           s_axis_tvalid        => axis20_tvalid,
           s_axis_tlast         => axis20_tlast,
           s_axis_tready        => axis20_tready,
           m_axis_config_tdata  => axis3_tdata,
           m_axis_config_tvalid => axis3_tvalid,
           m_axis_config_tready => axis3_tready,
           clk                  => clk_tb ,
           rst                  => rst_tb ); --}}}

end arq;
