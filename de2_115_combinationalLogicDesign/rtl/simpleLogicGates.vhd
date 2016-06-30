library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity simpleLogicGates is port (
	x1,x2,x3 : in std_logic;
	x : in std_logic_vector(3 downto 0);
	y : out std_logic_vector(4 downto 0));
end simpleLogicGates;

architecture combinational of simpleLogicGates is
begin
	y(0) <= (x1 and x2) or x3;
	y(2 downto 1) <= (x1&x(0)) AND (x2&x(1));
	y(4 downto 3) <= x(3 downto 2);
end combinational;