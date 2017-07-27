----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:55:38 05/01/2017 
-- Design Name: 
-- Module Name:    ALU_CONTROL - Behavioral 
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

entity ALU_CONTROL is
    Port ( F: in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOP0 : in  STD_LOGIC;
           ALUOP1 : in  STD_LOGIC;
           OPERATION : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_CONTROL;

architecture Behavioral of ALU_CONTROL is
signal tmp0 : std_logic ;
signal tmp1 : std_logic ;
signal tmp2 : std_logic ;
signal tmp3 : std_logic ;
signal tmp4 : std_logic ;


begin
tmp0 <= F(0) or F(3);
tmp1 <= tmp0 and ALUOP1 ;
tmp2 <= F(0) and F(1);
tmp3 <= F(1) and ALUOP1 ;
tmp4 <= tmp2 and ALUOP1;
OPERATION(3) <= tmp4;
OPERATION(2)<= tmp3 or ALUOP0;
OPERATION(1)<= not (ALUOP1) or not(F(2));
OPERATION(0)<= not(tmp4) and tmp1;
end Behavioral;

