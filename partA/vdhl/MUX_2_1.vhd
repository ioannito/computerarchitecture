-- IOANNA THEOFILAKOU 3190062 - STEFANOS DIMITRAKOPOULOS 3130054 - ATHANASIOS TRIFONIS 3200298

library ieee;
use ieee.std_logic_1164.all;

entity MUX_2_1 is
    port(add_c, sub_c: in std_logic;
         s:     in std_logic_vector(2 downto 0);
         out0: out std_logic);
end MUX_2_1;

architecture logic of MUX_2_1 is
begin
	  with s select
			out0 <=   add_c when "000", 
			sub_c when "001",
			'0' when others;
end logic;