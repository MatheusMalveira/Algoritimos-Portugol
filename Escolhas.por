programa {
  inclua biblioteca Util --> u

  funcao inicio() {
    inteiro esc, ano, idade2050, i
    real altura, peso, imc, media, trimestre1, trimestre2, trimestre3, prova1, prova2, prova3, trabalho1, trabalho2, trabalho3, minimo, maximo, sorteios, numero_sorteado

    escreva("-------------------------------------- \n")
    escreva("               ESCOLHA                 \n")
    escreva("-------------------------------------- \n")
    escreva("\n[1] Para calcular o IMC. \n")
    escreva("[2] Para calcular a média anual. \n")
    escreva("[3] Para descobrir sua idade em 2050. \n")
    escreva("[4] Para sortear um número aleatório. \n")
    escreva("\nSua escolha: ")
    leia(esc)
  
    se (esc == 1) {
      escreva("---------------------------- \n")
      escreva("  Vamos descobrir seu IMC!   \n")
      escreva("---------------------------- \n")

      escreva("\nQual o seu peso (kg)? ")
      leia(peso)
      escreva("Qual sua altura (m)? ")
      leia(altura)
      imc = peso / (altura * altura)
      escreva("\nSeu IMC é: ", imc, "\n")

      se (imc < 18.5) {
        escreva("\nClassificação: BAIXO PESO")
      }
      senao se (imc < 25) {
        escreva("\nClassificação: NORMAL")
      }
      senao se (imc < 30) {
        escreva("\nClassificação: SOBREPESO")
      }
      senao {
        escreva("\nClassificação: OBESIDADE")
      }
    }
    senao se (esc == 2) {
      escreva("------------------------------------ \n")
      escreva("  Vamos descobrir sua média anual!   \n")
      escreva("------------------------------------ \n")

      escreva("\nMáximo prova: 60")
      escreva("\nMáximo trabalho: 40\n")

      escreva("\nQual foi a nota de prova do 1º trimestre? ")
      leia(prova1)
      escreva("Qual foi a nota de trabalho do 1º trimestre? ")
      leia(trabalho1)
      escreva("\nQual foi a nota de prova do 2º trimestre? ")
      leia(prova2)
      escreva("Qual foi a nota de trabalho do 2º trimestre? ")
      leia(trabalho2)
      escreva("\nQual foi a nota de prova do 3º trimestre? ")
      leia(prova3)
      escreva("Qual foi a nota de trabalho do 3º trimestre? ")
      leia(trabalho3)

      trimestre1 = prova1 + trabalho1
      trimestre2 = prova2 + trabalho2
      trimestre3 = prova3 + trabalho3
      media = (trimestre1 + trimestre2 + trimestre3) / 3

      escreva("\nSua nota do primeiro trimestre: ", trimestre1)
      escreva("\nSua nota do segundo trimestre: ", trimestre2)
      escreva("\nSua nota do terceiro trimestre: ", trimestre3)
      escreva("\nSua média anual: ", media, "\n")
      
      se (media >= 60)
        escreva("\nVocê foi APROVADO!")
      senao
        escreva("\nVocê foi REPROVADO.")
    }
    senao se (esc == 3) {
      escreva("-------------------------------------- \n")
      escreva("  Vamos descobrir sua idade em 2050!   \n")
      escreva("-------------------------------------- \n")
      escreva("\nEm que ano você nasceu? ")
      leia(ano)
      idade2050 = 2050 - ano
      escreva("\nSua idade em 2050 será: ", idade2050, " anos.")
    }
    senao se (esc == 4){
      escreva("-------------------------------------- \n")
      escreva("  Vamos sortear um número aleatório!   \n")
      escreva("-------------------------------------- \n")

      escreva("\nInforme um valor mínimo: ")
      leia(minimo)

      escreva("Informe um valor máximo: ")
      leia(maximo)

      escreva("Informe quantos valores deseja sortear: ")
      leia(sorteios)

      para (i = 1; i <= sorteios; i++) {
    
        numero_sorteado = u.sorteia(minimo, maximo)
        escreva("\nSorteio N° ", i, ": ", numero_sorteado)
      }
    }
    senao {
      escreva("\nDigite uma opção válida.")
    }
  }
}
