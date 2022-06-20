LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY lab3 IS
	PORT(	sw: STD_LOGIC_VECTOR (8 downto 0);
			seve1: OUT STD_LOGIC_VECTOR (6 downto 0);
			seve2: OUT STD_LOGIC_VECTOR (6 downto 0);
			seve3: OUT STD_LOGIC_VECTOR (6 downto 0)
	);
END lab3;

ARCHITECTURE a of lab3 IS
	SIGNAL nRBI: BIT_VECTOR(2 downto 0) := "000";
BEGIN
	RB_process: PROCESS(sw)
	
	BEGIN
-- First digit
		IF(nRBI(2) = '0' and sw(8 downto 6)="000") THEN -- check if leading zero
			nRBI(1) <= '0'; -- Let Digit 1 blank
			seve1 <= "1111111";
		ELSE--
			nRBI(1) <= '1'; -- Light up Digit 1
			CASE sw(8 downto 6) IS
				WHEN "000" =>-----
				seve1 <= "0000001"; -- 0
				WHEN "001" =>
				seve1 <= "1001111"; -- 1
				WHEN "010" =>
				seve1 <= "0010010"; -- 2
				WHEN "011" =>
				seve1 <= "0000110"; -- 3
				WHEN "100" =>
				seve1 <= "1001100"; -- 4
				WHEN "101" =>
				seve1 <= "0100100"; -- 5
				WHEN "110" =>
				seve1 <= "1100000"; -- 6
				WHEN "111" =>
				seve1 <= "0001111"; -- 7
				WHEN others =>
				seve1 <= "1111111"; -- blank
				END CASE;
				
		END IF;
-- Second digit
		IF(nRBI(1) = '0' and sw(5 downto 3)="000") THEN -- check if leading zero
		nRBI(0) <= '0'; -- Let Digit 0 blank
		seve2 <= "1111111";
		ELSE
			nRBI(0) <= '1'; -- Light up Digit 0
			CASE sw(5 downto 3) IS
				WHEN "000" =>
				seve2 <= "0000001"; -- 0
				WHEN "001" =>
				seve2 <= "1001111"; -- 1
				WHEN "010" =>
				seve2 <= "0010010"; -- 2
				WHEN "011" =>
				seve2 <= "0000110"; -- 3
				WHEN "100" =>
				seve2 <= "1001100"; -- 4
				WHEN "101" =>
				seve2 <= "0100100"; -- 5
				WHEN "110" =>
				seve2 <= "1100000"; -- 6
				WHEN "111" =>
				seve2 <= "0001111"; -- 7
				WHEN others =>
				seve2 <= "1111111"; -- blank
				END CASE;
				
		END IF;
-- Third digit
		IF(nRBI(0) = '0' and sw(2 downto 0)="000") THEN -- check if leading zero
		seve3 <= "1111111";
-- Let it blank / Show digit 0
		ELSE
			CASE sw(2 downto 0) IS
				WHEN "000" =>
				seve3 <= "0000001"; -- 0
				WHEN "001" =>
				seve3 <= "1001111"; -- 1
				WHEN "010" =>
				seve3 <= "0010010"; -- 2
				WHEN "011" =>
				seve3 <= "0000110"; -- 3
				WHEN "100" =>
				seve3 <= "1001100"; -- 4
				WHEN "101" =>
				seve3 <= "0100100"; -- 5
				WHEN "110" =>
				seve3 <= "1100000"; -- 6
				WHEN "111" =>
				seve3 <= "0001111"; -- 7
				WHEN others =>
				seve3 <= "1111111"; -- blank
				END CASE;
				
-- Show digit 0
		END IF;
	END PROCESS RB_process;
END a;