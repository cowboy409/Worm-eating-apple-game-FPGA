LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use IEEE.std_logic_arith.ALL;



ENTITY r139 IS
	PORT( LeftB,Clock,RightB,reset       : IN STD_LOGIC;
		  ww : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		  Wx,Wy       : OUT STD_LOGIC);
END r139;


ARCHITECTURE Structure OF r139 IS
    
   
	SIGNAL n,s,w,e : STD_LOGIC;
	signal L : std_logic_vector(0 to 2);
	SIGNAL r : STD_LOGIC_VECTOR(139 DOWNTO 0);
	SIGNAL ro : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL r0 : INTEGER RANGE 0 TO 139;
	SIGNAL r1 : INTEGER RANGE 0 TO 139;
	SIGNAL r2 : INTEGER RANGE 0 TO 139;
	SIGNAL r3 : INTEGER RANGE 0 TO 140;
 
BEGIN



r2<=12;

r3<=r1*r2;

r3<= conv_integer(ww(1));

END Structure;
