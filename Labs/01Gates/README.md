# **Lab01 - Gates**
## *De Morgan's law*

```vhdl
entity gates is
    port(
        a_i    : in  std_logic;         -- Data input
        b_i    : in  std_logic;         -- Data input
        c_i    : in  std_logic;         -- Data input
        f_o  : out std_logic;         
        fnand_o : out std_logic;         
        fnor_o : out std_logic          
    );
end entity gates;

architecture dataflow of gates is
begin
    f_o  <= ((not b_i) and a_i) or ((not c_i) and (not b_i));
    fnand_o <= not(not((not b_i) and a_i)and not((not c_i) and (not b_i)));
    fnor_o <= not(b_i or not(a_i)) or not(c_i or b_i);

end architecture dataflow;

```

| **c** | **b** |**a** | **f(c,b,a)** | **f(c,b,a)NAND** | **f(c,b,a)NOR**
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 | 1 | 1
| 0 | 0 | 1 | 1 | 1 | 1
| 0 | 1 | 0 | 0 | 0 | 0
| 0 | 1 | 1 | 0 | 0 | 0
| 1 | 0 | 0 | 0 | 0 | 0
| 1 | 0 | 1 | 1 | 1 | 1
| 1 | 1 | 0 | 0 | 0 | 0
| 1 | 1 | 1 | 0 | 0 | 0

![De Morgan's law simulation:](Snímka obrazovky 2021-02-10 175617.png)

[EDA playground](https://www.edaplayground.com/x/uinF)

