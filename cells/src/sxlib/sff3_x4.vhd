
--
-- Generated by VASY
--
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY sff3_x4 IS
PORT(
  ck	: IN STD_LOGIC;
  cmd0	: IN STD_LOGIC;
  cmd1	: IN STD_LOGIC;
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  i2	: IN STD_LOGIC;
  q	: OUT STD_LOGIC
);
END sff3_x4;

ARCHITECTURE RTL OF sff3_x4 IS
  SIGNAL sff_m	: STD_LOGIC;
BEGIN
  q <= sff_m;
  PROCESS ( ck )
  BEGIN
    IF  ((ck = '1') AND ck'EVENT)
    THEN sff_m <= ((NOT(cmd0) AND i0) OR (cmd0 AND ((cmd1 AND i1) OR (NOT(cmd1) AND i2))));
    END IF;
  END PROCESS;
END RTL;
