library ieee;
use ieee.std_logic_1164.all;

entity hex is
port( sw:	in std_logic_vector(3 downto 0);
		output	:	out std_logic_vector(6 downto 0));
end hex;


architecture func of hex is
begin
	output(0)<= (NOT sw(3) AND NOT sw(1) AND (sw(2) XOR sw(0))) OR (sw(3) AND NOT sw(2) AND sw(1) AND sw(0)) OR (sw(3) AND sw(2) AND NOT sw(1));
	output(1)<= (NOT sw(3) AND sw(2) AND (sw(1) XOR sw(0))) OR (sw(3) AND sw(1) AND sw(0)) OR (sw(3) AND sw(2) AND NOT sw(0));
	output(2)<= (NOT sw(3) AND NOT sw(2) AND sw(1) AND NOT sw(0)) OR (sw(3) AND sw(2) AND NOT sw(0)) OR (sw(3) AND sw(2) AND sw(1));
	output(3)<= (NOT sw(2) AND NOT sw(1) AND sw(0)) OR (NOT sw(3) AND sw(2) AND NOT sw(1) AND NOT sw(0)) OR (sw(2) AND sw(1) AND sw(0)) OR (sw(3) AND NOT sw(2) AND sw(1) AND NOT sw(0));
	output(4)<= (NOT sw(3) AND sw(0)) OR (NOT sw(3) AND sw(2) AND NOT sw(1)) OR (NOT sw(2) AND NOT sw(1) AND sw(0));
	output(5)<= (NOT sw(3) AND NOT sw(2) AND sw(0)) OR (NOT sw(3) AND NOT sw(2) AND sw(1)) OR (NOT sw(3) AND sw(1) AND sw(0)) OR (sw(3) AND sw(2) AND NOT sw(1));
	output(6)<= (NOT sw(3) AND NOT sw(2) AND NOT sw(1)) OR (NOT sw(3) AND sw(2) AND sw(1) AND sw(0));
end func;