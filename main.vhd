LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use IEEE.std_logic_arith.ALL;

ENTITY Main IS
	PORT( LeftB,fastc,slowc,RightB,reset      : IN STD_LOGIC;
		  M_in : in  STD_LOGIC_VECTOR (9 downto 0);
		  A_inx: in  STD_LOGIC_VECTOR (9 downto 0);
		  A_iny: in  STD_LOGIC_VECTOR (13 downto 0);
		  
		scom:out STD_LOGIC;
		  M_data: out  STD_LOGIC_VECTOR (9 downto 0);
		  s: out  STD_LOGIC_VECTOR (6 downto 0);
		  LED: out  STD_LOGIC_VECTOR (7 downto 0);
		  M_com: out  STD_LOGIC_VECTOR (13 downto 0));
END Main;


ARCHITECTURE Structure OF Main IS

	
	SIGNAL r : STD_LOGIC_VECTOR(139 DOWNTO 0);
	SIGNAL d : INTEGER RANGE 0 TO 5;
	SIGNAL db : INTEGER RANGE 0 TO 5;
	
	SIGNAL die : INTEGER RANGE 0 TO 2;
	SIGNAL r0 : INTEGER RANGE 0 TO 139;
	SIGNAL r1 : INTEGER RANGE 0 TO 139;
	SIGNAL r2 : INTEGER RANGE 0 TO 139;
	SIGNAL r3 : INTEGER RANGE 0 TO 140;
	SIGNAL r4 : INTEGER RANGE 0 TO 140;
	SIGNAL r5 : INTEGER RANGE 0 TO 140;
	SIGNAL r6 : INTEGER RANGE 0 TO 140;
	SIGNAL r7 : INTEGER RANGE 0 TO 140;
	SIGNAL r8 : INTEGER RANGE 0 TO 140;
	SIGNAL r9 : INTEGER RANGE 0 TO 140;
	SIGNAL a : INTEGER RANGE 0 TO 140;
	SIGNAL aa : INTEGER RANGE 0 TO 140;

	SIGNAL a0 : INTEGER RANGE 0 TO 140;
	SIGNAL a1 : INTEGER RANGE 0 TO 140;
	SIGNAL a2 : INTEGER RANGE 0 TO 140;
	SIGNAL a3 : INTEGER RANGE 0 TO 140;
	SIGNAL a4 : INTEGER RANGE 0 TO 140;
	SIGNAL a5 : INTEGER RANGE 0 TO 140;
	SIGNAL a6 : INTEGER RANGE 0 TO 140;
	SIGNAL a7 : INTEGER RANGE 0 TO 140;
	SIGNAL a8 : INTEGER RANGE 0 TO 140;
	SIGNAL a9 : INTEGER RANGE 0 TO 140;
	
	SIGNAL b0 : INTEGER RANGE 0 TO 140;
	SIGNAL b1 : INTEGER RANGE 0 TO 140;
	SIGNAL b2 : INTEGER RANGE 0 TO 140;
	SIGNAL b3 : INTEGER RANGE 0 TO 140;
	SIGNAL b4 : INTEGER RANGE 0 TO 140;
	SIGNAL b5 : INTEGER RANGE 0 TO 140;
	SIGNAL b6 : INTEGER RANGE 0 TO 140;
	SIGNAL b7 : INTEGER RANGE 0 TO 140;
	SIGNAL b8 : INTEGER RANGE 0 TO 140;
	SIGNAL b9 : INTEGER RANGE 0 TO 140;
	SIGNAL b10 : INTEGER RANGE 0 TO 140;
	SIGNAL b11 : INTEGER RANGE 0 TO 140;
	SIGNAL b12 : INTEGER RANGE 0 TO 140;
	SIGNAL b13 : INTEGER RANGE 0 TO 140;
	
	SIGNAL L : INTEGER RANGE 0 TO 10;
 
	
Begin
------------------first setting----------------

	
	
Worms: PROCESS(slowc,reset)
Begin



---------------------- let's go Clock part ----------------------

		If (reset = '1' )THEN
					
			d<=1;
			L<=4;
			r0<=109;
			r1<=119;
			r2<=129;
			r3<=139;
			a<=74;
			aa<=1;
			die<=0;
			
			scom<='1';
			
			for i in 0 to 139 loop
			r(i)<='0';
			end loop ;
			
			r(r0)<='1';
			r(r1)<='1';
			r(r2)<='1';
			r(r3)<='1';	
			r(a)<='1';	
			
			for i in 0 to 6 loop
				s(i)<='1';
			end loop ;
			
			LED<="11111111";
				
	
			
		ELSIF rising_edge(slowc) THEN
	



				

-------------------------- Move by Clock---------------------	
	If L = 4 THEN
				
				r(r3)<='0';
				r3<=r2;
				r2<=r1;
				r1<=r0;
				
				scom<='1';
				for i in 0 to 5 loop
					s(i)<='0';
				end loop ;
				
			elsif	L = 5 THEN
				
				r(r4)<='0';
				r4<=r3;
				r3<=r2;
				r2<=r1;
				r1<=r0;
				
				for i in 0 to 6 loop
					s(i)<='1';
				end loop ;
				
				s(1)<='0';
				s(2)<='0';
				
				
				
			elsif	L = 6 THEN
			
				r(r5)<='0';
				r5<=r4;
				r4<=r3;
				r3<=r2;
				r2<=r1;
				r1<=r0;
				
				for i in 0 to 6 loop
					s(i)<='1';
				end loop ;
				
				s(0)<='0';
				s(1)<='0';
				s(3)<='0';
				s(4)<='0';
				s(6)<='0';
				
			elsif	L = 7 THEN
				r(r6)<='0';
				r6<=r5;
				r5<=r4;
				r4<=r3;
				r3<=r2;
				r2<=r1;
				r1<=r0;
				
				for i in 0 to 6 loop
					s(i)<='1';
				end loop ;
				
				s(0)<='0';
				s(1)<='0';
				s(3)<='0';
				s(2)<='0';
				s(6)<='0';
				
			elsif	L = 8 THEN
			
				r(r7)<='0';
				r7<=r6;
				r6<=r5;
				r5<=r4;
				r4<=r3;
				r3<=r2;
				r2<=r1;
				r1<=r0;
				
				for i in 0 to 6 loop
					s(i)<='1';
				end loop ;
				
				s(5)<='0';
				s(1)<='0';
				s(2)<='0';
				s(6)<='0';
				
				
			elsif	L = 9 THEN
			
				r(r8)<='0';
				r8<=r7;
				r7<=r6;
				r6<=r5;
				r5<=r4;
				r4<=r3;
				r3<=r2;
				r2<=r1;
				r1<=r0;
				
				for i in 0 to 6 loop
					s(i)<='1';
				end loop ;
				
				s(0)<='0';
				s(5)<='0';
				s(3)<='0';
				s(2)<='0';
				s(6)<='0';
				
				
			elsif	L = 10 THEN
			
				r(r9)<='0';
				r9<=r8;
				r8<=r7;
				r7<=r6;
				r6<=r5;
				r5<=r4;
				r4<=r3;
				r3<=r2;
				r2<=r1;
				r1<=r0;
				
				
				for i in 0 to 6 loop
					s(i)<='1';
				end loop ;
				
				s(0)<='0';
				s(2)<='0';
				s(3)<='0';
				s(4)<='0';
				s(5)<='0';
				s(6)<='0';
				
		
			end if;


-------------------------- Head Move ---------------------			
			
			if d=1 THEN
				r0<=r0-10;
			end if;
			
			if d=2 THEN
				r0<=r0+1;
			end if;			
			
			if d=3 THEN
				r0<=r0+10;
			end if;

			if d=4 THEN
				r0<=r0-1;
			end if;
			
			r(r0)<='1';

---------------- Detecting Apple -----------------

if a = r0 then
	L<= L+1;
	aa<=0;
	r(a)<='0';

	
end if;



		
		
		
-------------------------------Making Apple------------------------





	if aa=0 then

	a0<= conv_integer(a_inx(0));
	a1<= conv_integer(a_inx(1));
	a2<= conv_integer(a_inx(2));
	a3<= conv_integer(a_inx(3));
	a4<= conv_integer(a_inx(4));
	a5<= conv_integer(a_inx(5));
	a6<= conv_integer(a_inx(6));
	a7<= conv_integer(a_inx(7));
	a8<= conv_integer(a_inx(8));
	a9<= conv_integer(a_inx(9));
	
	b0<= conv_integer(a_iny(0));
	b1<= conv_integer(a_iny(1));
	b2<= conv_integer(a_iny(2));
	b3<= conv_integer(a_iny(3));
	b4<= conv_integer(a_iny(4));
	b5<= conv_integer(a_iny(5));
	b6<= conv_integer(a_iny(6));
	b7<= conv_integer(a_iny(7));
	b8<= conv_integer(a_iny(8));
	b9<= conv_integer(a_iny(9));
	b10<= conv_integer(a_iny(10));
	b11<= conv_integer(a_iny(11));
	b12<= conv_integer(a_iny(12));
	b13<= conv_integer(a_iny(13));
	
	a<= (1*a0+2*a1+3*a2+4*a3+5*a4+6*a5+7*a6+8*a7+9*a8+10*a9)*(1*b0+2*b1+3*b2+4*b3+5*b4+6*b5+7*b6+8*b7+9*b8+10*b9+11*b10+12*b11+13*b12+14*b13);
	aa<=1;


	end if;
	
	r(a)<='1';
	
	
	
	


------------------- ending time -----------------------------
	
	if L=10 then
	die<=2;
	end if;
	
		

	if die=1 then
		for i in 0 to 139 loop
			r(i)<='0';
		end loop;
		
		
		for i in 0 to 10 loop
			r(10*i)<='1';
			r(1+10*i)<='1';
		end loop;
		
		
		for i in 0 to 5 loop
			r(i)<='1';
			r(10+i)<='1';
			
			r(40+i)<='1';
			r(50+i)<='1';
			
		end loop;
		
			
	end if;

	if die=2 then
	----- display success--
		for i in 0 to 139 loop
			r(i)<='0';
		end loop;
		
		
		for i in 0 to 5 loop
			r(10*i)<='1';
			r(1+10*i)<='1';
		
			r(44+10*i)<='1';
			r(45+10*i)<='1';
			
		end loop;
		
		
		for i in 0 to 5 loop
			r(i)<='1';
			r(10+i)<='1';
			
			r(40+i)<='1';
			r(50+i)<='1';
			
			r(80+i)<='1';
			r(90+i)<='1';
			
		end loop;
		

		

	end if;
	
	
	
	
	------------------lEFT rIGHT------------
	
			if LeftB='1' Then
				d<=d-1;
				if d=0 or d<0 then
					d<=4;
			end if;
				
			elsif RightB='1' then
			
				d<=d+1;
				if d=5 or d>5 then
					d<=1;
				end if;
			end if;
			



end if;

------------- end cloocik-------------




		


	
	
--------------- only warms display ----------------

case M_in is
	when "0000000001" =>
	M_data<="0000000001";
	for i in 0 to 13 Loop
	M_com(i)<=not r(0+10*i);
	END loop;
	
	when "0000000010" =>
	M_data<="0000000010";
	for i in 0 to 13 Loop
	M_com(i)<=not r(1+10*i);
	END loop;
	
	when "0000000100" =>
	M_data<="0000000100";
	for i in 0 to 13 Loop
	M_com(i)<=not r(2+10*i);
	END loop;
	
	when "0000001000" =>
	M_data<="0000001000";
	for i in 0 to 13 Loop
	M_com(i)<=not r(3+10*i);
	END loop;
	
	when "0000010000" =>
	M_data<="0000010000";
	for i in 0 to 13 Loop
	M_com(i)<=not r(4+10*i);
	END loop;
	
	when "0000100000" =>
	M_data<="0000100000";
	for i in 0 to 13 Loop
	M_com(i)<=not r(5+10*i);
	END loop;
	
	when "0001000000" =>
	M_data<="0001000000";
	for i in 0 to 13 Loop
	M_com(i)<=not r(6+10*i);
	END loop;
	
	when "0010000000" =>
	M_data<="0010000000";
	for i in 0 to 13 Loop
	M_com(i)<=not r(7+10*i);
	END loop;
	
	when "0100000000" =>
	M_data<="0100000000";
	for i in 0 to 13 Loop
	M_com(i)<=not r(8+10*i);
	END loop;
	
	when "1000000000" =>
	M_data<="1000000000";
	for i in 0 to 13 Loop
	M_com(i)<=not r(9+10*i);
	
	END loop;
	
	when others =>null;
	
end case;

	
	



	end PROCESS Worms;

END Structure;
