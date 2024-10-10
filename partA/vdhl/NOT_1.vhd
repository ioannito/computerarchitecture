-- IOANNA THEOFILAKOU 3190062 - STEFANOS DIMITRAKOPOULOS 3130054 - ATHANASIOS TRIFONIS 3200298

library ieee;
use ieee.std_logic_1164.all;

entity NOT_1 is
port( in0: in std_logic;
		out0: out std_logic
	 );
end NOT_1;

architecture logic of NOT_1 is
begin
	out0 <= not in0;
end logic;