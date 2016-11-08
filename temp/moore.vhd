LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY moore IS
	PORT(clock,w,reset: IN STD_LOGIC;
	     z : OUT STD_LOGIC );
END moore;

ARCHITECTURE behavior OF moore IS
	TYPE State_type IS (A,B,C,D);
	SIGNAL y: State_type;
	
Begin
	PROCESS(reset,clock)
	Begin
		If reset = '0' THEN
		y<= A;
		ELSIF rising_edge(clock) THEN
			CASE y IS
				When A =>
					IF w='0' THEN
						y<=A;
					ELSE
						y<=B;
					END IF;
				When B =>
					IF w='0' THEN
						y<=A;
					ELSE
						y<=C;
					END IF;
				When C =>
					IF w='0' THEN
						y<=A;
					ELSE
						y<=D;
					END IF;
				When D =>
				    IF w='0' THEN
						y<=A;
					ELSE
						y<=D;
					END IF;

				END CASE;
			END IF;
		END PROCESS;
		z<='1' WHEN y=D ELSE '0';
	END Behavior;

