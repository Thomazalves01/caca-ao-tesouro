programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> m

	inteiro bateria = 100
	inteiro total_creditos_ganhos = 0
	inteiro total_rodadas = 0
	logico tesouro_encontrado = falso

	cadeia tabuleiro[5][5]
	inteiro casa_risco = 0
	cadeia nivel_atingido = "I"

	inteiro fim_nivel_1 = 0
	inteiro fim_nivel_2 = 0
	inteiro fim_nivel_3 = 25

	funcao inicio()
	{
		escreva("Jogo iniciado!\n")
	}

	// ==========================================
	// FUNÇÕES OBRIGATÓRIAS
	// ==========================================
	funcao DiminuirBateria()
	{
		bateria = bateria - 10
	}

	funcao Bonus(inteiro valor)
	{
		bateria = bateria + valor
		total_creditos_ganhos = total_creditos_ganhos + valor
	}

	funcao Risco()
	{
		bateria = bateria - 3
	}
}