--
-- Circuito Combinacional VHDL
--
-- 3 entradas e 1 saida
--
--	Eng. Robson Teles
--
--	Outubro de 2020
--

library IEEE;
use IEEE.std_logic_1164.all;

entity circuito_combinacional is port(
	A: in std_logic;
	B: in std_logic;
	C: in std_logic;
	O: out std_logic
);
end circuito_combinacional;

architecture hardware of circuito_combinacional is

signal OR1 : std_logic;
signal OR2 : std_logic;
signal OR3 : std_logic;

begin 

O <= (OR1 Or OR2 Or OR3);

OR1 <= (Not A) And (Not B);
OR2 <= (Not B) And (Not C);
OR3 <= A And (Not C);

end hardware;