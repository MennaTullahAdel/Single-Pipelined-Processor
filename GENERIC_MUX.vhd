----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:59:11 05/01/2017 
-- Design Name: 
-- Module Name:    GENERIC_MUX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



entity GENERIC_MUX is

generic ( n : natural);
    Port ( A : in  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
           B : in  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
           S : in  STD_LOGIC;
           o : out  STD_LOGIC_VECTOR (n-1 DOWNTO 0));

end GENERIC_MUX;

architecture Behavioral of GENERIC_MUX is

begin

O <= A when S = '0' else
	  B when S = '1' ;
end Behavioral;

