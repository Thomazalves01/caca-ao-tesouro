programa
{
    inclua biblioteca Util --> u

    funcao inicio()
    {
        inteiro vida = 100
        inteiro moedas = 0
        inteiro porta = 0
        inteiro rodada = 1

        escreva("=== BEM-VINDO À MASMORRA MÍSTICA ===\n")

        enquanto (vida > 0 e rodada <= 5)
        {
            escreva("\n--- Rodada ", rodada, " de 5 ---\n")
            escreva("Vida atual: ", vida, " | Moedas: ", moedas, "\n")
            escreva("Escolha uma porta para explorar (1, 2 ou 3): ")
            leia(porta)

            inteiro evento = u.sorteia(1, 3)

            se (evento == 1)
            {
                inteiro dano = u.sorteia(15, 30)
                vida = vida - dano
                escreva("> Um monstro apareceu! Você sofreu ", dano, " de dano.\n")
            }
            senao se (evento == 2)
            {
                inteiro bau = u.sorteia(20, 50)
                moedas = moedas + bau
                escreva("> Você encontrou um baú do tesouro com ", bau, " moedas!\n")
            }
            senao
            {
                inteiro cura = u.sorteia(10, 25)
                vida = vida + cura
                escreva("> Você encontrou uma poção e recuperou ", cura, " de vida!\n")
            }

            rodada = rodada + 1
        }

        escreva("\n====================================\n")
        se (vida > 0)
        {
            escreva("VITÓRIA! Você sobreviveu à masmorra com ", vida, " de vida e ", moedas, " moedas acumuladas!\n")
        }
        senao
        {
            escreva("GAME OVER! Sua vida chegou a zero na masmorra.\n")
        }
    }
}