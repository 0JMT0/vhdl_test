LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY addxgen IS
GENERIC (width : INTEGER := 8);--default
PORT(
c0: IN STD_LOGIC;
a, b: IN STD_LOGIC_VECTOR(width downto 1);
c_max: OUT STD_LOGIC;
sum: OUT STD_LOGIC_VECTOR(width downto 1));
END addxgen;

ARCHITECTURE adder OF addxgen IS
COMPONENT full_add
PORT(
a, b, c_in : IN STD_LOGIC;
c_out, sum: OUT STD_LOGIC);
END COMPONENT;

SIGNAL c : STD_LOGIC_VECTOR (width downto 0);
BEGIN
c(0) <= c0;
adders:
FOR i IN 1 to width GENERATE
adder: full_add PORT MAP (a(i), b(i), c(i-1), c(i), sum(i));
END GENERATE;
c_max <= c(width);
END adder;