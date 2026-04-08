Algoritmo "AgendaTelefonica"

Var
nomes: vetor[1..100] de caractere
telefones: vetor[1..100] de caractere
total: inteiro
opcao: inteiro
i: inteiro
nomeBusca: caractere

Inicio
total <- 0

repita

```
  escreval("===== AGENDA TELEFONICA =====")
  escreval("1 - Inserir contacto")
  escreval("2 - Editar contacto")
  escreval("3 - Eliminar contacto")
  escreval("4 - Listar contactos")
  escreval("0 - Sair")
  leia(opcao)

  escolha opcao

  caso 1
     // Inserir contacto
     se total < 100 entao
        total <- total + 1
        escreva("Nome: ")
        leia(nomes[total])
        escreva("Telefone: ")
        leia(telefones[total])
     senao
        escreval("Agenda cheia!")
     fimse

  caso 2
     // Editar contacto
     escreva("Digite o nome a procurar: ")
     leia(nomeBusca)

     para i de 1 ate total faca
        se nomes[i] = nomeBusca entao
           escreva("Novo nome: ")
           leia(nomes[i])
           escreva("Novo telefone: ")
           leia(telefones[i])
        fimse
     fimpara

  caso 3
     // Eliminar contacto
     escreva("Digite o nome a eliminar: ")
     leia(nomeBusca)

     para i de 1 ate total faca
        se nomes[i] = nomeBusca entao
           nomes[i] <- nomes[total]
           telefones[i] <- telefones[total]
           total <- total - 1
           escreval("Contacto eliminado!")
        fimse
     fimpara

  caso 4
     // Listar contactos
     para i de 1 ate total faca
        escreval(nomes[i], " - ", telefones[i])
     fimpara

  fimescolha
```

ate opcao = 0

Fimalgoritmo
