LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FA IS
	PORT( Cin,x,y       : IN STD_LOGIC;
		  s,Cout       : OUT STD_LOGIC);
END FA;

ARCHITECTURE LogicFunc OF FA IS
BEGIN
	s <= x xor y xor Cin;
	Cout <= (x and y) or (y and Cin) or (Cin and x); 
END LogicFunc;