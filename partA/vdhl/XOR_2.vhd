-- IOANNA THEOFILAKOU 3190062 - STEFANOS DIMITRAKOPOULOS 3130054 - ATHANASIOS TRIFONIS 3200298

library ieee;
use ieee.std_logic_1164.all;

entity XOR_2 is
port(   in0, in1: in std_logic;
        out0: out std_logic
    );
end XOR_2;

architecture logic of XOR_2 is
begin
    out0 <= in0 XOR in1;
end logic;