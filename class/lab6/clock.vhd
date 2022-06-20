LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY clock IS
PORT (CLK: IN STD_LOGIC; 
Hex0, Hex1, Hex2, Hex3: OUT STD_LOGIC_VECTOR(0 to 7));
END clock;
ARCHITECTURE a OF clock IS
SIGNAL Ticks : INTEGER:=0;
CONSTANT DigitValue: INTEGER := 9;
TYPE MMSS is array (0 to 3) of INTEGER RANGE 0 to DigitValue;
SIGNAL digits: MMSS:=(6,5,4,3);
SIGNAL sSecondTicks: INTEGER := 1000000;
TYPE SEVENSEGMENT is array (0 to 3) of STD_LOGIC_VECTOR(0 to 7);
SIGNAL segments: SEVENSEGMENT;
FUNCTION PlusOne (a:INTEGER RANGE 0 to DigitValue) RETURN INTEGER IS
VARIABLE result : INTEGER RANGE 0 to DigitValue;

BEGIN
result := a + 1;
RETURN (result);
END;

BEGIN
-- show 7-segment
Hex0 <= segments(0);
Hex1 <= segments(1);
Hex2 <= segments(2);
Hex3 <= segments(3);

-- Stopwatch
PROCESS(CLK)
BEGIN
IF(RISING_EDGE(CLK)) THEN
Ticks <= Ticks + 1;
IF(Ticks >= sSecondTicks-1) THEN
Ticks <= 0;
digits(0) <= PlusOne(digits(0));
IF(digits(0)>=9) THEN
digits(1) <= PlusOne(digits(1));
digits(0) <= 0;
IF(digits(1)>=5 and digits(0)>=9) THEN
digits(2) <= PlusOne(digits(2));
digits(1) <= 0;
IF(digits(2)>=9) THEN
digits(3) <= PlusOne(digits(3));
digits(2) <= 0;
IF(digits(3)>=5) THEN
digits(3) <= 0;
END IF;
END IF;
END IF;
END IF;
END IF;
END IF;
FOR i IN 0 to 3 LOOP
CASE digits(i) IS
	WHEN 0 => segments(i)<="00000011"; -- 0
	WHEN 1 => segments(i)<="10011111"; -- 1
	WHEN 2 => segments(i)<="00100101"; -- 2
	WHEN 3 => segments(i)<="00001101"; -- 3
	WHEN 4 => segments(i)<="10011001"; -- 4
	WHEN 5 => segments(i)<="01001001"; -- 5
	WHEN 6 => segments(i)<="11000001"; -- 6
	WHEN 7 => segments(i)<="00011111"; -- 7
	WHEN 8 => segments(i)<="00000001"; -- 8
	WHEN 9 => segments(i)<="00011001"; -- 9
	WHEN others =>segments(i)<="11111111";
END CASE;
END LOOP;
segments(2)(7) <= '0'; -- display "dot"
END PROCESS;
END a;