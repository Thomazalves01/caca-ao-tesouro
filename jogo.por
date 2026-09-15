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
		solicitarPercentuaisNiveis()
	}

	// ==========================================
	// CONFIGURAÇÃO DOS NÍVEIS
	// ==========================================
	funcao solicitarPercentuaisNiveis()
	{
		real p1, p2, p3
		logico valido = falso

		faca
		{
			escreva("========== CONFIGURAÇÃO DOS NÍVEIS ==========\n")
			escreva("Informe o percentual do Nível I: ")
			leia(p1)
			escreva("Informe o percentual do Nível II: ")
			leia(p2)
			escreva("Informe o percentual do Nível III: ")
			leia(p3)

			se (p1 + p2 + p3 == 100.0) {
				valido = verdadeiro
			} senao {
				escreva("\n[ERRO] A soma dos percentuais deve ser exatamente 100%. Tente novamente!\n\n")
			}
		} enquanto (nao valido)

		real calc1 = 25.0 * (p1 / 100.0)
		real calc2 = 25.0 * ((p1 + p2) / 100.0)

		fim_nivel_1 = m.arredondar(calc1, 0)
		fim_nivel_2 = m.arredondar(calc2, 0)
		fim_nivel_3 = 25
	}

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