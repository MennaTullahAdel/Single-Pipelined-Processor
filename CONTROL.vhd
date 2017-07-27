----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:17:16 05/01/2017 
-- Design Name: 
-- Module Name:    CONTROL - Behavioral 
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

entity CONTROL is
    Port ( input : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
			  MemtoReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
			  MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           ALUOp0 : out  STD_LOGIC;
           ALUOp1 : out  STD_LOGIC;
           Jump : out  STD_LOGIC;
			  bne: out  STD_LOGIC
			  );
end CONTROL;

architecture Behavioral of CONTROL is
signal RType : std_logic;
signal lw : std_logic;
signal sw : std_logic;
signal beq : std_logic;
begin
RType <= not(input(0)) and not(input(1)) and not(input(2)) and not(input(3)) and not(input(4)) and not(input(5)) ;
lw <= input(0) and input(1) and not(input(2)) and not(input(3)) and not(input(4)) and input(5) ;
sw <= input(0) and input(1) and not(input(2)) and input(3) and not(input(4)) and input(5) ;
beq <= not(input(0)) and not(input(1)) and input(2) and not(input(3)) and not(input(4)) and not(input(5)) ;
Jump <= not(input(0)) and input(1) and not(input(2)) and not(input(3)) and not(input(4)) and not(input(5)) ;
bne <= input(0) and not(input(1)) and input(2) and not(input(3)) and not(input(4)) and not(input(5)) ;
RegDst <= RType;
ALUSrc <= lw or sw;
MemtoReg <= lw;
RegWrite <= RType or lw;
MemRead <= lw;
MemWrite <= sw;
Branch <= beq;
ALUOp1 <= RType;
ALUOp0 <= beq;
end Behavioral;

