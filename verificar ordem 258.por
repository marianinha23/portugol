programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro i, j, posicao, numeros[10]

    para (i = 0; i < 10; i++) {
      numeros[i] = u.sorteia(0, 9)
      // Verifique se o número já existe no vetor
      para (j = 0; j < i; j++) {
        enquanto (numeros[i] == numeros[j]) {
          numeros[i] = u.sorteia(0, 9)
          j = 0 // Reinicie a verificação a partir do início do vetor
        }
      }

      escreva(numeros[i], " ")
    }

    // Verifique se a ordem 2, 5, 8 está correta
    posicao = 0 // Iniciando na primeira posição

    para (i = 0; i < 10; i++) {
      se (numeros[i] == 2 e posicao == 0) {
        posicao = 1 // Encontrou o 2, vá para a próxima posição
      } senao se (numeros[i] == 5 e posicao == 1) {
        posicao = 2 // Encontrou o 5, vá para a próxima posição
      } senao se (numeros[i] == 8 e posicao == 2) {
        posicao = 3 // Encontrou o 8, todos os números estão em ordem
        interrompa
      }
    }

    se (posicao == 3) {
      escreva("\nA ordem 2, 5, 8 está correta no vetor.")
    } senao {
      escreva("\nA ordem 2, 5, 8 não está correta no vetor.")
    }
  }
}

