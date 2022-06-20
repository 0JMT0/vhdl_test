LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY counter IS
PORT
(
S0, S2, R1, Enable: IN STD_LOGIC; -- Latch's in input 
HEX0, HEX1: OUT STD_LOGIC_VECTOR(7 downto 1);
OnLed: OUT STD_LOGIC
);
END counter;
ARCHITECTURE a OF counter IS
-- count the number of the button pressed
SIGNAL digit0, digit1: INTEGER RANGE 0 to 16;
SIGNAL Q,nQ : STD_LOGIC; -- debounced control signal
BEGIN
Q <= ((not S2) NAND Enable) NAND nQ;
nQ <= ((not R1) NAND Enable) NAND Q;
OnLed <= Q ;

pro0: PROCESS(Q,S0)
BEGIN
	IF (S0 = '0' and Enable = '1') THEN 
		digit1 <= 0;
		digit0 <= 0;
	ELSIF(Q'EVENT and Q= '1') THEN
		digit0 <= digit0 + 1; -- advance the digit0 by one
		IF(digit0 >= 9) THEN
			digit1 <= digit1 + 1;
			digit0 <= 0;
			IF(digit1 >= 9) THEN -- set the digits to 9
				digit1 <= 0;
			END IF;
		END IF;
	END IF;
CASE digit0 IS
				WHEN 0 =>-----
				HEX0 <= "0000001"; 
				WHEN 1 =>
				HEX0 <= "1001111";
				WHEN 2 =>
				HEX0 <= "0010010"; 
				WHEN 3 =>
				HEX0 <= "0000110";
				WHEN 4 =>
				HEX0 <= "1001100"; 
				WHEN 5 =>
				HEX0 <= "0100100";
				WHEN 6 =>
				HEX0 <= "1100000";
				WHEN 7 =>
				HEX0 <= "0001111";
				WHEN 8 =>
				HEX0 <= "0000000";
				WHEN 9 =>
				HEX0 <= "0001100";
				WHEN others =>
				HEX0 <= "1111111"; -- blank
END CASE;
CASE digit1 IS
				WHEN 0 =>-----
				HEX1 <= "0000001"; 
				WHEN 1 =>
				HEX1 <= "1001111";
				WHEN 2 =>
				HEX1 <= "0010010"; 
				WHEN 3 =>
				HEX1 <= "0000110";
				WHEN 4 =>
				HEX1 <= "1001100"; 
				WHEN 5 =>
				HEX1 <= "0100100";
				WHEN 6 =>
				HEX1 <= "1100000";
				WHEN 7 =>
				HEX1 <= "0001111";
				WHEN 8 =>
				HEX1 <= "0000000";
				WHEN 9 =>
				HEX1 <= "0001100";
				WHEN others =>
				HEX1 <= "1111111"; -- blank
				END CASE;				
END PROCESS pro0;
END a;
