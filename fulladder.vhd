
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity fulladder is
 port(A, B,CIN: in  std_logic;
       SUM, COUT: out std_logic);
end fulladder;

architecture Behavioral of fulladder is
signal tmp: STD_LOGIC_VECTOR (1 downto 0);
begin
 tmp <= ('0' & A ) + ('0' & B ) + ('0' & CIN );
 SUM <= tmp(0);
 COUT <= tmp(1);
end Behavioral; 
