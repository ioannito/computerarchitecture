-- IOANNA THEOFILAKOU 3190062 - STEFANOS DIMITRAKOPOULOS 3130054 - ATHANASIOS TRIFONIS 3200298

library ieee;
use ieee.std_logic_1164.all;

entity OR_16 is
	port (in0, in1: in std_logic_vector(15 downto 0);
			out0: out std_logic_vector(15 downto 0));
end OR_16;

architecture logic of OR_16 is
begin
	out0 <= in0 or in1;
end logic;