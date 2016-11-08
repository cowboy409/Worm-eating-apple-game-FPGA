LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;


ENTITY Main IS
	PORT( LeftB,Clock,RightB,reset       : IN STD_LOGIC;
		  Wx,Wy       : OUT STD_LOGIC);
END Main;


ARCHITECTURE Structure OF Main IS

	SIGNAL n,s,w,e : STD_LOGIC;
	SIGNAL r : STD_LOGIC_VECTOR(140 DOWNTO 0);
	SIGNAL r0 : INTEGER RANGE 0 TO 139;
	SIGNAL r1 : INTEGER RANGE 0 TO 139;
	SIGNAL r2 : INTEGER RANGE 0 TO 139;
	SIGNAL r3 : INTEGER RANGE 0 TO 139;
	SIGNAL r4 : INTEGER RANGE 0 TO 139;
	SIGNAL r5 : INTEGER RANGE 0 TO 139;
	SIGNAL r6 : INTEGER RANGE 0 TO 139;
	SIGNAL r7 : INTEGER RANGE 0 TO 139;
	SIGNAL r8 : INTEGER RANGE 0 TO 139;
	SIGNAL r9 : INTEGER RANGE 0 TO 139;
	
	SIGNAL L : INTEGER RANGE 0 TO 10;
 
	
 
BEGIN
	n<='1';
	w<='0';
	s<='0';
	e<='0';
	L<=4;
	r0<=109;
	r1<=119;
	r2<=129;
	r3<=139;
	r4<=140;
	r5<=140;
	r6<=140;
	r7<=140;
	r8<=140;
	r9<=140;
	

--------------- get the signal from button--------
		
	PROCESS(LeftB,Clock,RightB,reset)

Begin
		
		If reset = '1' THEN
					
			n<='1';
			w<='0';
			s<='0';
			e<='0';
			L<=4;
			r0<=109;
			r1<=119;
			r2<=129;
			r3<=139;
			
			
		ELSIF rising_edge(clock) THEN
					
					
			case L is
			When 4 => 
			r3<=r2;
			r2<=r1;
			r1<=r0;
			
			When 5 =>
			r4<=r3;
			r3<=r2;
			r2<=r1;
			r1<=r0;
			
			When 6 =>
			r5<=r4;
			r4<=r3;
			r3<=r2;
			r2<=r1;
			r1<=r0;
			
			When 7=>
			r6<=r5;
			r5<=r4;
			r4<=r3;
			r3<=r2;
			r2<=r1;
			r1<=r0;
			
			When 8 =>
			r7<=r6;
			r6<=r5;
			r5<=r4;
			r4<=r3;
			r3<=r2;
			r2<=r1;
			r1<=r0;
			
			When 9=>
			r8<=r7;
			r7<=r6;
			r6<=r5;
			r5<=r4;
			r4<=r3;
			r3<=r2;
			r2<=r1;
			r1<=r0;
			
			end case;


			if n='1' THEN
				r0<=r0-10;
			end if;

			if s='1' THEN
				r0<=r0+10;
			end if;

			if e='1' THEN
				r0<=r0+1;
			end if;

			if w='1' THEN
				r0<=r0-1;
			end if;
					
		end if;
			
---------------- determinme the score-------------






--------------- display ----------------





	end process;

END Structure;
