----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:03:55 04/05/2017 
-- Design Name: 
-- Module Name:    Bit1ALU - Behavioral 
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
use work.OneBitALU.ALL;
entity Bit1ALU is
Port ( 
			  A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  LESS : in  STD_LOGIC; --***********************************************
			  Set : out  STD_LOGIC;--****************************************
			  ALU_OP : in STD_LOGIC_VECTOR (3 downto 0);
           CIN : in  STD_LOGIC;
           COUT : out  STD_LOGIC;
			  Result: out STD_LOGIC 
			  );
			  
			  
end Bit1ALU;

architecture Behavioral of Bit1ALU is
signal tmpb ,restadd ,tmpa : std_logic ;
--
 signal as :STD_logic;
 signal as1 :STD_logic;
 signal Binvert : STD_logic;
 signal Ainvert : STD_logic;
begin

Binvert <= not(B);
Ainvert <= not(A);
Mux1 : Mux21 port map( B , Binvert , ALU_OP(2) , tmpb); --B & Bó
Mux2 :  Mux21 port map (A ,Ainvert , ALU_OP(3) , tmpa);  --A & Aó **************************************************
as <= tmpa and tmpb;
as1<= tmpa or tmpb;
Adder1  :fulladder port map (tmpa , tmpb ,  CIN ,restadd ,COUT );
Set <= restadd;
Mux4X1 : Mux port map(as, as1 , restadd , LESS , ALU_OP(1 downto 0), Result); --*************************
end Behavioral;

