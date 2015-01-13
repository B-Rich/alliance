
--
-- Generated by VASY
--
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY oa2a2a2a24_x4 IS
PORT(
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  i2	: IN STD_LOGIC;
  i3	: IN STD_LOGIC;
  i4	: IN STD_LOGIC;
  i5	: IN STD_LOGIC;
  i6	: IN STD_LOGIC;
  i7	: IN STD_LOGIC;
  q	: OUT STD_LOGIC
);
END oa2a2a2a24_x4;

ARCHITECTURE RTL OF oa2a2a2a24_x4 IS
BEGIN
  q <= ((((i0 AND i1) OR (i2 AND i3)) OR (i4 AND i5)) OR (i6 AND i7));
END RTL;
