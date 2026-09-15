🏴‍☠️ Jogo Caça ao Tesouro 

Um jogo de tabuleiro sequencial desenvolvido em matriz bidimensional 5 x 5 (25 casas), onde o jogador navega em busca de um tesouro enquanto gerencia seus recursos de bateria.  
📋 Sobre o Projeto

O projeto foi construído aplicando conceitos de lógica de programação, manipulação de matrizes, sorteio de números aleatórios, validação de dados e funções parametrizadas.  O jogador inicia na posição [0,0] com 100 créditos de bateria e avança casa por casa sequencialmente até encontrar o tesouro ou não possuir bateria suficiente para realizar a próxima jogada (mínimo de 10 créditos).  

🎯 Regras e Elementos

Níveis Dinâmicos: O tabuleiro é dividido em 3 Níveis calculados automaticamente conforme os percentuais definidos pelo usuário (cuja soma deve ser exatamente 100%).  
Sorteio sem Sobreposição: Todos os elementos ocupam posições exclusivas.  

Elementos do Tabuleiro:

--- : Casa vazia.  
B05 : Bônus de +5 créditos de bateria (qualquer nível).  
B10 : Bônus de +10 créditos de bateria (qualquer nível).  
RIS : Penalidade de -3 créditos de bateria (proibido no Nível I).  
$$$ : Tesouro / Vitória imediata (proibido no Nível I).  
Ordem da Rodada: A cada avanço, são consumidos 10 créditos de bateria antes de processar o efeito da casa.  

Status do Projeto

Este projeto ainda está em fase de desenvolvimento e melhoria contínua.
