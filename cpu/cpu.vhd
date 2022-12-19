library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.all_package.all;

entity cpu is
port( clk,clear 	: in std_logic;
		opcode 		: in std_logic_vector(3 downto 0);
		rs,rt 		: in std_logic_vector(1 downto 0);
		data 			: in std_logic_vector(7 downto 0);
		rs_reg,rt_reg : buffer std_logic_vector(7 downto 0);
		output0,output1,output2,output3,output4,output5 : out std_logic_vector(6 downto 0));
end cpu;


architecture func of cpu is

--opcode
type state_type is (A,B,C,D,E,F,G);
signal opcode_temp : state_type;
--rt,rs
signal r0_reg,r1_reg,r2_reg,r3_reg : std_logic_vector(7 downto 0):="00000000";

begin
				
with opcode select
	opcode_temp<=A when "0000",
					 B when "0001",
					 C when "0010",
					 D when "0011",
					 E when "0101",
					 F when "1001",
					 G when "0100",
					 opcode_temp when others;
with rt select
	rt_reg<=	r0_reg when "00",
				r1_reg when "01",
				r2_reg when "10",
				r3_reg when "11";
				
with rs select
	rs_reg<=	r0_reg when "00",
				r1_reg when "01",
				r2_reg when "10",
				r3_reg when "11";
				

process(clear,clk,rt_reg,rs_reg)
begin

--	if rt = "00" then
--		rt_reg<=r0_reg;
--	elsif rs ="01" then
--		rt_reg<=r1_reg;
--	elsif rs ="10" then
--		rt_reg<=r2_reg;
--	else
--		rt_reg<=r3_reg;
--	end if;
--	
--	if rs = "00" then
--		rs_reg<=r0_reg;
--	elsif rs ="01" then
--		rs_reg<=r1_reg;
--	elsif rs ="10" then
--		rs_reg<=r2_reg;
--	else
--		rs_reg<=r3_reg;
--	end if;
	
	if clear='1' then
		r0_reg <= "00000000";
		r1_reg <= "00000000";
		r2_reg <= "00000000";
		r3_reg <= "00000000";
		--rs_output<=(others=>'0');
		--rt_output<=(others=>'0');
		
	elsif (clk'event and clk='1') then
		case opcode_temp is
			--Load
			when A=>
				rs_reg<=data;
			--Move
			when B=>
				rs_reg<=rt_reg;
			--Add			
			when C=>
				rs_reg<=rs_reg+rt_reg;
			--And
			when D=>
				for i in 0 to 7 loop
				rs_reg(i) <= rs_reg(i) and rt_reg(i);
				end loop;
			--Sub(a-b)
			when E=>
				rs_reg<=rs_reg - rt_reg;
			--Sub(b-a)
			when F=>
				rs_reg<=rt_reg - rs_reg;
			--Slt(rs<rt)
			when G=>
				if (rs_reg<rt_reg) then
					--01
					rs_reg<="00000001";
				else
					--00
					rs_reg<="00000000";
				end if;
		end case;
	end if;
	
	if rs = "00" then
		r0_reg<=rs_reg;
	elsif rs ="01" then
		r1_reg<=rs_reg;
	elsif rs ="10" then
		r2_reg<=rs_reg;
	else
		r3_reg<=rs_reg;
	end if;
end process;

SHOW1 : hex port map(rs_reg(3 downto 0),output2);
SHOW2 : hex port map(rs_reg(7 downto 4),output3);
SHOW3 : hex port map(rt_reg(3 downto 0),output4);
SHOW4 : hex port map(rt_reg(7 downto 4),output5);

end func;