library ieee;
use ieee.std_logic_1164.all;
use work.ALU_unit.all;

entity main is
port( a,b 	: 	in std_logic_vector(7 downto 0);
		a0,a1,b0,b1,c0,c1,d0,d1,e0,e1,f0,f1,g0,g1	: out std_logic;
		cout : out std_logic;
		sub : in std_logic);
end main;

architecture add of main is
signal s : std_logic_vector(7 downto 0);
signal c : std_logic_vector(7 downto 0);
signal clast : std_logic;
begin
	stage0: fulladd port map (sub,a(0),b(0) xor sub,s(0),c(1));
	stage1: fulladd port map (c(1),a(1),b(1) xor sub,s(1),c(2));
	stage2: fulladd port map (c(2),a(2),b(2) xor sub,s(2),c(3));
	stage3: fulladd port map (c(3),a(3),b(3) xor sub,s(3),c(4));
	stage4: fulladd port map (c(4),a(4),b(4) xor sub,s(4),c(5));
	stage5: fulladd port map (c(5),a(5),b(5) xor sub,s(5),c(6));
	stage6: fulladd port map (c(6),a(6),b(6) xor sub,s(6),c(7));
	stage7: fulladd port map (c(7),a(7),b(7) xor sub,s(7),clast);
	stage8: hex port map(s(0),s(1),s(2),s(3),s(4),s(5),s(6),s(7),a0,a1,b0,b1,c0,c1,d0,d1,e0,e1,f0,f1,g0,g1);
	cout <=clast and not sub;
	end add;