-- IOANNA THEOFILAKOU 3190062 - STEFANOS DIMITRAKOPOULOS 3130054 - ATHANASIOS TRIFONIS 3200298

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity AND_2 is 
port ( in0: in std_logic;
		 in1: in std_logic;
		 out0: out std_logic
	  );
end AND_2;

architecture logic of AND_2 is
begin
	out0 <= in0 and in1;
end logic;