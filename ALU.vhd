----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:48:45 04/04/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
entity ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
----------------------------------------------------------------------
------------------------31 signal for carry---------------------------
----------------------------------------------------------------------
signal c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,
		 c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30 : std_logic;
----------------------------------------------------------------------
------------------------32 signal for Result -------------------------
----------------------------------------------------------------------
signal R0,R1,R2,R3,R4,R5,R6,R7,R8,R9, R10,R11,R12,R13,R14,R15,R16,R17,
       R18,R19,R20,R21,R22,R23,R24,R25,R26,R27,R28,R29,R30,R31 : std_logic;
-------------------------32 signal for SET -------------------------
----------------------------------------------------------------------
signal D0,D1,D2,D3,D4,D5,D6,D7,D8,D9, D10,D11,D12,D13,D14,D15,D16,D17,
       D18,D19,D20,D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31 : std_logic;
signal output : std_logic;		 
signal offlag , c_out : std_logic ;
begin

----------------------------------------------------------------
-------------------create 32 Alu--------------------------------
---------------------------------------------------------------- 
ALU0  :  Bit1ALU port map (data1(0),data2(0),  D31,D0,aluop,cin,c0,R0);
ALU1  :  Bit1ALU port map (data1(1),data2(1),  '0',D1,aluop,c0,c1,R1);
ALU2  :  Bit1ALU port map (data1(2),data2(2),  '0',D2,aluop,c1,c2,R2);
ALU3  :  Bit1ALU port map (data1(3),data2(3),  '0',D3,aluop,c2,c3,R3); 
ALU4  :  Bit1ALU port map (data1(4),data2(4),  '0',D4,aluop,c3,c4,R4);
ALU5  :  Bit1ALU port map (data1(5),data2(5),  '0',D5,aluop,c4,c5,R5);
ALU6  :  Bit1ALU port map (data1(6),data2(6),  '0',D6,aluop,c5,c6,R6);
ALU7  :  Bit1ALU port map (data1(7),data2(7),  '0',D7,aluop,c6,c7,R7);
ALU8  :  Bit1ALU port map (data1(8),data2(8),  '0',D8,aluop,c7,c8,R8);
ALU9  :  Bit1ALU port map (data1(9),data2(9),  '0',D9,aluop,c8,c9,R9);
ALU10 :  Bit1ALU port map (data1(10),data2(10),'0',D10,aluop,c9,c10,R10);
ALU11 :  Bit1ALU port map (data1(11),data2(11),'0',D11,aluop,c10,c11,R11);
ALU12 :  Bit1ALU port map (data1(12),data2(12),'0',D12,aluop,c11,c12,R12);
ALU13 :  Bit1ALU port map (data1(13),data2(13),'0',D13,aluop,c12,c13,R13);
ALU14 :  Bit1ALU port map (data1(14),data2(14),'0',D14,aluop,c13,c14,R14);
ALU15 :  Bit1ALU port map (data1(15),data2(15),'0',D15,aluop,c14,c15,R15);
ALU16 :  Bit1ALU port map (data1(16),data2(16),'0',D16,aluop,c15,c16,R16);
ALU17 :  Bit1ALU port map (data1(17),data2(17),'0',D17,aluop,c16,c17,R17);
ALU18 :  Bit1ALU port map (data1(18),data2(18),'0',D18,aluop,c17,c18,R18);
ALU19 :  Bit1ALU port map (data1(19),data2(19),'0',D19,aluop,c18,c19,R19);
ALU20 :  Bit1ALU port map (data1(20),data2(20),'0',D20,aluop,c19,c20,R20);
ALU21 :  Bit1ALU port map (data1(21),data2(21),'0',D21,aluop,c20,c21,R21);
ALU22 :  Bit1ALU port map (data1(22),data2(22),'0',D22,aluop,c21,c22,R22);
ALU23 :  Bit1ALU port map (data1(23),data2(23),'0',D23,aluop,c22,c23,R23);
ALU24 :  Bit1ALU port map (data1(24),data2(24),'0',D24,aluop,c23,c24,R24);
ALU25 :  Bit1ALU port map (data1(25),data2(25),'0',D25,aluop,c24,c25,R25);
ALU26 :  Bit1ALU port map (data1(26),data2(26),'0',D26,aluop,c25,c26,R26);
ALU27 :  Bit1ALU port map (data1(27),data2(27),'0',D27,aluop,c26,c27,R27);
ALU28 :  Bit1ALU port map (data1(28),data2(28),'0',D28,aluop,c27,c28,R28);
ALU29 :  Bit1ALU port map (data1(29),data2(29),'0',D29,aluop,c28,c29,R29);
ALU30 :  Bit1ALU port map (data1(30),data2(30),'0',D30,aluop,c29,c30,R30);
ALU31 :  Bit1ALU port map (data1(31),data2(31),'0',D31,aluop,c30,c_out,R31);

cflag <= c_out ;--a5er carry out hwa yb2a cflag
--hna han3ml carry in xor m3 carry out y3chan ntla3 offlag
xor_gate1 : XOR_Gate port map (c30,c_out,offlag); 
oflag <= offlag;
----------------------------------------------------------------------------
-----------------output of my operation-------------------------------------
----------------------------------------------------------------------------

dataout(0) <= R0;
dataout(1) <= R1;
dataout(2) <= R2;
dataout(3) <= R3;
dataout(4) <= R4;
dataout(5) <= R5;
dataout(6) <= R6; 
dataout(7) <= R7;
dataout(8) <= R8;
dataout(9) <= R9;
dataout(10) <= R10;
dataout(11) <= R11;
dataout(12) <= R12;
dataout(13) <= R13;
dataout(14) <= R14;
dataout(15) <= R15;
dataout(16) <= R16;
dataout(17) <= R17;
dataout(18) <= R18;
dataout(19) <= R19;
dataout(20) <= R20; 
dataout(21) <= R21;
dataout(22) <= R22;
dataout(23) <= R23;
dataout(24) <= R24;
dataout(25) <= R25;
dataout(26) <= R26;
dataout(27) <= R27;
dataout(28) <= R28;
dataout(29) <= R29;
dataout(30) <= R30; 
dataout(31) <= R31;


output <= R0 or R1 or R2 or R3 or R4 or R4 or R5 or R6 or R7 or R8 or R9 or R10 or R11 or R12 or R13 or R14 or R15 or R16 or R17 or R18 or R19 or R20 or R21 or R22 or R23 or R24 or R25 or R26 or R27 or R28 or R29 or R30 or R31;
zflag <= NOT (output);
end Behavioral;

