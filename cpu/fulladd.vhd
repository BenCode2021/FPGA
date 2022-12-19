library ieee;
use ieee.std_logic_1164.all;
use work.all_package.all;
entity fulladd is
port(sub_or_add:in std_logic;
		val1,val2: in std_logic_vector(7 downto 0);
		ssum	: out std_logic_vector(7 downto 0));
end fulladd;

architecture add of fulladd is
signal carry : std_logic_vector(8 downto 0);
begin
	carry(0)<=sub_or_add;
	for i in 0 to 7 generate
		add1: addor port map(carry(i),val1(i),sub_or_add xor val2(i),sum(i),carry(i+1));
	end generate;
end add;
