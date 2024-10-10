-- IOANNA THEOFILAKOU 3190062 - STEFANOS DIMITRAKOPOULOS 3130054 - ATHANASIOS TRIFONIS 3200298

library ieee;
use ieee.std_logic_1164.all;

-- MY_CIRCUIT 
entity MY_CIRCUIT is
	port (
	A, B: in std_logic_vector(15 downto 0);
	op: in std_logic_vector(2 downto 0); 
	clock, enable, carry_in: in std_logic;
	data1, data2, ALURes, output: out std_logic_vector(15 downto 0);
	overflow: out std_logic
			);
end MY_CIRCUIT;

architecture structural of MY_CIRCUIT is

	component REG
	port (
		in0: in std_logic_vector(15 downto 0);
		clock: in std_logic;
		enable: in std_logic;
		out0: out std_logic_vector(15 downto 0)
			);
	end component;

	component ALU_16
	port (
		A, B: in std_logic_vector(15 downto 0);
		carry_in: in std_logic;
		op: in std_logic_vector(2 downto 0);	
		result: out std_logic_vector(15 downto 0);
		overflow: out std_logic
			);	
	end component;
	
	signal s1, s2, s3, s4: std_logic_vector(15 downto 0);
	begin
		V0: REG port map (A, clock, enable, s1);
		V1: REG port map (B, clock, enable, s2);
		V2: ALU_16 port map (s1, s2, carry_in, op, s3, overflow);
		V3: REG port map (s3, clock, enable, s4);
		data1 <= s1;
		data2 <= s2;
		ALURes <= s3;
		output <= s4;
		
end structural;
