library ieee;
use ieee.std_logic_1164.all;
use work.ALU_unit.all;

entity main is
port( a,b 	: 	in std_logic_vector(6 downto 0);
		a0,a1,b0,b1,c0,c1,d0,d1,e0,e1,f0,f1,g0,g1	: out std_logic;
		ALUop : in std_logic_vector(3 downto 0); 
		cout : out std_logic);
end main;

architecture add of main is
signal s : std_logic_vector(6 downto 0);
signal clast:std_logic;
begin
	stage0: ALU port map (a,b,ALUop,s,clast);
	stage8: hex port map(s(0),s(1),s(2),s(3),s(4),s(5),s(6),'0',a0,a1,b0,b1,c0,c1,d0,d1,e0,e1,f0,f1,g0,g1);
	cout<= clast;
	end add;