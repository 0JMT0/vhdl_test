LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY lab4 IS
PORT(
c0: IN STD_LOGIC;
a, b:IN STD_LOGIC_VECTOR(4 downto 1);
c4: OUT STD_LOGIC;
sum: OUT STD_LOGIC_VECTOR(4 downto 1));
END lab4;

ARCHITECTURE adder of lab4 IS
COMPONENT addxgen
GENERIC (width : INTEGER);
PORT(
c0: IN STD_LOGIC;
a, b: IN STD_LOGIC_VECTOR(width downto 1);
c_max: OUT STD_LOGIC;
sum: OUT STD_LOGIC_VECTOR(width downto 1));
END COMPONENT;

BEGIN
add4 : addxgen
GENERIC MAP(width => 4)
PORT MAP(c0, a, b, c4, sum);
END adder;