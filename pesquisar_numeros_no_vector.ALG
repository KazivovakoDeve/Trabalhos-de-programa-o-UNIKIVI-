Algoritmo "semnome"





Var

   numeros: vetor [1..20] de inteiro
   numero, cont, quantidade:inteiro

Inicio

   // Lendo os 20 números com a extrurura de repetição
   para cont de 1 ate 20 faca
      escreval("Insira",cont, " º número:")
      leia(numeros[cont])
      limpatela
   fimpara

   // Pedindo que o usúario insira o número a ser pesquisado

   escreval("Digite o número a pesquisar: ")
   leia(numero)


   // Pesquisando o número no vector e contar as ezes que o número aparece
   para cont de 1 ate 20 faca
      se numeros [cont] = numero entao
         quantidade <- quantidade + 1
      fimse
   fimpara


   se quantidade > 0 entao
      escreval("O número aparece", quantidade, " no vector")
   senao
      escreval("O número não existe no vector")
      fimse
Fimalgoritmo