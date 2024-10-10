-- IOANNA THEOFILAKOU 3190062 - STEFANOS DIMITRAKOPOULOS 3130054 - ATHANASIOS TRIFONIS 3200298

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity ALU_16 is 
      port(A, B: in std_logic_vector(15 downto 0);
			  carry_in: in std_logic;
		     op: in std_logic_vector(2 downto 0);
		     result: out std_logic_vector(15 downto 0);
			  overflow: out std_logic);
end ALU_16;

architecture structural of ALU_16 is

	component FULLADDER_16
	port (in0, in1: in std_logic_vector(15 downto 0);
		  carry_in: in std_logic;
		  sum: out std_logic_vector(15 downto 0);
		  carry_out: out std_logic
         );
	end component;

   component FULLSUBTRACTOR_16
	port (in0, in1: in std_logic_vector(15 downto 0);
		  carry_in: in std_logic;
		  sub: out std_logic_vector(15 downto 0);
		  carry_out: out std_logic
         );
	end component;

	component AND_16
	port (in0, in1: in std_logic_vector(15 downto 0);
			out0: out std_logic_vector(15 downto 0));
	end component;
	
	component OR_16
	port (in0, in1: in std_logic_vector(15 downto 0);
			out0: out std_logic_vector(15 downto 0));
	end component;
	
	component GEQ
	port (in0: in std_logic_vector(15 downto 0);
			out0: out std_logic_vector(15 downto 0));
	end component;
	
	component NOT_16
	port (in0: in std_logic_vector(15 downto 0);
			out0: out std_logic_vector(15 downto 0));
	end component;
	
	component XOR_16
	port (in0, in1: in std_logic_vector(15 downto 0);
			out0: out std_logic_vector(15 downto 0));
	end component;
	
	component NOR_16
	port (in0, in1: in std_logic_vector(15 downto 0);
			out0: out std_logic_vector(15 downto 0));
	end component;
	
		component MUX_2_1
    port(add_c, sub_c: in std_logic;
         s:     in std_logic_vector(2 downto 0);
         out0: out std_logic);
	end component;
	
	component MUX_8_1_ALU
	port (add_op, sub_op, and_op, or_op, geq_op, not_op, xor_op, nor_op: in std_logic_vector(15 downto 0);
			s: 	in std_logic_vector(2 downto 0);
			out0: out std_logic_vector(15 downto 0));
	end component;
	
	signal sum_out, sub_out, and_out, or_out, geq_out, not_out, xor_out, nor_out: std_logic_vector(15 downto 0);
	signal carry_add, carry_sub: std_logic;
	
	begin
		V0: FULLADDER_16 		 port map (A, B, carry_in, sum_out, carry_add);
      V1: FULLSUBTRACTOR_16 port map (A, B, carry_in, sub_out, carry_sub);
		V2: AND_16			    port map (A, B, and_out);
		V3: OR_16 				 port map (A, B, or_out);
		V4: GEQ		          port map (A, geq_out);
		V5: NOT_16	        	 port map (A, not_out);
		V6: XOR_16				 port map (A, B, xor_out);
		V7: NOR_16				 port map (A, B, nor_out);
		-- Display carry of addition or subtraction or 0, depending on the op code.
		V8: MUX_2_1 			 port map (carry_add, carry_sub, op, overflow);
		-- Display the result based on the op code.
		V9: MUX_8_1_ALU 		 port map (sum_out, sub_out, and_out, or_out, geq_out, not_out, xor_out, nor_out, op, result);
		

	
end structural;
