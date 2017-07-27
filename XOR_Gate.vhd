library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity XOR_Gate is

Port(
      A : in std_logic;
		B : in std_logic;
		Y : out std_logic
		); 
end XOR_Gate;

architecture Behavioral of XOR_Gate is
signal tmp0 : std_logic ;
signal tmp1 : std_logic ;
signal tmp2 : std_logic ;
begin

tmp0 <=  A and B ;
tmp1 <= A or B ;
tmp2 <= not tmp0;
Y <= tmp1 and tmp2;

end Behavioral;