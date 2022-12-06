"""
1.Faça um programa que gera uma lista dos números primos existentes entre 1 e um
número inteiro informado pelo usuário.
"""
primo = list()
num = int(input("Insira um número: "))

for numerador in range(2, num+1):
    cont = 0
    for denominador in range(1, num+1):
        if(numerador % denominador) == 0:
            cont += 1
    if cont == 2:
        primo.append(numerador)
print(f"Lista dos números primo: {primo}")
