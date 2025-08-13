# Jogo da Bruxa

**Jogo da Bruxa** é um jogo da velha temático implementado em Assembly (linguagem de baixo nível) para fins acadêmicos.  
O jogo é disputado entre o **usuário** e o **computador**, com regras e telas customizadas para dar um toque especial à temática da "bruxa".

## 🎯 Objetivo

O jogador e o computador disputam uma série melhor de **5 partidas**.  
- Quem vencer **3 ou mais partidas** primeiro, vence o jogo.
- O jogo alterna quem começa a cada rodada.

## 🕹️ Como Funciona

1. **Tela inicial** exibe o tabuleiro numerado (1 a 9) para indicar posições.
2. O jogador navega pelo tabuleiro usando as teclas do cursor e confirma a jogada com **Enter**.
3. O computador realiza sua jogada automaticamente.
4. O jogo verifica após cada jogada se houve vitória ou empate.
5. Linhas vencedoras são destacadas (função de coloração).
6. Pontuações são armazenadas em memória e exibidas após cada rodada.

## 🔄 Regras

- Melhor de 5 partidas.
- Alternância de quem começa: em uma rodada o computador começa, na outra o jogador.
- Vitória detectada manualmente por checagens nas combinações possíveis:
  - Linhas: (1,4,7), (2,5,8), (3,6,9)
  - Colunas: (1,2,3), (4,5,6), (7,8,9)
  - Diagonais: (1,5,9) e (3,5,7)

## 🛠️ Estrutura do Código

- **velha.asm** — código principal do jogo.
  - Desenho das telas (inicial, vitória, derrota).
  - Lógica de detecção de vitória/derrota.
  - Armazenamento de pontuação.
  - Função de destaque de linha vencedora.
  - Geração de jogadas aleatórias para o computador.
  - Impressão do tabuleiro.
- **char map** — mapa de caracteres padrão fornecido pelo professor.

## 📦 Execução

### Pré-requisitos
- Montador/Simulador compatível com o formato Assembly usado no projeto (por exemplo, Simple Simulator).
- Sistema configurado para rodar programas Assembly.

### Passos
1. Clone o repositório:
   ```bash
   git clone https://github.com/Thamysis/JogoDaBruxa.git
   cd JogoDaBruxa

2. Abra o arquivo `velha.asm` no simulador/montador.
3. Compile/montar o código.
4. Execute e interaja conforme as instruções na tela.

---

## 👩‍💻 Autores
- **Thamyres Santos** — desenvolvimento e implementação.
- Baseado em instruções e *char map* fornecidos pelo professor.

## 📺 Demonstração
Assista ao vídeo de apresentação no Loom:  
[🔗 Ver demonstração](https://www.loom.com/share/4200477deef9488b806daae583b878b1)

---

> Projeto acadêmico com fins de aprendizado em programação Assembly, lógica de jogos e manipulação de memória.
