
--
-- Generated by VASY
--
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY a2_x2 IS
PORT(
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  q	: OUT STD_LOGIC
);
END a2_x2;

ARCHITECTURE RTL OF a2_x2 IS
BEGIN
  q <= (i0 AND i1);
END RTL;
