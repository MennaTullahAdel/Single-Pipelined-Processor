

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package OneBitALU is
component Mux is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S0 : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end component;

component fulladder is
     port(A, B,CIN: in  std_logic;
       SUM, COUT: out std_logic);
end component;

component Mux21 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC;
           O : out  STD_LOGIC);
end component;

component XOR_Gate is
Port( A : in std_logic;
		B : in std_logic;
		Y : out std_logic
		);
end component;

component Bit1ALU is
Port ( 
			  A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  LESS : in  STD_LOGIC;
			  Set : out  STD_LOGIC;
			  ALU_OP : in STD_LOGIC_VECTOR (3 downto 0);
           CIN : in  STD_LOGIC;
           COUT : out  STD_LOGIC;
			  Result: out STD_LOGIC 
			  );
end component;

end OneBitALU;

package body OneBitALU is

 
end OneBitALU;
