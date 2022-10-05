Library ieee;
USE ieee.std_logic_1164.all;
entity homework_1 is
   port( z0,y0,x0,w0 : in std_logic;
	      a0,b0,c0,d0,e0,f0,g0 : out std_logic);
end homework_1;

architecture logicfunc of homework_1 is 
begin 
    a0<=(not w0 and not x0 and not y0 and z0)or(not w0 and  x0 and not y0 and not z0)or( w0 and not x0 and  y0 and  z0)or( w0 and  x0 and not y0 and not z0)or( w0 and  x0 and not y0 and z0);
 	 b0<=(not w0 and x0 and not y0 and z0)or(not w0 and  x0 and  y0 and not z0)or( w0 and not x0 and  y0 and  z0)or( w0 and  x0 and not y0 and not z0)or( w0 and  x0 and y0 and not z0)or( w0 and  x0 and y0 and z0);
	 c0<=(not w0 and not x0 and y0 and not z0)or(w0 and x0 and not y0 and not z0)or( w0 and  x0 and  y0 and not z0)or( w0 and  x0 and y0 and z0);
	 d0<=(not w0 and not x0 and not y0 and z0)or(not w0 and  x0 and not y0 and not z0)or(not w0 and x0 and y0 and z0)or( w0 and not x0 and not y0 and  z0)or( w0 and not x0 and y0 and not z0)or( w0 and  x0 and  y0 and z0);
	 e0<=(not w0 and not x0 and not y0 and z0)or(not w0 and not x0 and y0 and z0)or(not w0 and  x0 and not y0 and not z0)or(not w0 and  x0 and not y0 and z0)or(not w0 and  x0 and  y0 and z0)or(w0 and not x0 and not y0 and z0);
	 f0<=(not w0 and not x0 and not y0 and z0)or(not w0 and not x0 and y0 and not z0)or(not w0 and not x0 and  y0 and  z0)or(not w0 and  x0 and y0 and z0)or( w0 and  x0 and not y0 and not z0)or( w0 and  x0 and not y0 and z0);
	 g0<=(not w0 and not x0 and not y0 and not z0)or(not w0 and not x0 and not y0 and z0)or(not w0 and x0 and  y0 and  z0);
end logicfunc;