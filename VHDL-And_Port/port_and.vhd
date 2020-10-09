-- 

--    And Port

-- 

--    Inputs: a,b

-- 

-- 	outputs: o

-- 

--    Author: Robson Teles 

--    Date: 19/09/2020 

-- 

  

library ieee;                                 -- Library Instituto Engenheiros Elétricos e Eletrônicos 

use ieee.std_logic_1164.all;                 -- Standart Library 1164 

  

entity port_and is port                       --Entity Declaration 

(                         

    a    :    in    std_logic;                            -- Digital Input a 

    b    :    in    std_logic;                            -- Digital Input b 

    o    :    out    std_logic                           -- Digital Output o 

); 

end port_and; 

  

  

architecture Hardware of port_and is     -- Circuit's Description 

begin                                                           -- Start Hardware(Parallel) 
    o <= a and b;                             

end Hardware;                                           -- End Hardware 