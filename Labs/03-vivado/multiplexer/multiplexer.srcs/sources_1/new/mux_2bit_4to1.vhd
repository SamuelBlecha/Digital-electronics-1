----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2021 06:06:39 AM
-- Design Name: 
-- Module Name: mux_2bit_4to1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_2bit_4to1 is
port(
        a_i           : in  std_logic_vector(2 - 1 downto 0); -- Data A
        b_i           : in  std_logic_vector(2 - 1 downto 0); -- Data B
        c_i           : in  std_logic_vector(2 - 1 downto 0); -- Data C
        d_i           : in  std_logic_vector(2 - 1 downto 0); -- Data D
        sel_i         : in  std_logic_vector(2 - 1 downto 0); -- Data Sel
        f_o           : out  std_logic_vector(2 - 1 downto 0) -- Output F
    );
end mux_2bit_4to1;

architecture Behavioral of mux_2bit_4to1 is
begin
       f_o <= a_i when (sel_i = "00") else
              b_i when (sel_i = "01") else
              c_i when (sel_i = "10") else
              d_i;                 -- All other combinations

end Behavioral;
