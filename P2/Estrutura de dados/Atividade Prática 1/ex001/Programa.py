"""
1 - Construa uma Pilha utilizando a linguagem Python. Dada uma sequência contendo N (N > 0) números inteiros,
imprimi-la na ordem inversa.
"""

import numpy as np


class Pilha:
    def __init__(self, capacidade):
        self.capacidade = capacidade
        self.topo = -1
        self.valores = np.empty(self.capacidade, dtype=int)

    def pilhaCheia(self):
        if self.topo == self.capacidade - 1:
            return True
        else:
            return False

    def pilhaVazia(self):
        if self.topo == -1:
            return True
        else:
            return False

    def empilhar(self, valor):
        if self.pilhaCheia():
            print('A Pilha está cheia')
        else:
            self.topo += 1
            self.valores[self.topo] = valor

    def desempilhar(self):
        if self.pilhaVazia():
            print('A pilha está vazia')
            return -1
        else:
            valor = self.valores[self.topo]
            self.topo -= 1
            return valor

    def verTopo(self):
        if self.topo != -1:
            return self.valores[self.topo]
        else:
            return -1

    def mostrarInversa(self):
        if pilha.pilhaVazia():
            print("A pilha está vazia!")
        else:
            print("Ordem inversa: ", end="")
            for valor in range(self.capacidade-1, -1, -1):
                print(f"{pilha.valores[valor]} ", end="")


# FUNÇÃO LINHA
def linha():
    print("\033[1;34m-=-\033[m"*20)


# FUNÇÃO MENSAGEM DE INVALIDEZ
def comandoInvalido():
    print("\033[1;31mOpção inválida. Tente novamente!\033[m")


print("* PILHA *")
# Definindo tamanho da pilha
while True:
    linha()
    try:
        quant = int(input('Insira o tamanho da pilha: '))
        break
    except:
        comandoInvalido()
pilha = Pilha(quant)

# Inserindo valores a pilha
linha()
for valor in range(quant):
    if pilha.pilhaCheia():
        print("A pilha está cheia!")
    else:
        while True:
            try:
                numero = int(input(f"{valor+1}º número: "))
                break
            except:
                comandoInvalido()
        pilha.empilhar(numero)

linha()
pilha.mostrarInversa()
