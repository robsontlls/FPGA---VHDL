-- Testbench Alu 74181
-- 
--	IN: S0, S1, S2, S3, A0, A1, A2, A3, B0, B1, B2, B3, Cn, M
--	OUT: F0, F1, F2, F3, Cn_4, P, G
--
--	Autor: Robson Teles
--

entity tb_ALU74181 is end;       --testbench is entity without in and out.

library IEEE;
use IEEE.std_logic_1164.all;
use std.textio.all;

architecture tb_arc_ALU74181 of tb_ALU74181 is

component comp_ALU74181
  port(
  control : in std_logic_vector (0 to 3);
  A : in std_logic_vector (0 to 3);
  B : in std_logic_vector (0 to 3);
  cn : in std_logic;
  m : in std_logic;
  O : out std_logic_vector(0 to 3);
  cn_4 : out std_logic;
  p : out std_logic;
  g : out std_logic;
  A_B : out std_logic;
  ActiveHigh : in std_logic);
end component;

--Auxiliary Signals

signal auxcontrol : std_logic_vector (0 to 3);
signal auxA : std_logic_vector (0 to 3);
signal auxB : std_logic_vector (0 to 3);
signal auxcn : std_logic;
signal auxm : std_logic;
signal auxActiveHigh : std_logic;

begin
  
  ALU1 : comp_ALU74181 port map (
  control => auxcontrol, 
  A => auxA, 
  B => auxB, 
  cn => auxcn, 
  m => auxm, 
  ActiveHigh =>  
  auxActiveHigh, O => open);
    
    performTest : process
    begin 
      wait for 5 ns; auxActiveHigh <= '1'; auxm <='1'; auxcn <= '1'; --auxA <= "0010"; auxB <= "0000"; auxcontrol <= "0000";
      wait for 5 ns; auxcontrol <= "0001";
      wait for 5 ns; auxcontrol <= "0010";
      wait for 5 ns; auxcontrol <= "0011";
      wait for 5 ns; auxcontrol <= "0100";
      wait for 5 ns; auxcontrol <= "0101";
      wait for 5 ns; auxcontrol <= "0110";
      wait for 5 ns; auxcontrol <= "0111";
      wait for 5 ns; auxcontrol <= "1000";
      wait for 5 ns; auxcontrol <= "1001";
      wait for 5 ns; auxcontrol <= "1010";
      wait for 5 ns; auxcontrol <= "1011";
      wait for 5 ns; auxcontrol <= "1100";
      wait for 5 ns; auxcontrol <= "1101";
      wait for 5 ns; auxcontrol <= "1110";
      wait for 5 ns; auxcontrol <= "1111";
  end process performTest;

end tb_arc_ALU74181;
