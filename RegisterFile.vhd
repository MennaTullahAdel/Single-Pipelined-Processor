----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:51:43 03/31/2017 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
library work;
use IEEE.STD_LOGIC_1164.ALL;
use work.Reg_Package.all;	

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is
--------------------------------------------------------------------------------
-----------------------------32 signal for load---------------------------------
-------------------------------------------------------------------------------- 
SIGNAL Load0 : STD_LOGIC ;
SIGNAL Load1 : STD_LOGIC ;
SIGNAL Load2 : STD_LOGIC ;
SIGNAL Load3 : STD_LOGIC ;
SIGNAL Load4 : STD_LOGIC ;
SIGNAL Load5 : STD_LOGIC ;
SIGNAL Load6 : STD_LOGIC ;
SIGNAL Load7 : STD_LOGIC ;
SIGNAL Load8 : STD_LOGIC ;
SIGNAL Load9 : STD_LOGIC ;
SIGNAL Load10 : STD_LOGIC ;
SIGNAL Load11 : STD_LOGIC ;
SIGNAL Load12 : STD_LOGIC ;
SIGNAL Load13 : STD_LOGIC ;
SIGNAL Load14 : STD_LOGIC ;
SIGNAL Load15 : STD_LOGIC ;
SIGNAL Load16 : STD_LOGIC ;
SIGNAL Load17 : STD_LOGIC ;
SIGNAL Load18 : STD_LOGIC ;
SIGNAL Load19 : STD_LOGIC ;
SIGNAL Load20 : STD_LOGIC ;
SIGNAL Load21 : STD_LOGIC ;
SIGNAL Load22 : STD_LOGIC ;
SIGNAL Load23 : STD_LOGIC ;
SIGNAL Load24 : STD_LOGIC ;
SIGNAL Load25 : STD_LOGIC ;
SIGNAL Load26 : STD_LOGIC ;
SIGNAL Load27 : STD_LOGIC ;
SIGNAL Load28 : STD_LOGIC ;
SIGNAL Load29 : STD_LOGIC ;
SIGNAL Load30 : STD_LOGIC ;
SIGNAL Load31 : STD_LOGIC ;
--------------------------------------------------------------------------------
-----------------------------32 signal for Rigisters----------------------------
-------------------------------------------------------------------------------- 
SIGNAL Rigister0out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister1out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister2out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister3out: STD_LOGIC_VECTOR (31 DOWNTO 0); 
SIGNAL Rigister4out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister5out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister6out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister7out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister8out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister9out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister10out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister11out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister12out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister13out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister14out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister15out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister16out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister17out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister18out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister19out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister20out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister21out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister22out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister23out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister24out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister25out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister26out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister27out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister28out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister29out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister30out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Rigister31out: STD_LOGIC_VECTOR (31 DOWNTO 0);
--------------------------------------------------------------------------------
-----------------------------signal for Output----------------------------------
-------------------------------------------------------------------------------- 
SIGNAL Output: STD_LOGIC_VECTOR (31 DOWNTO 0);       
begin
--------------------------------------------------------------------------------
---------------------Load=Output+Enable(1 Or 0)---------------------------------
-------------------------------------------------------------------------------- 
Load0 <= output(0) AND write_ena ;
Load1 <= output(1) AND write_ena ;
Load2 <= output(2) AND write_ena ;
Load3 <= output(3) AND write_ena ;
Load4 <= output(4) AND write_ena ;
Load5 <= output(5) AND write_ena ;
Load6 <= output(6) AND write_ena ;
Load7 <= output(7) AND write_ena ;
Load8 <= output(8) AND write_ena ;
Load9 <= output(9) AND write_ena ;
Load10 <= output(10) AND write_ena ;
Load11 <= output(11) AND write_ena ;
Load12 <= output(12) AND write_ena ;
Load13 <= output(13) AND write_ena ;
Load14 <= output(14) AND write_ena ;
Load15 <= output(15) AND write_ena ;
Load16 <= output(16) AND write_ena ;
Load17 <= output(17) AND write_ena ;
Load18 <= output(18) AND write_ena ;
Load19 <= output(19) AND write_ena ;
Load20 <= output(20) AND write_ena ;
Load21 <= output(21) AND write_ena ;
Load22 <= output(22) AND write_ena ;
Load23 <= output(23) AND write_ena ;
Load24 <= output(24) AND write_ena ;
Load25 <= output(25) AND write_ena ;
Load26 <= output(26) AND write_ena ;
Load27 <= output(27) AND write_ena ;
Load28 <= output(28) AND write_ena ;
Load29 <= output(29) AND write_ena ;
Load30 <= output(30) AND write_ena ;
Load31 <= output(31) AND write_ena ;
--------------------------------------------------------------------------------
-------------------------create object from register----------------------------
--------------------------------------------------------------------------------
 Rigister0: reg32_0 PORT MAP  (write_data,clk,Load0,'0','0', Rigister0out);
 Rigister1: reg PORT MAP  (write_data,clk,Load1,'0','0', Rigister1out);
 Rigister2: reg PORT MAP  (write_data,clk,Load2,'0','0', Rigister2out);
 Rigister3: reg PORT MAP  (write_data,clk,Load3,'0','0', Rigister3out);
 Rigister4: reg PORT MAP  (write_data,clk,Load4,'0','0', Rigister4out);
 Rigister5: reg PORT MAP  (write_data,clk,Load5,'0','0', Rigister5out);
 Rigister6: reg PORT MAP  (write_data,clk,Load6,'0','0', Rigister6out);
 Rigister7: reg PORT MAP  (write_data,clk,Load7,'0','0', Rigister7out);
 Rigister8: reg PORT MAP  (write_data,clk,Load8,'0','0', Rigister8out);
 Rigister9: reg PORT MAP  (write_data,clk,Load9,'0','0', Rigister9out);
 Rigister10: reg PORT MAP (write_data,clk,Load10,'0','0', Rigister10out);
 Rigister11: reg PORT MAP (write_data,clk,Load11,'0','0', Rigister11out);
 Rigister12: reg PORT MAP (write_data,clk,Load12,'0','0', Rigister12out);
 Rigister13: reg PORT MAP (write_data,clk,Load13,'0','0', Rigister13out);
 Rigister14: reg PORT MAP (write_data,clk,Load14,'0','0', Rigister14out);
 Rigister15: reg PORT MAP (write_data,clk,Load15,'0','0', Rigister15out);
 Rigister16: reg PORT MAP (write_data,clk,Load16,'0','0', Rigister16out);
 Rigister17: reg PORT MAP (write_data,clk,Load17,'0','0', Rigister17out);
 Rigister18: reg PORT MAP (write_data,clk,Load18,'0','0', Rigister18out);
 Rigister19: reg PORT MAP (write_data,clk,Load19,'0','0', Rigister19out);
 Rigister20: reg PORT MAP (write_data,clk,Load20,'0','0', Rigister20out);
 Rigister21: reg PORT MAP (write_data,clk,Load21,'0','0', Rigister21out);
 Rigister22: reg PORT MAP (write_data,clk,Load22,'0','0', Rigister22out);
 Rigister23: reg PORT MAP (write_data,clk,Load23,'0','0', Rigister23out);
 Rigister24: reg PORT MAP (write_data,clk,Load24,'0','0', Rigister24out);
 Rigister25: reg PORT MAP (write_data,clk,Load25,'0','0', Rigister25out);
 Rigister26: reg PORT MAP (write_data,clk,Load26,'0','0', Rigister26out);
 Rigister27: reg PORT MAP (write_data,clk,Load27,'0','0', Rigister27out);
 Rigister28: reg PORT MAP (write_data,clk,Load28,'0','0', Rigister28out);
 Rigister29: reg PORT MAP (write_data,clk,Load29,'0','0', Rigister29out);
 Rigister30: reg PORT MAP (write_data,clk,Load30,'0','0', Rigister30out); 
 Rigister31: reg PORT MAP (write_data,clk,Load31,'0','0', Rigister31out);
 ----------------------------------------------------------------------------
 --------------------Add Mux and Decoder------------------------------------- 
 ---------------------------------------------------------------------------- 
Decoder1 :decoder  PORT MAP (write_sel,'1',Output);
Multiplexer1 :mux1 PORT MAP (Rigister0out, Rigister1out,Rigister2out, Rigister3out, Rigister4out, Rigister5out, Rigister6out, Rigister7out, Rigister8out, Rigister9out, Rigister10out, Rigister11out, Rigister12out, Rigister13out, Rigister14out, Rigister15out, Rigister16out, Rigister17out, Rigister18out, Rigister19out, Rigister20out, Rigister21out, Rigister22out, Rigister23out, Rigister24out, Rigister25out, Rigister26out, Rigister27out, Rigister28out, Rigister29out, Rigister30out, Rigister31out,read_sel1,data1); 
Multiplexer2 :mux1 PORT MAP (Rigister0out, Rigister1out,Rigister2out, Rigister3out, Rigister4out, Rigister5out, Rigister6out, Rigister7out, Rigister8out, Rigister9out, Rigister10out, Rigister11out, Rigister12out, Rigister13out, Rigister14out, Rigister15out, Rigister16out, Rigister17out, Rigister18out, Rigister19out, Rigister20out, Rigister21out, Rigister22out, Rigister23out, Rigister24out, Rigister25out, Rigister26out, Rigister27out, Rigister28out, Rigister29out, Rigister30out, Rigister31out,read_sel2,data2); 
end Behavioral;