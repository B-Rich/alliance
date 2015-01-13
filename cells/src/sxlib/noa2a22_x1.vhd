
--
-- Generated by VASY
--
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY noa2a22_x1 IS
PORT(
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  i2	: IN STD_LOGIC;
  i3	: IN STD_LOGIC;
  nq	: OUT STD_LOGIC
);
END noa2a22_x1;

ARCHITECTURE RTL OF noa2a22_x1 IS
BEGIN
  nq <= NOT(((i0 AND i1) OR (i2 AND i3)));
END RTL;
