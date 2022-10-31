library ieee;
use ieee.std_logic_1164.all;
package ALU_unit is
	component fulladd
		port( Cin,x,y	: in std_logic;
				s,Cout	: out std_logic);
	end component fulladd;
	component BCD_adder
		port( Cin,x0,y0,x1,y1,x2,y2,x3,y3	: in std_logic;
		s0,s1,s2,s3,Cout	: out std_logic);
	end component BCD_adder;
	component hex
		port(	sb0,sb1,sb2,sb3,sb4,sb5,sb6,sb7				:	in std_logic;
				a0,a1,b0,b1,c0,c1,d0,d1,e0,e1,f0,f1,g0,g1	:	out std_logic);
	end component hex;
end package ALU_unit;
		