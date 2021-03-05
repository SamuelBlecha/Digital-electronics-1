----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2021 06:12:59 AM
-- Design Name: 
-- Module Name: tb_mux_2bit_4to1 - Behavioral
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

entity tb_mux_2bit_4to1 is
--  Port ( );
end tb_mux_2bit_4to1;

architecture Behavioral of tb_mux_2bit_4to1 is
     signal s_a       : std_logic_vector(2 - 1 downto 0);
     signal s_b       : std_logic_vector(2 - 1 downto 0);
     signal s_c       : std_logic_vector(2 - 1 downto 0);
     signal s_d       : std_logic_vector(2 - 1 downto 0);
     signal s_sel     : std_logic_vector(2 - 1 downto 0);
     signal s_f       : std_logic_vector(2 - 1 downto 0);
begin
     uut_tb_mux_2bit_4to1 : entity work.mux_2bit_4to1
        port map(
            a_i           => s_a,
            b_i           => s_b,
            c_i           => s_c,
            d_i           => s_d,
            sel_i         => s_sel,
            f_o           => s_f
        );
    --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
         report "Stimulus process started" severity note;
         s_d <= "11"; s_c <= "10";s_b <= "01"; s_a <= "00";
         s_sel <= "00"; wait for 100 ns;
         s_sel <= "01"; wait for 100 ns;
         s_sel <= "10"; wait for 100 ns;
         s_sel <= "11"; wait for 100 ns;
         
         
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
    
end Behavioral;
