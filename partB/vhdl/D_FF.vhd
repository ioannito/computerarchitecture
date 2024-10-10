-- IOANNA THEOFILAKOU 3190062 - STEFANOS DIMITRAKOPOULOS 3130054 - ATHANASIOS TRIFONIS 3200298

library ieee;
use ieee.std_logic_1164.all;


entity D_FF is
port (in0, clock, enable: in std_logic ;
	   out0: out std_logic ); 
end D_FF;

architecture logic of D_FF is 
 
   signal s1, s2, s3, s4, s5, s6, afterClock : std_logic;
	
begin
	s3 <= s1 nand s4;
	s1 <= afterClock nand s3;
	s2 <= not(afterClock and s4 and s1);
	s4 <= in0 nand s2;
	s5 <= s1 nand s6;
	s6 <= s5 nand s2;
	afterClock <= enable and clock;
	out0 <= s5;
	
end logic;