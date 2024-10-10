-- IOANNA THEOFILAKOU 3190062 - STEFANOS DIMITRAKOPOULOS 3130054 - ATHANASIOS TRIFONIS 3200298

library ieee;
use ieee.std_logic_1164.all;

entity XOR_3 is
port(   in0: in std_logic;
        in1: in std_logic;
        in2: in std_logic;
        out0: out std_logic
    );
end XOR_3;

architecture logic of XOR_3 is
begin
    out0 <= in0 xor in1 xor in2;
end logic;