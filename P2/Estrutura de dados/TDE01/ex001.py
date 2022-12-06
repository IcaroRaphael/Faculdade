"""
1.Faça um programa que peça uma nota entre zero e dez. Mostre uma mensagem caso o valor seja inválido
e continue pedindo até que o usuário informe um valor válido.
"""
nota = -1
while ((nota < 0) or (nota > 10)):
   nota = float(input("Insira uma nota entre zero e dez: "))
   if ((nota < 0) or (nota > 10)):
       print("ERRO! Tente novamente.")
   else:
       print("Nota cadastrada com sucesso!")
   print("-=-"*14)
