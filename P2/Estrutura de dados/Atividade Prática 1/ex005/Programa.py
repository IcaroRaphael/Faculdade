"""
5 - Escreva um programa em Python que simule o controle de uma pista de decolagem de
aviões em um aeroporto. Neste programa, o usuário deve ser capaz de realizar as seguintes
tarefas:
    a. Listar o número de aviões aguardando na fila de decolagem;
    b. Autorizar a decolagem do primeiro avião da fila;
    c. Adicionar um avião à fila de espera;
    d. Listar todos os aviões na fila de espera;
    e. Listar as características do primeiro avião da fila.
"""
import numpy as np


class Fila:
    def __init__(self, capacidade):
        self.capacidade = capacidade
        self.inicio = 0
        self.final = -1
        self.numeroElementos = 0
        self.valores = np.empty(self.capacidade, dtype=dict)

    def filaVazia(self):
        return self.numeroElementos == 0

    def filaCheia(self):
        return self.numeroElementos == self.capacidade

    def enfileirar(self, valor):
        if self.filaCheia():
            print('A fila está cheia')
        else:
            self.valores[self.numeroElementos] = valor
            self.numeroElementos += 1

    def desenfileirar(self):
        if self.filaVazia():
            print('A fila já está vazia')
        else:
            for x in range(self.numeroElementos - 1):
                temp = self.valores[x + 1]
                self.valores[x + 1] = None
                self.valores[x] = temp
            self.numeroElementos -= 1

    def primeiro(self):
        if self.filaVazia():
            return -1
        else:
            return self.valores[self.inicio]


# FUNÇÃO LINHA
def linha():
    print("\033[1;34m-=-\033[m"*20)


# FUNÇÃO MENSAGEM DE INVALIDEZ
def comandoInvalido():
    print("\033[1;31mOpção inválida. Tente novamente!\033[m")


print("* FILA *")
# DEFININDO TAMANHO DA FILA
while True:
    try:
        linha()
        quant = int(input("Quantos aviões a pista suporta? R:"))
        break
    except:
        comandoInvalido()
fila = Fila(quant)


# MENU
while True:
    while True:
        try:
            linha()
            print("* MENU DE OPERAÇÕES *")
            print("1 - Listar o número de aviões aguardando na fila de decolagem;")
            print("2 - Autorizar a decolagem do primeiro avião da fila;")
            print("3 - Adicionar um avião à fila de espera;")
            print("4 - Listar todos os aviões na fila de espera;")
            print("5 - Listar as características do primeiro avião da fila.")
            print("6 - Finalizar programa;")
            escolha = int(input("Insira a operação: "))
            break
        except:
            comandoInvalido()
    print()
    # a. Listar o número de aviões aguardando na fila de decolagem;
    if escolha == 1:
        if fila.filaVazia():
            print("A fila está vazia!")
        else:
            print(f"Aviões na fila de decolagem: {fila.numeroElementos}")

    # b. Autorizar a decolagem do primeiro avião da fila;
    elif escolha == 2:
        if fila.filaVazia():
            print("A fila está vazia!")
        else:
            print(f"Avião Nº{fila.valores[0]['Número']} decolando...")
            fila.desenfileirar()

    # c. Adicionar um avião à fila de espera;
    elif escolha == 3:
        if fila.filaCheia():
            print("A fila está cheia!")
        else:
            print("INSIRA OS DADOS DO AVIÃO:")
            while True:
                try:
                    numero = int(input("Nº do avião: "))
                    break
                except:
                    comandoInvalido()
            while True:
                try:
                    descricao = str(input("Descrição: "))
                    break
                except:
                    comandoInvalido()
            aviao = {'Número': numero, 'Descrição': descricao}
            fila.enfileirar(aviao.copy())

    # d. Listar todos os aviões na fila de espera;
    elif escolha == 4:
        if fila.filaVazia():
            print("A fila está vazia!")
        else:
            print("FILA DE ESPERA: ",)
            for y in range(fila.numeroElementos):
                print(f"{y+1}º: (Nº: {fila.valores[y]['Número']}, Descrição: {fila.valores[y]['Descrição']})")
            print()

    # e. Listar as características do primeiro avião da fila.
    elif escolha == 5:
        if fila.filaVazia():
            print("A fila está vazia!")
        else:
            print(f"Primeiro avião da fila: (Nº: {fila.valores[0]['Número']}, Descrição: {fila.valores[0]['Descrição']})")

    # STOP DO PROGRAMA
    elif escolha == 6:
        print("Finalizando programa...")
        break
    else:
        comandoInvalido()
