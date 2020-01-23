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
          m_dataX : out STD_LOGIC_VECTOR (N-1 downto 0);
          m_dataY : out STD_LOGIC_VECTOR (N-1 downto 0);
          m_dataZ : out STD_LOGIC_VECTOR (N-1 downto 0);
          m_valid : out STD_LOGIC;
          m_inv   : out STD_LOGIC;
          m_ready : in  STD_LOGIC;

          s_dataX : in  STD_LOGIC_VECTOR (N-1 downto 0);
          s_dataY : in  STD_LOGIC_VECTOR (N-1 downto 0);
          s_dataZ : in  STD_LOGIC_VECTOR (N-1 downto 0);
          s_dataT : in  STD_LOGIC_VECTOR (N-1 downto 0);
          s_valid : in  STD_LOGIC;
          s_ready : out STD_LOGIC;
          s_inv   : in  STD_LOGIC;

          clk           : in  STD_LOGIC;
          rst           : in  STD_LOGIC);
   end component; --}}}

   constant SCALE : natural :=18000;
   constant MAX_ITER : natural := 10;  -- maximo largo de la tabla. ITER puede ir de aca para abajo 
   type   axiStates   is (waitingSvalid, waitingMready);
   signal preState  : axiStates := waitingSvalid;
   signal posState  : axiStates := waitingSvalid;
   type   xyDataArray is array (0 to 1) of std_logic_vector ( 7 downto 0 );
   signal xyData    : xyDataArray;
   signal angle     : std_logic_vector(N-1 downto 0):= (others=>'0');

   --con esta dos lineas defino una sere de cables para interconectar las instancias del pipeline del Cordic
   -- notar el detalle que tiene ITER+1 cable porque se desperdicia un cable pero permite hacer la logica de intercoinexion en el for-generate sin problemas
   type   handShakeVector is array ( ITER downto 0 )of std_logic                     ;
   signal validW, readyW, inv  : handShakeVector:= (others=>'0');

   --defino los cables de datos para la interconexion de las instancias del cordica
   --tambien desperdicio uno al final, son ITER+1 cables
   type   ConnectVector is array   ( ITER downto 0 )      of std_logic_vector (N-1 downto 0);
   signal wirex, wirey, wirez, wireLUT: ConnectVector;

   --defino una tabla con los angulos tal que su arcotangente da 1/2**N (la magia de don Cordic)
   type   intLUT        is array   ( MAX_ITER-1 downto 0 )of integer          range 0 to 2**16  ; --la tabla soporta hasta MAX_ITER, pero en la instanciacino del cordic se puede elejir menos o igual.. no mas porque reviente.. la tabla no tendria datos..
   signal atanLUT : intLUT       := (4500, 2657, 1404, 713, 358, 179, 90, 45, 22, 11);
--   signal atanLUT : intLUT       := (25736,15193,8027,4075,2045,1024,512,256,128,64);
--   signal atanLUT : intLUT       := ( 804,475,251,127,64,32,16,8,4,2);
--   signal atanLUT : intLUT       := ( 512,302,160,81,41,20,10,5,3,1);
begin
   pre_cordic_proc:process (clk) is --{{{
      variable bitCounter :integer range 0 to 8 ;
   begin
      if rising_edge(clk) then
         if rst = '0' then
            preState      <= waitingSvalid;
            s_axis_tready <= '1';
            validW(0)     <= '0';
            inv(0)        <= '0';
            bitCounter    := 0;
         else
            case preState is
               when waitingSvalid =>
                  if s_axis_tvalid = '1' then                                                               --espero a que entren datos
                     bitCounter := bitCounter + 1;                                                          --espero 2 datos de 8 bits.. primero X luego Y
                     case bitCounter is
                        when 1 =>                                                                           --X
                          if s_axis_tdata(7)='1' then                                                       --corrijo cuadrante si X es negativo y lo informo en inv
                             inv(0)   <= '1';
                             wirex(0) <= std_logic_vector(to_signed(to_integer(-signed(s_axis_tdata)),N));
                          else
                             inv(0)   <= '0';
                             wirex(0) <= std_logic_vector(to_signed(to_integer(signed(s_axis_tdata)),N));
                          end if;
                        when 2 =>                                                                           --el y se copia tal cual
                          wirey(0) <= std_logic_vector(to_signed(to_integer(signed(s_axis_tdata)),N));
                          if inv(0)='1' then                                                                --si hay cambio de cuadrante aprovecho para sumarle un offset del angulo al Z
                             if s_axis_tdata(7)='1' then
                                wirez(0) <= std_logic_vector(to_signed(SCALE,wirez(0)'length));
                             else 
                                wirez(0) <= std_logic_vector(to_signed(-SCALE,wirez(0)'length));
                             end if;
                          else 
                             wirez(0) <= (others=>'0');
                          end if;
                          validW(0)     <= '1';
                          s_axis_tready <= '0';
                          preState      <= waitingMready;
                        when others =>
                     end case;
                  else
                  end if;
               when waitingMready =>
                  if readyW(0) = '1' then                           --espero e que este listo para enviar algo
                     validW(0)     <= '0';
                     s_axis_tready <= '1';                          --entonces yo tambien estoy listo
                     preState      <= waitingSvalid;
                     bitCounter    := 0;
                  end if;
               when others =>
            end case;
         end if;
      end if;
   end process pre_cordic_proc; --}}}

   pos_cordic_proc:process (clk) is --{{{
      variable bitCounter :integer range 0 to 8 ;
      variable angleVar     : signed(N-1 downto 0);
   begin
      if rising_edge(clk) then
         if rst = '0' then
            posState      <= waitingSvalid;
            m_axis_tvalid <= '0';
            m_axis_tdata  <= (others => '0');
            angle         <= (others => '0');
            readyW(ITER)  <= '1';                           --y ya no tengo mas nada
            bitCounter := 0;
         else
            case posState is
               when waitingSvalid =>
                  if validW(ITER) = '1' then                           --espero e que este listo para enviar algo
                     if inv(ITER-1)='1'  then
                        angleVar := -signed(wirez(ITER-1));
                     else
                        angleVar := signed(wirez(ITER-1));
                     end if;
                     m_axis_tdata  <= std_logic_vector(angleVar(7 downto 0));
                     angle         <= std_logic_vector(angleVar);
                     readyW(ITER)  <= '0';
                     m_axis_tvalid <= '1';
                     bitCounter    := 0;
                     posState      <= waitingMready;
                  end if;
                  when waitingMready =>
                     if m_axis_tready = '1' then
                        bitCounter    := bitCounter + 1;
                        if bitCounter =  1 then
                           m_axis_tvalid <= '1';--y aviso que no tengo mas nada que mandar state         <= waitingSvalid;                 --termine de mandar, vuelvo a esperar
                           m_axis_tdata  <= std_logic_vector(angleVar(N-1 downto 8));
                        else
                           m_axis_tvalid <= '0';
                           bitCounter    := 0;
                           posState      <= waitingSvalid;            --cambio de estado, y le doy un clk para que ponga el dato
                           readyW(ITER)  <= '1';
                        end if;
                     else
                        m_axis_tvalid <= '0';
                     end if;
               end case;
            end if;
         end if;
   end process pos_cordic_proc; --}}}

   connection_instance: for j in 0 to ITER-1 generate
   begin
      wireLUT(j) <= std_logic_vector(to_unsigned(atanLUT(ITER-1-j),N));
      iteration: cordic_iter
      generic map(N,j)
      port  map (
           m_dataX => wirex    ( j+1 ),
           m_dataY => wirey    ( j+1 ),
           m_dataZ => wirez    ( j+1 ),
           m_valid => validW   ( j+1 ),
           m_inv   => inv      ( j+1 ),
           m_ready => readyW   ( j+1 ),

           s_dataX => wirex    ( j   ),
           s_dataY => wirey    ( j   ),
           s_dataZ => wirez    ( j   ),
           s_dataT => wireLUT  ( j   ),
           s_valid => validW   ( j   ),
           s_ready => readyW   ( j   ),
           s_inv   => inv      ( j   ),

           clk     => clk,
           rst     => rst
         );
   end generate;

end architecture;
