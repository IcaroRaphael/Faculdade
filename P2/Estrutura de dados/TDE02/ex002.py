"""
2.Faça um Programa que peça a idade e a altura de 5 pessoas, armazene cada informação
no seu respectivo vetor. Imprima a idade e a altura na ordem inversa a ordem
lida
"""
cadastro = dict()
lista = list()
for pessoa in range(0, 5):
    cadastro["Idade"] = int(input("Idade: "))
    cadastro["Altura"] = float(input("Altura: "))
    lista.append(cadastro.copy())
    cadastro.clear()
    print("-=-"*10)
print(f"-=-{'ORDEM INVERSA':^24}-=-")
print("-=-"*10)
for x in range(4, -1, -1):
    print(f"Idade: {lista[x]['Idade']} ano(s)")
    print(f"Altura: {lista[x]['Altura']} m")
    print("-"*30)
