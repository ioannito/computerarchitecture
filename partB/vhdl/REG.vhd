-- IOANNA THEOFILAKOU 3190062 - STEFANOS DIMITRAKOPOULOS 3130054 - ATHANASIOS TRIFONIS 3200298

library ieee;
use ieee.std_logic_1164.all;

entity REG is
port (
		in0: in std_logic_vector(15 downto 0);
		clock, enable: in std_logic;
		out0: out std_logic_vector(15 downto 0)
);
END REG;

architecture structural  of REG is
	component D_FF is
		port (in0, clock, enable: in std_logic;
				out0: out std_logic);
	end component;
begin
	V0: D_FF port map(in0(0), clock, enable, out0(0));
	V1: D_FF port map(in0(1), clock, enable, out0(1));
	V2: D_FF port map(in0(2), clock, enable, out0(2));
	V3: D_FF port map(in0(3), clock, enable, out0(3));
	V4: D_FF port map(in0(4), clock, enable, out0(4));
	V5: D_FF port map(in0(5), clock, enable, out0(5));
	V6: D_FF port map(in0(6), clock, enable, out0(6));
	V7: D_FF port map(in0(7), clock, enable, out0(7));
	V8: D_FF port map(in0(8), clock, enable, out0(8));
	V9: D_FF port map(in0(9), clock, enable, out0(9));
	V10: D_FF port map(in0(10), clock, enable, out0(10));
	V11: D_FF port map(in0(11), clock, enable, out0(11));
	V12: D_FF port map(in0(12), clock, enable, out0(12));
	V13: D_FF port map(in0(13), clock, enable, out0(13));
	V14: D_FF port map(in0(14), clock, enable, out0(14));
	V15: D_FF port map(in0(15), clock, enable, out0(15));
end structural;