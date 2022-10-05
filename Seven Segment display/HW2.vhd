LibrarY ieee;
USE ieee.std_logic_1164.all;
entitY HW2 is
   port( Z0,Y0,X0,W0 : in std_logic;
              Z1,Y1,X1,W1 : in std_logic;
              Z2,Y2,X2,W2 : in std_logic;
	      a0,b0,c0,d0,e0,f0,g0 : out std_logic;
              a1,b1,c1,d1,e1,f1,g1 : out std_logic;
              a2,b2,c2,d2,e2,f2,g2 : out std_logic);
end HW2;

architecture logicfunc of HW2 is 
begin 
    a0<=(not W0 and not X0 and not Y0 and Z0)or(not W0 and  X0 and not Y0 and not Z0)or( W0 and not X0 and  Y0 and  Z0)or( W0 and  X0 and not Y0 and not Z0)or( W0 and  X0 and not Y0 and Z0);
 	 b0<=(not W0 and X0 and not Y0 and Z0)or(not W0 and  X0 and  Y0 and not Z0)or( W0 and not X0 and  Y0 and  Z0)or( W0 and  X0 and not Y0 and not Z0)or( W0 and  X0 and Y0 and not Z0)or( W0 and  X0 and Y0 and Z0);
	 c0<=(not W0 and not X0 and Y0 and not Z0)or(W0 and X0 and not Y0 and not Z0)or( W0 and  X0 and  Y0 and not Z0)or( W0 and  X0 and Y0 and Z0);
	 d0<=(not W0 and not X0 and not Y0 and Z0)or(not W0 and  X0 and not Y0 and not Z0)or(not W0 and X0 and Y0 and Z0)or( W0 and not X0 and not Y0 and  Z0)or( W0 and not X0 and Y0 and not Z0)or( W0 and  X0 and  Y0 and Z0);
	 e0<=(not W0 and not X0 and not Y0 and Z0)or(not W0 and not X0 and Y0 and Z0)or(not W0 and  X0 and not Y0 and not Z0)or(not W0 and  X0 and not Y0 and Z0)or(not W0 and  X0 and  Y0 and Z0)or(W0 and not X0 and not Y0 and Z0);
	 f0<=(not W0 and not X0 and not Y0 and Z0)or(not W0 and not X0 and Y0 and not Z0)or(not W0 and not X0 and  Y0 and  Z0)or(not W0 and  X0 and Y0 and Z0)or( W0 and  X0 and not Y0 and not Z0)or( W0 and  X0 and not Y0 and Z0);
	 g0<=(not W0 and not X0 and not Y0 and not Z0)or(not W0 and not X0 and not Y0 and Z0)or(not W0 and X0 and  Y0 and  Z0);

    a1<=(not W1 and not X1 and not Y1 and Z1)or(not W1 and  X1 and not Y1 and not Z1)or( W1 and not X1 and  Y1 and  Z1)or( W1 and  X1 and not Y1 and not Z1)or( W1 and  X1 and not Y1 and Z1);
 	 b1<=(not W1 and X1 and not Y1 and Z1)or(not W1 and  X1 and  Y1 and not Z1)or( W1 and not X1 and  Y1 and  Z1)or( W1 and  X1 and not Y1 and not Z1)or( W1 and  X1 and Y1 and not Z1)or( W1 and  X1 and Y1 and Z1);
	 c1<=(not W1 and not X1 and Y1 and not Z1)or(W1 and X1 and not Y1 and not Z1)or( W1 and  X1 and  Y1 and not Z1)or( W1 and  X1 and Y1 and Z1);
	 d1<=(not W1 and not X1 and not Y1 and Z1)or(not W1 and  X1 and not Y1 and not Z1)or(not W1 and X1 and Y1 and Z1)or( W1 and not X1 and not Y1 and  Z1)or( W1 and not X1 and Y1 and not Z1)or( W1 and  X1 and  Y1 and Z1);
	 e1<=(not W1 and not X1 and not Y1 and Z1)or(not W1 and not X1 and Y1 and Z1)or(not W1 and  X1 and not Y1 and not Z1)or(not W1 and  X1 and not Y1 and Z1)or(not W1 and  X1 and  Y1 and Z1)or(W1 and not X1 and not Y1 and Z1);
	 f1<=(not W1 and not X1 and not Y1 and Z1)or(not W1 and not X1 and Y1 and not Z1)or(not W1 and not X1 and  Y1 and  Z1)or(not W1 and  X1 and Y1 and Z1)or( W1 and  X1 and not Y1 and not Z1)or( W1 and  X1 and not Y1 and Z1);
	 g1<=(not W1 and not X1 and not Y1 and not Z1)or(not W1 and not X1 and not Y1 and Z1)or(not W1 and X1 and  Y1 and  Z1);

    a2<=(not W2 and not X2 and not Y2 and Z2)or(not W2 and  X2 and not Y2 and not Z2)or( W2 and not X2 and  Y2 and  Z2)or( W2 and  X2 and not Y2 and not Z2)or( W2 and  X2 and not Y2 and Z2);
 	 b2<=(not W2 and X2 and not Y2 and Z2)or(not W2 and  X2 and  Y2 and not Z2)or( W2 and not X2 and  Y2 and  Z2)or( W2 and  X2 and not Y2 and not Z2)or( W2 and  X2 and Y2 and not Z2)or( W2 and  X2 and Y2 and Z2);
	 c2<=(not W2 and not X2 and Y2 and not Z2)or(W2 and X2 and not Y2 and not Z2)or( W2 and  X2 and  Y2 and not Z2)or( W2 and  X2 and Y2 and Z2);
	 d2<=(not W2 and not X2 and not Y2 and Z2)or(not W2 and  X2 and not Y2 and not Z2)or(not W2 and X2 and Y2 and Z2)or( W2 and not X2 and not Y2 and  Z2)or( W2 and not X2 and Y2 and not Z2)or( W2 and  X2 and  Y2 and Z2);
	 e2<=(not W2 and not X2 and not Y2 and Z2)or(not W2 and not X2 and Y2 and Z2)or(not W2 and  X2 and not Y2 and not Z2)or(not W2 and  X2 and not Y2 and Z2)or(not W2 and  X2 and  Y2 and Z2)or(W2 and not X2 and not Y2 and Z2);
	 f2<=(not W2 and not X2 and not Y2 and Z2)or(not W2 and not X2 and Y2 and not Z2)or(not W2 and not X2 and  Y2 and  Z2)or(not W2 and  X2 and Y2 and Z2)or( W2 and  X2 and not Y2 and not Z2)or( W2 and  X2 and not Y2 and Z2);
	 g2<=(not W2 and not X2 and not Y2 and not Z2)or(not W2 and not X2 and not Y2 and Z2)or(not W2 and X2 and  Y2 and  Z2);

end logicfunc; 