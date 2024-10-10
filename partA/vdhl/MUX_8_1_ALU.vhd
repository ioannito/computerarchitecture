-- IOANNA THEOFILAKOU 3190062 - STEFANOS DIMITRAKOPOULOS 3130054 - ATHANASIOS TRIFONIS 3200298

library ieee;
use ieee.std_logic_1164.all;

entity MUX_8_1_ALU is
	port (add_op, sub_op, and_op, or_op, geq_op, not_op, xor_op, nor_op: in std_logic_vector(15 downto 0);
			s: 	in std_logic_vector(2 downto 0);
			out0: out std_logic_vector(15 downto 0));
	end MUX_8_1_ALU;

architecture logic of MUX_8_1_ALU is
begin
	with s select
	out0 <=   add_op when "000",
					 sub_op when "001",
					 and_op  when "010",
					 or_op when "011",
					 geq_op when "100",
					 not_op when "101",
					 xor_op when "110",
					 nor_op when "111";
end logic;