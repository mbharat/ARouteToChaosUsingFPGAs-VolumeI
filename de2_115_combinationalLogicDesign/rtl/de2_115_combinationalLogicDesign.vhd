-- Lines starting with -- are comments in VHDL.
library ieee;  -- include ieee library for the use statements below
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity de2_115_combinationalLogicDesign is port (
	SW : in std_logic_vector(6 downto 0);
	LEDG : out std_logic_vector(4 downto 0));
end de2_115_combinationalLogicDesign;

architecture topLevel of de2_115_combinationalLogicDesign is
	component simpleLogicGates is port (
		x1,x2,x3 : in std_logic;
		x : in std_logic_vector(3 downto 0);
		y : out std_logic_vector(4 downto 0));
	end component;

begin
	U0 : simpleLogicGates port map (
		x1 => SW(0),
		x2 => SW(1),
		x3 => SW(2),
		x => SW(6 downto 3),
		y => LEDG(4 downto 0));

end topLevel;