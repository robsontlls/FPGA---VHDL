-- Projeto Alu 74181
-- 
--	IN: S0, S1, S2, S3, A0, A1, A2, A3, B0, B1, B2, B3, Cn, M
--	OUT: F0, F1, F2, F3, Cn_4, P, G
--
--	Autor: Robson Teles
--

library ieee;
use ieee.std_logic_1164.all;

entity ALU74181 is port(
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
ActiveHigh : in std_logic
);
end ALU74181;

architecture Hardware of ALU74181 is
signal auxSel : std_logic_vector(0 to 1);
begin	

	process (auxSel, m, cn, A, B, control, ActiveHigh)
	begin
	
	auxSel <= m & cn;
	
	if ActiveHigh = '1' then --Chip Active High 
	
		if (auxSel = "10") or (auxSel = "11") then
		
			case control is
				when "0000" => O<= not(A);					
				when "0001" =>	O<= not(A and B);
				when "0010" => O<= not(A) or not(B);
				when "0011" => O<= "1111";
				when "0100" => O<= not(A) or not(B);
				when "0101" => O<= not(B);	
				when "0110" => O<= not(A) nor not(B);
				when "0111" => O<= A or not(B);
				when "1000" => O<= not(A) and B;
				when "1001" => O<= A nor B;
				when "1010" => O<= B;
				when "1011" => O<= A or B;
				when "1100" => O<= "0000";
				when "1101" => O<= A and not(B);
				when "1110" => O<= A and B;
				when "1111" => O<= A;
				when others => report "Unreachable!" severity FAILURE;
			end case;
			
		end if;
		
	elsif (ActiveHigh = '0') then--Chip Active High 
	
	end if;
	end process;
	
end Hardware;



