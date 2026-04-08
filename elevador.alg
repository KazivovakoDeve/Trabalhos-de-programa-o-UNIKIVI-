Algoritmo "SimuladorElevador"

Var
   andarAtual, capacidade, pessoas, opcao: inteiro
   filaAndar: vetor[1..20] de inteiro
   filaDirecao: vetor[1..20] de caractere
   inicial, fim, i: inteiro
   direcaoAtual: caractere

Inicio

   // Inicialização
   andarAtual <- 0
   capacidade <- 8
   pessoas <- 0
   inicial <- 1
   fim <- 0
   direcaoAtual <- "S" // S = parado, U = subir, D = descer

   escreval("======================================")
   escreval("      SIMULADOR DE ELEVADOR")
   escreval("======================================")

   Repita

      escreval("")
      escreval("1 - Chamar elevador")
      escreval("2 - Entrar pessoas")
      escreval("3 - Sair pessoas")
      escreval("4 - Processar próxima chamada")
      escreval("5 - Estado atual")
      escreval("0 - Sair")
      leia(opcao)

      escolha opcao

      // CHAMAR ELEVADOR
      caso 1
         se fim < 20 entao
            fim <- fim + 1
            escreva("Digite o andar: ")
            leia(filaAndar[fim])
            escreva("Direção (U=Subir / D=Descer): ")
            leia(filaDirecao[fim])
         senao
            escreval("Fila cheia!")
         fimse

      // ENTRAR PESSOAS
      caso 2
         escreva("Número de pessoas a entrar: ")
         leia(i)
         se pessoas + i <= capacidade entao
            pessoas <- pessoas + i
         senao
            escreval("Capacidade excedida!")
         fimse

      // SAIR PESSOAS
      caso 3
         escreva("Quantas pessoas querem sair? ")
         leia(i)
         se i <= pessoas entao
            pessoas <- pessoas - i
         senao
            escreval("Número inválido!")
         fimse

      // PROCESSAR CHAMADA
      caso 4
         se inicial <= fim entao

            // Definir direção
            se filaAndar[inicial] > andarAtual entao
               direcaoAtual <- "U"
            senao
               direcaoAtual <- "D"
            fimse

            // Movimento
            enquanto andarAtual <> filaAndar[inicial] faca
               se direcaoAtual = "U" entao
                  andarAtual <- andarAtual + 1
               senao
                  andarAtual <- andarAtual - 1
               fimse
               escreval("Elevador no andar: ", andarAtual)
            fimenquanto

            escreval("Parou no andar ", andarAtual)

            // Remover da fila
            inicial <- inicial + 1

            se inicial > fim entao
               direcaoAtual <- "S"
            fimse

         senao
            escreval("Sem chamadas!")
         fimse

      // ESTADO ATUAL
      caso 5
         escreval("----- ESTADO DO ELEVADOR -----")
         escreval("Andar atual: ", andarAtual)
         escreval("Pessoas: ", pessoas, "/", capacidade)
         escreval("Direção: ", direcaoAtual)

         escreval("Chamadas na fila:")
         para i de inicial ate fim faca
            escreval("Andar: ", filaAndar[i], " | Direção: ", filaDirecao[i])
         fimpara

      fimescolha

   ate opcao = 0

Fimalgoritmo
