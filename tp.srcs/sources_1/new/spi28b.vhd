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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spi28b is
    Port ( spi_mosi : in STD_LOGIC;
           spi_miso : out STD_LOGIC;
           clk : in STD_LOGIC);
end spi28b;

architecture Behavioral of spi28b is

begin
    spi_miso <= not spi_mosi;

end Behavioral;
