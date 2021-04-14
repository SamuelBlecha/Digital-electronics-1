----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/24/2021 02:25:17 PM
-- Design Name: 
-- Module Name: tb_jk_ff_rst - Behavioral
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

entity tb_jk_ff_rst is
--  Port ( );
end tb_jk_ff_rst;

architecture Behavioral of tb_jk_ff_rst is

    constant c_CLK_PERIOD : time    := 10 ns;
        
    signal s_clk    : std_logic;
    signal s_rst  : std_logic;
    signal s_j     : std_logic;
    signal s_k     : std_logic;
    signal s_q     : std_logic;
    signal s_q_bar : std_logic;
    
begin
uut_jk_ff_rst : entity work.jk_ff_rst
        port map(
        clk   => s_clk,
        rst   => s_rst,
        j     => s_j,
        k     => s_k,
        q     => s_q,
        q_bar => s_q_bar
        );
        
        
    p_clk_gen : process
        begin
            while now < 1000 ns loop
                s_clk <= '0';
                wait for c_CLK_PERIOD / 2;
                s_clk <= '1';
                wait for c_CLK_PERIOD / 2;
            end loop;
            wait;
        end process p_clk_gen;
    
    p_reset_gen : process
        begin
            s_rst <= '0';
            wait for 43 ns;        
            s_rst <= '1';
            wait for 13 ns;
            s_rst <= '0';
            wait for 70 ns;
            s_rst <= '1';
            wait;
        end process p_reset_gen;
           
    p_stimulus : process
         begin
             report "Stimulus process started" severity note;

             s_j <= '0';
             s_k <= '0';
             wait for 24ns;
             s_j <= '1';
             s_k <= '0';
             wait for 40ns;
             s_j <= '0';
             s_k <= '1';
             wait for 30ns;
             s_j <= '1';
             s_k <= '1';
             wait for 30ns;       
             report "Stimulus process finished" severity note;
             wait;
         end process p_stimulus;
end Behavioral;
