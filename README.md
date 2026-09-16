# 🏴‍☠️ Jogos em Portugol: Caça ao Tesouro & Masmorra Mística

Este repositório reúne projetos desenvolvidos em **Portugol Studio**, demonstrando a evolução na aplicação de lógica de programação, matrizes, estruturas de decisão, laços de repetição e geração de eventos aleatórios (RNG).

---

## 📌 Versões do Projeto

*   **`masmorramitica.por` (v2.0 — Versão Atual):** Jogo de sobrevivência e exploração estilo RPG, com foco em sorte, combate, poções e acúmulo de tesouros.
*   **`jogo.por` (v1.0 — Versão Base):** Jogo de tabuleiro sequencial em matriz 5x5, focado em gerenciamento de bateria e navegação por níveis dinâmicos.

---

## 🏰 v2.0 — Masmorra Mística (`masmorramitica.por`)

Um jogo de exploração e sorte onde o jogador precisa sobreviver a 5 rodadas dentro de um calabouço mantendo sua vida acima de zero.

### 🎯 Objetivo & Atributos
*   **Objetivo:** Concluir 5 rodadas sem zerar a vida e acumular a maior quantidade possível de ouro.
*   **Atributos Iniciais:** 100 Pontos de Vida (HP) | 0 Moedas de Ouro.

### 🎲 Mecânica & Probabilidades
Em cada turno, o jogador escolhe entre três portas (1, 2 ou 3). A escolha avança o evento sorteado pela biblioteca `Util`:

| Evento | Probabilidade | Efeito no Jogador |
| :--- | :--- | :--- |
| **Ataque de Monstro** | ~33,3% (Evento 1) | Perde entre 15 e 30 HP |
| **Baú do Tesouro** | ~33,3% (Evento 2) | Ganha entre 20 e 50 moedas de ouro |
| **Poção de Cura** | ~33,3% (Evento 3) | Recupera entre 10 e 25 HP |

### 🏆 Condições de Fim de Jogo
*   **Vitória:** Chegar ao final da 5ª rodada com HP > 0. O placar final exibe o HP restante e o total de ouro coletado.
*   **Derrota (Game Over):** Ter a vida reduzida a 0 (ou menos) em qualquer rodada. O jogo é encerrado imediatamente.

---

## 🗺️ v1.0 — Caça ao Tesouro (`jogo.por`)

Jogo de navegação em uma matriz 5x5 (25 casas) dividida em 3 níveis dinâmicos com percentuais calculados pelo usuário.

### 🎯 Objetivo & Atributos
*   **Objetivo:** Partir da posição `[0,0]` e avançar casa por casa até encontrar o tesouro (`$$$`).
*   **Atributos Iniciais:** 100 Créditos de Bateria (consumo fixo de 10 créditos por avanço).

### 🧩 Elementos do Tabuleiro
*   `---` : Casa vazia.
*   `B05` / `B10` : Bônus de +5 ou +10 créditos de bateria.
*   `RIS` : Penalidade de -3 créditos de bateria (indisponível no Nível I).
*   `$$$` : Tesouro / Vitória imediata (indisponível no Nível I).

---

## 🚀 Como Executar

1. Baixe e instale o [Portugol Studio](http://lite.acad.univali.br/portugol/).
2. Abra o arquivo `.por` desejado (`masmorramitica.por` para a versão mais recente ou `jogo.por` para a versão base).
3. Clique no botão **Executar** (ou pressione `F9`).
