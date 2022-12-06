"""
4 - Construa uma Fila de Prioridade utilizando a linguagem Python em que sejam
implementadas as funções para inserção de um novo elemento (inteiro) na fila e a
remoção do elemento de mais alta prioridade
"""
import numpy as np


class FilaPrioridade:

    def __init__(self, capacidade):
        self.capacidade = capacidade
        self.numeroElementos = 0
        self.valores = np.empty(self.capacidade, dtype=int)

    def filaVazia(self):
        if self.numeroElementos == 0:
            return True
        else:
            return False

    def filaCheia(self):
        if self.numeroElementos == self.capacidade:
            return True
        else:
            return False

    def enfileirar(self, valor):
        if self.filaCheia():
            print("Fila cheia!")
        else:
            if self.numeroElementos == 0:
                self.valores[self.numeroElementos] = valor
                self.numeroElementos += 1
            else:
                x = self.numeroElementos - 1
                while x >= 0:
                    if valor < self.valores[x]:
                        self.valores[x+1] = self.valores[x]
                    else:
                        break
                    x -= 1
                self.valores[x+1] = valor
                self.numeroElementos += 1

    def desenfileirar(self):
        if self.filaVazia():
            print("A fila está vazia.")
        else:
            temp = self.valores[0]
            for x in range(self.numeroElementos - 1):
                if x == 0:
                    self.valores[x] = self.valores[x+1]
                    self.valores[x+1] = 0
                else:
                    self.valores[x] = self.valores[x+1]
                    self.valores[x+1] = 0
            self.numeroElementos -= 1
            return temp

    def verPrimeiro(self):
        if self.filaVazia():
            return - 1
        return self.valores[self.numeroElementos - 1]


# FUNÇÃO LINHA
def linha():
    print("\033[1;34m-=-\033[m"*20)


# FUNÇÃO MENSAGEM DE INVALIDEZ
def comandoInvalido():
    print("\033[1;31mOpção inválida. Tente novamente!\033[m")

print("* FILA DE PRIORIDADE *")
# DEFININDO TAMANHO DA FILA
while True:
    linha()
    try:
        quant = int(input("Insira o tamanho da fila: "))
        break
    except:
        comandoInvalido()
fila = FilaPrioridade(quant)

# MENU
while True:
    while True:
        try:
            linha()
            print("OPERAÇÕES DISPONÍVEIS:")
            print("1 - Inserir elemento;")
            print("2 - Remover elemento de maior prioridade;")
            print("3 - Visualizar elementos;")
            print("4 - Sair do programa;")
            opcao = int(input("Insira uma opção: "))
            break
        except:
            comandoInvalido()
    print()

    # 1 - Inserir elemento;
    if opcao == 1:
        if fila.filaCheia():
            print("A fila está cheia!")
        else:
            while True:
                try:
                    elemento = int(input("Insira um elemento (Diferente de zero): "))
                    break
                except:
                    comandoInvalido()
            fila.enfileirar(elemento)

    # 2 - Remover elemento de maior prioridade;
    elif opcao == 2:
        if fila.filaVazia():
            print("A fila está vazia!")
        else:
            print(f"Removendo elemento: {fila.desenfileirar()}")

    # 3 - Visualizar elementos;
    elif opcao == 3:
        if fila.filaVazia():
            print("A fila está vazia!")
        else:
            print(f"Elementos na fila:", end="")
            for x in range(fila.numeroElementos):
                print(f" {fila.valores[x]}", end="")
            print()

    # 4 - Sair do programa;
    elif opcao == 4:
        print("Finalizando programa...")
        break

    else:
        comandoInvalido()
