
--
-- Generated by VASY
--
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY on12_x1 IS
PORT(
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  q	: OUT STD_LOGIC
);
END on12_x1;

ARCHITECTURE RTL OF on12_x1 IS
BEGIN
  q <= (NOT(i0) OR i1);
END RTL;
