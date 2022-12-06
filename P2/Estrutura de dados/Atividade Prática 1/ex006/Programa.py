"""
6 - Construa uma Lista Sequencial utilizando a linguagem Python com as seguintes operações:
    a. Verificar se um número pertence lista;
    b. Inserir um novo elemento na lista;
    c. Remover um elemento da lista;
    d. Imprimir os valores da lista;
"""
import numpy as np


class ListaSequencial:
    def __init__(self, capacidade):
        self.capacidade = capacidade
        self.ultimaPosicao = -1
        self.valores = np.empty(self.capacidade, dtype=int)

    def listaCheia(self):
        if self.ultimaPosicao == self.capacidade-1:
            return True
        else:
            return False

    def listaVazia(self):
        if self.ultimaPosicao == -1:
            return True
        else:
            return False

    # O(n)
    def imprimir(self):
        if self.listaVazia():
            print('A lista está vazia!')
        else:
            for i in range(self.ultimaPosicao + 1):
                print(i, ' - ', self.valores[i])

    # O(1) - O(2)
    def inserir(self, valor):
        if self.listaCheia():
            print('A lista está cheia!')
        else:
            self.ultimaPosicao += 1
            self.valores[self.ultimaPosicao] = valor

    # O(n)
    def pesquisar(self, valor):
        if self.listaVazia():
            print("A lista está vazia!")
        else:
            for i in range(self.ultimaPosicao + 1):
                if valor == self.valores[i]:
                    return i
            return "Não encontrado!"

    # O(n)
    def excluir(self, valor):
        posicao = self.pesquisar(valor)
        if self.listaVazia():
            print("A lista está vazia!")
        else:
            for i in range(posicao, self.ultimaPosicao):
                self.valores[i] = self.valores[i + 1]
            self.ultimaPosicao -= 1


# FUNÇÃO LINHA
def linha():
    print("\033[1;34m-=-\033[m"*20)


# FUNÇÃO MENSAGEM DE INVALIDEZ
def comandoInvalido():
    print("\033[1;31mOpção inválida. Tente novamente!\033[m")


print("* LISTA SEQUENCIAL *")
# DEFININDO TAMANHO DA LISTA
while True:
    try:
        linha()
        quant = int(input("Insira o tamanho da lista: "))
        break
    except:
        comandoInvalido()
lista = ListaSequencial(quant)

# MENU
while True:
    while True:
        try:
            linha()
            print("* MENU DE OPERAÇÕES *")
            print("1 - Verificar se um número pertence lista;")
            print("2 - Inserir um novo elemento na lista;")
            print("3 - Remover um elemento da lista;")
            print("4 - Imprimir os valores da lista;")
            print("5 - Finalizar programa;")
            escolha = int(input("Insira a operação: "))
            break
        except:
            comandoInvalido()
    print()
    # a. Verificar se um número pertence lista;
    if escolha == 1:
        if lista.listaVazia():
            print("A lista está vazia!")
        else:
            print("Verificando se um número pertence lista:")
            while True:
                try:
                    valor = int(input("Insira um valor: "))
                    break
                except:
                    comandoInvalido()
            print(f"Valor: {valor}|Posição: {lista.pesquisar(valor)}")

    # b. Inserir um novo elemento na lista;
    elif escolha == 2:
        if lista.listaCheia():
            print("A lista está cheia!")
        else:
            print("Inserindo um novo elemento na lista:")
            while True:
                try:
                    valor = int(input("Insira um valor: "))
                    break
                except:
                    comandoInvalido()
            lista.inserir(valor)

    # c. Remover um elemento da lista;
    elif escolha == 3:
        if lista.listaVazia():
            print("A lista está vazia!")
        else:
            print("Remover um elemento da lista:")
            while True:
                try:
                    valor = int(input("Insira um valor: "))
                    break
                except:
                    comandoInvalido()
            lista.excluir(valor)

    # d. Imprimir os valores da lista;
    elif escolha == 4:
        if lista.listaVazia():
            print("A lista está vazia!")
        else:
            print("Imprimir os valores da lista:")
            print("Lista:", end="")
            for x in range(lista.ultimaPosicao+1):
                print(f" {lista.valores[x]}", end="")
            print()

    # STOP DO PROGRAMA
    elif escolha == 5:
        print("Finalizando programa...")
        break

    else:
        comandoInvalido()
