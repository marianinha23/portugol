programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro i, j, posicao, numeros[10]

    para (i = 0; i < 10; i++) {
      numeros[i] = u.sorteia(0, 9)
      // Verifique se o n�mero j� existe no vetor
      para (j = 0; j < i; j++) {
        enquanto (numeros[i] == numeros[j]) {
          numeros[i] = u.sorteia(0, 9)
          j = 0 // Reinicie a verifica��o a partir do in�cio do vetor
        }
      }

      escreva(numeros[i], " ")
    }

    // Verifique se a ordem 2, 5, 8 est� correta
    posicao = 0 // Iniciando na primeira posi��o

    para (i = 0; i < 10; i++) {
      se (numeros[i] == 2 e posicao == 0) {
        posicao = 1 // Encontrou o 2, v� para a pr�xima posi��o
      } senao se (numeros[i] == 5 e posicao == 1) {
        posicao = 2 // Encontrou o 5, v� para a pr�xima posi��o
      } senao se (numeros[i] == 8 e posicao == 2) {
        posicao = 3 // Encontrou o 8, todos os n�meros est�o em ordem
        interrompa
      }
    }

    se (posicao == 3) {
      escreva("\nA ordem 2, 5, 8 est� correta no vetor.")
    } senao {
      escreva("\nA ordem 2, 5, 8 n�o est� correta no vetor.")
    }
  }
}

