library ieee;
use ieee.std_logic_1164.all;
use work.ALU_unit.all;

entity ALU is
port(	x,y 		: in std_logic_vector(6 downto 0);
		ALUop 	: in std_logic_vector(3 downto 0);
		s 			: out std_logic_vector(6 downto 0);
		Cout 		: out std_logic);
end ALU;

architecture ALU_run of ALU is
signal or_r,and_r,add_r,set_r,result:std_logic_vector(6 downto 0);
signal a,b,carry:std_logic_vector(7 downto 0);
signal set:std_logic;
begin
	carry(0)<= ALUop(2);
	G1:for i in 0 to 6 generate
		G1L1:a(i)<=ALUop(3) xor x(i);
		G1L2:b(i)<=ALUop(2) xor y(i);
		G1L3:or_r(i)<= a(i) or b(i);
		G1L4:and_r(i)<= a(i) and b(i);
		G1L5:fulladd port map(carry(i),a(i),b(i),add_r(i),carry(i+1));
		G1L6:with ALUop(1 downto 0) select
		result(i) <= 	and_r(i) when "00",
							or_r(i) when"01",
							add_r(i) when"10",
							'0' when others;
		G2:if i=6 generate
		G2L1:set<=add_r(i);
		G2L2:with set select
				set_r <=	"0000000" when '0',
							"0000001" when'1';	
		end generate;
	end generate;
	
	with ALUop(1 downto 0) select
	s <= 	set_r when "11",
			result when others;
	Cout<= '0';
end ALU_run;
