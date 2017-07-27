
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use Ieee.STD_LOGIC_UNSIGNED.all;
entity reg is
GENERIC(n:NATURAL :=32);

	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0)
		   );

end reg;

architecture Behavioral of reg is
SIGNAL temp: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
BEGIN
	PROCESS(clk)
	BEGIN
	IF(CLK'event AND CLK='0')THEN
		IF(LD ='1') THEN
			temp <= I;
		ELSIF (INC='1')THEN
			temp <= temp +1;
		ELSIF(CLR='1') THEN
			temp <=(others =>'0');
		END IF;
	END IF;
	END PROCESS;
	O <= temp; 
end Behavioral;

