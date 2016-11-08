LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY multiplier IS
	PORT( Cin        : IN STD_LOGIC;
		  x2,x1,x3   : IN STD_LOGIC;
		  y1,y2   : IN STD_LOGIC;
		  s4,s3,s2,s1,s0   : OUT STD_LOGIC
		  );
END multiplier;



ARCHITECTURE Structure OF multiplier IS
	
	SIGNAL t1,t2,p1,p2,q1,c1,c2 : STD_LOGIC;
	
	COMPONENT FA
			PORT( Cin,x,y    : IN STD_LOGIC;
					s,Cout       : OUT STD_LOGIC);
	END COMPONENT;
	
	
BEGIN


	s0 <= x1 and y1;
	t1 <= x2 and y1;
	t2 <= x1 and y2;
	
	p1 <= x3 and y1;
	p2 <= x2 and y2;

	q1 <= x3 and y2;
	
	
	stage0 : FA PORT MAP(Cin,t1,t2,s1,c1);
	
	stage1 : FA PORT MAP(C1,p1,p2,s2,c2);
	
	stage2 : FA PORT MAP(C2,q1,'0',s3,s4);

END Structure;