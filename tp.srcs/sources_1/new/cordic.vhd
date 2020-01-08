library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cordic is --{{{
   generic(
             N     : natural := 16; --Ancho de la palabra
             ITER  : natural := 10); -- numero de iteraciones por defecto
   Port(
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
end cordic; --}}}

architecture Behavioral of cordic is

   component cordic_iter is --{{{
      generic(
             N     : natural := 16; --Ancho de la palabra
             SHIFT : natural := 1); -- en el for generate va tomando valores en funcion de la posicion en el pipeline 
      port(
             clk   : in  std_logic;
             rst   : in  std_logic;
             en_i  : in  std_logic;
             inv_i : in  std_logic;
             xi    : in  std_logic_vector (N-1 downto 0);
             yi    : in  std_logic_vector (N-1 downto 0);
             zi    : in  std_logic_vector (N-1 downto 0);
             ci    : in  std_logic_vector (N-1 downto 0);
             dv_o  : out std_logic;
             inv_o : out std_logic;
             xip1  : out std_logic_vector (N-1 downto 0);
             yip1  : out std_logic_vector (N-1 downto 0);
             zip1  : out std_logic_vector (N-1 downto 0)
          );
   end component; --}}}

   constant MAX_ITER : natural := 10;  -- maximo largo de la tabla. ITER puede ir de aca para abajo 
   type   axiStates   is (waitingSvalid, waitingMready,waitingCordic);
   signal state     : axiStates := waitingSvalid;
   type   xyDataArray is array (0 to 1) of std_logic_vector ( 7 downto 0 );
   signal xyData    : xyDataArray;
   signal clockWise : std_logic := '0';
   signal angle     : std_logic_vector(N-1 downto 0):= (others=>'0');
   

   type   handShakeVector is array ( ITER downto 0 )of std_logic                     ;
   type   ConnectVector is array   ( ITER downto 0 )of std_logic_vector(N-1 downto 0);
   type   intLUT is array          ( MAX_ITER-1 downto 0 )of integer range 0 to 5000  ; --la tabla soporta hasta MAX_ITER, pero en la instanciacino del cordic se puede elejir menos o igual.. no mas porque reviente.. la tabla no tendria datos..
   signal en, dv, inv            : handShakeVector:= (others=>'0');
   signal wirex, wirey, wirez, wireLUT: ConnectVector;
   signal atanLUT                     : intLUT       := (4500, 2657, 1404, 713, 358, 179, 90, 45, 22, 11);

begin
   cordic_proc:process (clk) is --{{{
      variable bitCounter :integer range 0 to 8 ;

      variable sign :signed (15 downto 0);
      variable extension :std_logic_vector (15 downto 0);
   begin
      if rising_edge(clk) then
         if rst = '0' then
            state         <= waitingSvalid;
            s_axis_tready <= '1';
            m_axis_tvalid <= '0';
            m_axis_tdata  <= (others => '0');
            clockWise     <= '0';
            angle         <= (others => '0');
            en(0)         <= '0';                           --y ya no tengo mas nada
            inv(0)        <= '0';                           --y ya no tengo mas nada
            bitCounter    := 0;
         else
            case state is
               when waitingSvalid =>
                  if s_axis_tvalid = '1' then                           --espero e que este listo para enviar algo
                     case bitCounter is
                        when 0 =>
                          wirex(0) <= (others=>'0');
                          if s_axis_tdata(7)='1' then
                             inv(0)   <= '1';
                             wirex(0) <= std_logic_vector(to_signed(to_integer(-signed(s_axis_tdata)),16));
                          else
                             inv(0)   <= '0';
                             wirex(0) <= std_logic_vector(to_signed(to_integer(signed(s_axis_tdata)),16));
                          end if;
                        when 1 =>
                          wirey(0) <= (others=>'0');
                          wirey(0) <= std_logic_vector(to_signed(to_integer(signed(s_axis_tdata)),16));
                          if inv(0)='1' then
                             if s_axis_tdata(7)='1' then
                                wirez(0) <= std_logic_vector(to_signed(18000,wirez(0)'length));
                             else 
                                wirez(0) <= std_logic_vector(to_signed(-18000,wirez(0)'length));
                             end if;
                          else 
                                wirez(0) <= (others=>'0');
                          end if;
                          en(0)                <= '1';                           --y ya no tengo mas nada
                          s_axis_tready        <= '0';                           --entonces yo tambien estoy listo
                          m_axis_tvalid        <= '0';                           --y ya no tengo mas nada
                          state                <= waitingCordic;
                        when others =>
                     end case;
                     bitCounter := bitCounter + 1;
                  end if;
               when waitingCordic =>
                  en ( 0 )<= '0';
                  if dv(0) = '1' then                           --espero e que este listo para enviar algo
                     m_axis_tdata  <= wirex(ITER-1)(7 downto 0);
                     m_axis_tvalid <= '1';                           --y ya no tengo mas nada
                     state         <= waitingMready;
                     bitCounter    := 0;
                  end if;

               when waitingMready =>
                  if m_axis_tready = '1' then                      --lo puedo empezar a mandar al otro lado?
                    bitCounter := bitCounter+1;                   --incremento
                     case bitCounter is
                        when 1 =>
                           m_axis_tdata <= wirey(ITER-1)(7 downto 0);
                        when 2 =>
                           if(inv(ITER-1)='1') then
                              angle <= std_logic_vector(-signed(wirez(ITER-1)));
                              m_axis_tdata <= std_logic_vector(-signed(wirez(ITER-1)(14 downto 7)));
                           else
                              angle <= std_logic_vector(signed(wirez(ITER-1)));
                              m_axis_tdata <= wirez(ITER-1)(14 downto 7);
                           end if;
                           m_axis_tvalid <= '0';                      --y aviso que no tengo mas nada que mandar state         <= waitingSvalid;                 --termine de mandar, vuelvo a esperar
                           s_axis_tready <= '1';
                           bitCounter    := 0;
                           state         <= waitingSvalid;            --cambio de estado, y le doy un clk para que ponga el dato
                        when others =>
                     end case;
                  end if;
            end case;
         end if;
      end if;
   end process cordic_proc; --}}}


   connection_instance: for j in 0 to ITER-1 generate
   begin
      wireLUT(j) <= std_logic_vector(to_unsigned(atanLUT(ITER-1-j),N));
      iteration: cordic_iter
      generic map(N,j)
      port map(
                 clk   => clk,
                 rst   => rst,
                 en_i  => en      ( j   ),
                 inv_i => inv     ( j   ),
                 xi    => wirex   ( j   ),
                 yi    => wirey   ( j   ),
                 zi    => wirez   ( j   ),
                 ci    => wireLUT ( j   ),
                 dv_o  => dv      ( j   ),
                 inv_o => inv     ( j+1 ),
                 xip1  => wirex   ( j+1 ),
                 yip1  => wirey   ( j+1 ),
                 zip1  => wirez   ( j+1 )
              );
         en(j+1)<=dv(j);
   end generate;

end architecture;
