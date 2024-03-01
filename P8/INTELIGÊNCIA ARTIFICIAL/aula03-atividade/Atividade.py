'''
Neste projeto simplificado, desenvolvam um Sistema Simplificado de Streaming de Vídeo utilizando conceitos básicos de
Neste projeto simplificado, desenvolvam um Sistema Simplificado de Streaming de Vídeo utilizando conceitos básicos de
programação em Python. O sistema permitirá aos usuários visualizar o catálogo de filmes e séries disponíveis para
streaming.

- O sistema deverá permitir aos usuários visualizar o catálogo de filmes e séries disponíveis para streaming.
- Os filmes e séries disponíveis serão listados em um menu simples.
- Os filmes e séries disponíveis para streaming serão armazenados em listas simples.
- Cada filme ou série será representado por uma string contendo o título.-
- Os alunos podem implementar o projeto em um único arquivo Python.
- O projeto será uma versão simplificada e não incluirá funcionalidades avançadas como cadastro de usuários,
assinatura de planos ou gerenciamento de assinaturas.
- O foco deve ser implementação das funcionalidades básicas dentro do tempo disponível.

Esse projeto simplificado fornecerá uma introdução prática ao desenvolvimento de uma aplicação de streaming de vídeo em
Python dentro de um limite de tempo razoável.
'''


def mostrar_menu():
    print("-=-" * 20)
    print("Escolha uma das opções abaixo:")
    print("1- Listar filmes;")
    print("2- Listar séries;")
    print("3- Cadastrar filmes;")
    print("4- Cadastrar séries;")
    print("5- Sair.")


print("Bem vindo a Netflix!")

lista_filmes = ["Filme 1", "Filme 2", "Filme 3", "Filme 4", "Filme 5"]
lista_series = ["Série 1", "Série 2", "Série 3", "Série 4", "Série 5"]

while True:
    mostrar_menu()
    opcao = input("Digite o número da opção desejada: ")
    print()

    if opcao == "1":
        print("* Lista de Filmes: *")
        for filme in lista_filmes:
            print(filme)
    elif opcao == "2":
        print("* Lista de Séries: *")
        for serie in lista_series:
            print(serie)
    elif opcao == "3":
        print("* Cadastro de Filmes: *")
        filme = input("Digite o nome do filme: ")
        lista_filmes.append(filme)
    elif opcao == "4":
        print("* Cadastro de Séries: *")
        serie = input("Digite o nome da série: ")
        lista_series.append(serie)
    elif opcao == "5":
        print("Saindo...")
        break
    else:
        print("Opção inválida. Tente novamente.")
