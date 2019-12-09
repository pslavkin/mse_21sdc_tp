----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2019 04:59:29 PM
-- Design Name: 
-- Module Name: spi28b - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
    signal bitCount   : std_logic_vector (7 downto 0) := "00000001";

begin   
    process (clk)

        begin
            if rising_edge(clk) then
                if (cs = '0') then
                   
                    
                    mosiSignal(7 downto 1) <= mosiSignal(6 downto 0);
                    mosiSignal(0) <= spi_mosi;
                    
                    spi_miso <= misoSignal(7);
                    misoSignal(7 downto 1) <= misoSignal(6 downto 0);
                    
                    bitCount(7 downto 1) <= bitCount(6 downto 0);

                    if (bitCount = "00000000") then
                        misoSignal <= inData;
                        spi_miso   <= misoSignal(7);
                        outData    <= mosiSignal;
                        ledsData   <= mosiSignal(3 downto 0);
                        bitCount   <="00000001";
                        
                    end if;
                else 
                  bitCount   <="00000001";
                end if;
             end if;
        end process;

end Behavioral;