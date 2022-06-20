LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY SR IS
PORT
(
S, R, Enable : IN STD_LOGIC ; -- Latch's in input
OnLed: OUT STD_LOGIC
);
END SR;
ARCHITECTURE a OF SR IS
SIGNAL Q,nQ : STD_LOGIC; -- debounced control signal
BEGIN
-- Gated SR NAND latch to debounce pushbotton gitter
Q <= ((not S) NAND Enable) NAND nQ;
nQ <= ((not R) NAND Enable) NAND Q;
OnLed <= Q ;
END a;