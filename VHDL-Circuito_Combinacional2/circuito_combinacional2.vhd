--
--	Circuito Combinacional2
--
-- Entradas: 5 Saidas: 1
--
--	Eng. Robson Teles
-- 10/10/2020
--

-- Declaração de Bibliotecas
library ieee;
use ieee.std_logic_1164.all;

entity circuito_combinacional2 is port(

-- Declaração de variaveis
A	:	in std_logic;
B	:	in std_logic;
C	:	in std_logic;
D	:	in std_logic;
E	:	in std_logic;
O	:	out std_logic
);
end circuito_combinacional2;

architecture Hardware of circuito_combinacional2 is
-- Declaração de Tarefas
signal Logic1 : std_logic;
signal Logic2 : std_logic;
signal Logic3 : std_logic;
begin

Logic1 <= (not A and not B and not C) and (D xor E);
Logic2 <= (not A and not B and C  and E );
Logic3 <= (A and not B and not D and E);

O <= Logic1 or Logic2 or Logic3;

end Hardware;