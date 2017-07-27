library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Reg_Package is

COMPONENT  reg IS
	GENERIC(n:NATURAL :=32);

	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0)
		   );

END COMPONENT;
COMPONENT mux1 is
    Port ( I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10 : in  STD_LOGIC_VECTOR (31 downto 0);
           I11,I12,I13,I14,I15,I16,I17,I18,I19,I20 : in  STD_LOGIC_VECTOR (31 downto 0);
           I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31 : in  STD_LOGIC_VECTOR (31 downto 0);
           S : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;

COMPONENT decoder IS
 PORT (
  I:IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
  E:IN  STD_LOGIC;
  O:OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END COMPONENT;

component reg32_1  is
PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));

end component;

component reg32_0  is
GENERIC(n:NATURAL := 32);
PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));

end component;
end Reg_Package ;
