programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> m

	// Variáveis globais do jogador
	inteiro bateria = 100
	inteiro total_creditos_ganhos = 0
	inteiro total_rodadas = 0
	logico tesouro_encontrado = falso

	// Tabuleiro e controle de nível
	cadeia tabuleiro[5][5]
	inteiro casa_risco = 0
	cadeia nivel_atingido = "I"

	// Limites de casas dos níveis
	inteiro fim_nivel_1 = 0
	inteiro fim_nivel_2 = 0
	inteiro fim_nivel_3 = 25

	funcao inicio()
	{
		escreva("Jogo iniciado!\n")
	}
}