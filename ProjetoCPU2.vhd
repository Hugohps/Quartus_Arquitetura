library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- primeira parte - declaracao das portas de i/o, sinais e tipos

entity ProjetoCPU2 is port 
( clk:    in std_logic;                    -- clock do programa
  reset:  in std_logic;                    -- sinal de reset
  din:    in std_logic_vector(7 downto 0);-- entrada de dados vindos da ram
  rw:    out std_logic;                    -- sinal de escrita/leitura na ram
  addr:  out std_logic_vector(4 downto 0); -- enderecamento da ram
  dout:  out std_logic_vector(7 downto 0) -- saida de dados para ram
  );
  
end ProjetoCPU2;

architecture cpu_arch of ProjetoCPU2 is

-- estados da CPU

type estado is (reset1, reset2, busca, executa, movad, movbd, movae,
 movbe, movex, sync_grav, jmp, resultado);

signal estado_atual: estado;
signal sdout,                               -- alimenta a entrada da ram
 reg_inst1,                                 -- registrador de instrucao 1
 reg_inst2,                                 -- registrador de instrucao 2
 rega,                                      -- alimentacao da ula (registrador a)
 regb,                                      -- alimentacao da ula (registrador b)
 reg_ula:                                   -- armazena resultados de operacoes da ula
 std_logic_vector (7 downto 0);
signal pc: std_logic_vector (4 downto 0);   -- contador de programa
signal comp: std_logic_vector (1 downto 0); -- armazena resultado do comparador

-- sinais que indicam qual instrucao deve ser executada

signal inst_movad, inst_movbd, inst_movea, inst_moveb, inst_movae,
 inst_movbe: std_logic;
signal inst_add, inst_sub, inst_and, inst_or, inst_xor, inst_nor,
 inst_nand, inst_xnor: std_logic;
signal inst_inc, inst_dec, inst_cmp, inst_jg, inst_jl, inst_jz, inst_jmp ,inst_jno
 :std_logic;

 begin

 -- segunda parte - decodificao da instrucao (trecho concorrente)(Descrição comportamental com Fluxo de Dados)
 inst_add <= '1' when reg_inst1(7 downto 3) ="00001" else '0';
 inst_sub <= '1' when reg_inst1(7 downto 3) ="00010" else '0';
 inst_and <= '1' when reg_inst1(7 downto 3) ="00011" else '0';
 inst_or <= '1' when reg_inst1(7 downto 3) ="00100" else '0';
 inst_xor <= '1' when reg_inst1(7 downto 3) ="00101" else '0';
 inst_nor <= '1' when reg_inst1(7 downto 3) ="00110" else '0';
 inst_nand <= '1' when reg_inst1(7 downto 3) ="00111" else '0';
 inst_xnor <= '1' when reg_inst1(7 downto 3) ="01000" else '0';
 inst_jmp <= '1' when reg_inst1(7 downto 3) ="01001" else '0';
 inst_inc <= '1' when reg_inst1(7 downto 3) ="01010" else '0';
 inst_dec <= '1' when reg_inst1(7 downto 3) ="01011" else '0';
 inst_cmp <= '1' when reg_inst1(7 downto 3) ="01100" else '0';
 inst_jg <= '1' when reg_inst1(7 downto 3) ="01101" else '0';
 inst_jl <= '1' when reg_inst1(7 downto 3) ="01110" else '0';
 inst_jz <= '1' when reg_inst1(7 downto 3) ="01111" else '0';
 inst_jno <= '1' when reg_inst1(7 downto 3) ="10000" else '0';
 inst_movad <= '1' when reg_inst1(7 downto 3) ="10001" else '0';
 inst_movbd <= '1' when reg_inst1(7 downto 3) ="10010" else '0';
 inst_movea <= '1' when reg_inst1(7 downto 3) ="10011" else '0';
 inst_moveb <= '1' when reg_inst1(7 downto 3) ="10100" else '0';
 inst_movae <= '1' when reg_inst1(7 downto 3) ="10101" else '0';
 inst_movbe <= '1' when reg_inst1(7 downto 3) ="10110" else '0';
 
 
 addr <= pc;
 dout <= sdout;
 
 -- terceira parte - busca e execucao ( fsm )( Maquina de Estados Finitos )
 
 process (clk,reset)
 
 begin
 if reset='1' then
 estado_atual <= reset1;
 elsif clk'event and clk='1' then
 rw <= '0';
 case estado_atual is
 
 -- inicializa registradores
 
 when reset1 =>
 reg_inst1    <= "00000000";
 reg_inst2    <= "00000000";
 rega         <= "00000000";
 regb         <= "00000000";
 reg_ula      <= "00000000";
 sdout        <= "00000000";
 estado_atual <= reset2;
 
 -- inicializa pc (contador de programa)
 
 when reset2 =>
 pc <= "00000";
 estado_atual <= busca;
 
 -- busca instrucao apontado pelo pc
 
 when busca =>
 reg_inst1 <= din;
 pc <= pc + 1;
 estado_atual <= executa;
 
 -- analisa sinais resultantes da decodificacao do opcode e executa
 -- operacao ou parte dela.
 
 when executa =>
 if inst_movad='1' then
 reg_inst2 <= din;
 estado_atual <= movad;
 elsif inst_movbd='1' then
 reg_inst2 <= din;
 estado_atual <= movbd;
 elsif inst_movae='1' then
 reg_inst2(4 downto 0) <= pc + 1;
 pc <= din(4 downto 0);
 estado_atual <= movae;
 elsif inst_movbe='1' then
 reg_inst2(4 downto 0) <= pc + 1;
 pc <= din(4 downto 0);
 estado_atual <= movbe;
 elsif inst_movea='1' then
 sdout <= rega;
 reg_inst2(4 downto 0) <= pc + 1;
 pc <= din(4 downto 0);
 rw <= '1';
 estado_atual <= sync_grav;
 elsif inst_moveb='1' then
 sdout <= regb;
 reg_inst2(4 downto 0) <= pc + 1;
 pc <= din(4 downto 0);
 rw <= '1';
 estado_atual <= sync_grav;
 elsif inst_add='1' then
 reg_ula <= rega + regb;
 estado_atual <= resultado;
 elsif inst_sub='1' then
 reg_ula <= rega - regb;
 estado_atual <= resultado;
 elsif inst_and='1' then
 reg_ula <= rega and regb;
 estado_atual <= resultado;
 elsif inst_or='1' then
 reg_ula <= rega or regb;
 estado_atual <= resultado;
 elsif inst_xor='1' then
 reg_ula <= rega xor regb;
 estado_atual <= resultado;
 elsif inst_nor='1' then
 reg_ula <= rega nor regb;
 estado_atual <= resultado;
 elsif inst_nand='1' then
 reg_ula <= rega nand regb;
 estado_atual <= resultado;
 elsif inst_xnor='1' then
 reg_ula <= rega xnor regb;
 estado_atual <= resultado;
 elsif inst_inc='1' then
 reg_ula <= rega + "00000001";
 estado_atual <= resultado;
 elsif inst_dec='1' then
 reg_ula <= rega - "00000001";
 estado_atual <= resultado;
 elsif inst_jmp='1' then
 reg_inst2 <= din;
 estado_atual <= jmp;
 elsif inst_cmp='1' then
 if rega>regb then
 comp<="00";
 elsif rega<regb then
 comp<="01";
 else
 comp<="10";
 end if;
 estado_atual <= busca;
 elsif inst_jg='1' then
 if comp="00" then
 reg_inst2 <= din;
 estado_atual <= jmp;
 else
 pc <= pc + "00001";
 estado_atual <= busca;
 end if;
 elsif inst_jl='1' then
 if comp="01" then
 reg_inst2 <= din;
 estado_atual <= jmp;
 else
 pc <= pc + "00001";
 estado_atual <= busca;
 end if;
 elsif inst_jno='1' then
 if comp="11" then
 reg_inst2 <= din;
 estado_atual <= jmp;
 else
 pc <= pc + "00001";
 estado_atual <= busca;
 end if;
 elsif inst_jz='1' then
 if comp="10" then
 reg_inst2 <= din;
 estado_atual <= jmp;
 else
 pc <= pc + "00001";
 estado_atual <= busca;
 end if;
 end if;
 
 -- parte final da execucao da instrucao mov a,dado

 when movad =>
 rega <= reg_inst2;
 pc <= pc + "00001";
 estado_atual <= busca;

 -- parte final da execucao da instrucao mov b,dado
 when movbd =>
 regb <= reg_inst2;
 pc <= pc + "00001";
 estado_atual <= busca;

 -- parte final da execucao da instrucao mov a,[end]
 when movae =>
 rega <= din;
 pc <= reg_inst2(4 downto 0);
 estado_atual <= busca;

 -- parte final da execucao da instrucao mov b,[end]
 when movbe =>
 regb <= din;
 pc <= reg_inst2(4 downto 0);
 estado_atual <= busca;

 -- sincronizacao da gravacao de dados na ram
 when sync_grav =>
 estado_atual <= movex;

 -- parte final da execucao da instrucao mov [end],a e mov [end],b
 when movex =>
 pc <= reg_inst2(4 downto 0);
 estado_atual <= busca;

 -- parte final da execucao da instrucao jmp [end]
 when jmp =>
 pc <= reg_inst2(4 downto 0);
 estado_atual <= busca;

 -- parte final da execucao da instrucao logicas e aritmetica da ula
 when resultado =>
 rega <= reg_ula;
 estado_atual <= busca;
 when others=> estado_atual <= busca;
 end case;
 end if;
 end process;
end cpu_arch;