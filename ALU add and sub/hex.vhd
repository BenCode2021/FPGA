library ieee;
use ieee.std_logic_1164.all;
entity hex is
port( sb0,sb1,sb2,sb3,sb4,sb5,sb6,sb7				:	in std_logic;
		a0,a1,b0,b1,c0,c1,d0,d1,e0,e1,f0,f1,g0,g1	:	out std_logic);
end hex;

architecture run of hex is
begin
	a0<= (NOT sb3 AND NOT sb1 AND (sb2 XOR sb0)) OR (sb3 AND NOT sb2 AND sb1 AND sb0) OR (sb3 AND sb2 AND NOT sb1);
	b0<= (NOT sb3 AND sb2 AND (sb1 XOR sb0)) OR (sb3 AND sb1 AND sb0) OR (sb3 AND sb2 AND NOT sb0);
	c0<= (NOT sb3 AND NOT sb2 AND sb1 AND NOT sb0) OR (sb3 AND sb2 AND NOT sb0) OR (sb3 AND sb2 AND sb1);
	d0<= (NOT sb2 AND NOT sb1 AND sb0) OR (NOT sb3 AND sb2 AND NOT sb1 AND NOT sb0) OR (sb2 AND sb1 AND sb0) OR (sb3 AND NOT sb2 AND sb1 AND NOT sb0);
	e0<= (NOT sb3 AND sb0) OR (NOT sb3 AND sb2 AND NOT sb1) OR (NOT sb2 AND NOT sb1 AND sb0);
	f0<= (NOT sb3 AND NOT sb2 AND sb0) OR (NOT sb3 AND NOT sb2 AND sb1) OR (NOT sb3 AND sb1 AND sb0) OR (sb3 AND sb2 AND NOT sb1);
	g0<= (NOT sb3 AND NOT sb2 AND NOT sb1) OR (NOT sb3 AND sb2 AND sb1 AND sb0);
	a1<= (NOT sb7 AND NOT sb5 AND (sb6 XOR sb4)) OR (sb7 AND NOT sb6 AND sb5 AND sb4) OR (sb7 AND sb6 AND NOT sb5);
	b1<= (NOT sb7 AND sb6 AND (sb5 XOR sb4)) OR (sb7 AND sb5 AND sb4) OR (sb7 AND sb6 AND NOT sb4);
	c1<= (NOT sb7 AND NOT sb6 AND sb5 AND NOT sb4) OR (sb7 AND sb6 AND NOT sb4) OR (sb7 AND sb6 AND sb5);
	d1<= (NOT sb6 AND NOT sb5 AND sb4) OR (NOT sb7 AND sb6 AND NOT sb5 AND NOT sb4) OR (sb6 AND sb5 AND sb4) OR (sb7 AND NOT sb6 AND sb5 AND NOT sb4);
	e1<= (NOT sb7 AND sb4) OR (NOT sb7 AND sb6 AND NOT sb5) OR (NOT sb6 AND NOT sb5 AND sb4);
	f1<= (NOT sb7 AND NOT sb6 AND sb4) OR (NOT sb7 AND NOT sb6 AND sb5) OR (NOT sb7 AND sb5 AND sb4) OR (sb7 AND sb6 AND NOT sb5);
	g1<= (NOT sb7 AND NOT sb6 AND NOT sb5) OR (NOT sb7 AND sb6 AND sb5 AND sb4);
end run;
