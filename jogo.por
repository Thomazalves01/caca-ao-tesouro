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
		GerarCenario()
		exibirResultado()
	}

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

	funcao GerarCenario()
	{
		para (inteiro i = 0; i < 5; i++) {
			para (inteiro j = 0; j < 5; j++) {
				tabuleiro[i][j] = "---"
			}
		}

		inteiro casa_b05 = u.sorteia(1, 25)
		colocarElementoNaCasa(casa_b05, "B05")

		inteiro casa_b10 = sortearCasaLivre(1, 25)
		colocarElementoNaCasa(casa_b10, "B10")

		casa_risco = sortearCasaLivre(fim_nivel_1 + 1, 25)
		colocarElementoNaCasa(casa_risco, "RIS")

		inteiro casa_tesouro = sortearCasaLivre(fim_nivel_1 + 1, 25)
		colocarElementoNaCasa(casa_tesouro, "$$$")
	}

	funcao colocarElementoNaCasa(inteiro numero_casa, cadeia elemento)
	{
		inteiro lin = (numero_casa - 1) / 5
		inteiro col = (numero_casa - 1) % 5
		tabuleiro[lin][col] = elemento
	}

	funcao logico casaEstaOcupada(inteiro numero_casa)
	{
		inteiro lin = (numero_casa - 1) / 5
		inteiro col = (numero_casa - 1) % 5
		retorne tabuleiro[lin][col] != "---"
	}

	funcao inteiro sortearCasaLivre(inteiro min, inteiro max)
	{
		inteiro casa
		faca {
			casa = u.sorteia(min, max)
		} enquanto (casaEstaOcupada(casa))

		retorne casa
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

	// ==========================================
	// TELA FINAL DE RESULTADOS
	// ==========================================
	funcao exibirResultado()
	{
		escreva("\n========== RESULTADO DO JOGO ==========\n")
		para (inteiro i = 0; i < 5; i++) {
			para (inteiro j = 0; j < 5; j++) {
				escreva(tabuleiro[i][j], "\t")
			}
			escreva("\n")
		}
		escreva("---------------------------------------\n")
		escreva("Bateria restante: ", bateria, " créditos\n")
		escreva("Créditos obtidos: ", total_creditos_ganhos, " créditos\n")
		escreva("Nível atingido: ", nivel_atingido, "\n")
		
		se (tesouro_encontrado) {
			escreva("Tesouro encontrado: SIM\n")
		} senao {
			escreva("Tesouro encontrado: NÃO\n")
		}
		
		escreva("Posição do risco:\n")
		escreva("Casa: ", casa_risco, "\n")
		escreva("Quantidade de rodadas: ", total_rodadas, "\n")
		escreva("========================================\n")
	}
}