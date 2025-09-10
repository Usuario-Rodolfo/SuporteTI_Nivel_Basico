# SuporteTI_Nivel_Basico

## Descrição
Painel básico de suporte TI em Batch para Windows, automatizando limpeza, diagnóstico de rede, bloqueio de portas e verificação de disco de forma simples e profissional.  
Ideal para iniciantes, aprendizado ou como protótipo de manutenção de computadores.

---

## Funcionalidades
- Limpeza de arquivos temporários e cache do sistema.
- Diagnóstico e limpeza de rede (flush DNS, renovação de IP, limpeza de ARP).
- Bloqueio da porta SMB 445 no firewall do Windows.
- Verificação e reparo de disco (CHKDSK).

---

## Requisitos
- Windows 7, 8, 10 ou 11.
- Executar como Administrador para ações críticas.

---

## Uso
1. Abra o arquivo `PAINEL_BASICO_DE_SUPORTE_TI.bat`.
2. Confirme a execução como **Administrador**.
3. Utilize o menu interativo para selecionar a ação desejada:
   - **1:** Limpeza de Sistema
   - **2:** Diagnóstico e Limpeza de Rede
   - **3:** Bloqueio Porta SMB 445
   - **4:** Verificar e Reparar Disco (CHKDSK)
   - **5:** Sair
> Algumas ações críticas pedirão confirmação (S/N).

---

## Estrutura do Projeto
SuporteTI_Nivel_Basico/
│
├─ PAINEL_BASICO_DE_SUPORTE_TI.bat # Script principal
└─ README.md # Documentação do projeto

---

## Demonstração de Uso
- **Limpeza de Sistema:** remove arquivos temporários e cache.
- **Diagnóstico e Limpeza de Rede:** renova IP, limpa DNS e verifica conexões.
- **Bloqueio Porta SMB 445:** aumenta segurança básica do sistema.
- **CHKDSK:** verifica e repara erros no disco.

---

## Observações
- Script **básico**, mas profissional e funcional globalmente.
- Nenhum software externo é necessário.
- Ideal para **portfólio**, estudos ou suporte técnico básico.

---

## Autor
Rodolfo De Sousa


