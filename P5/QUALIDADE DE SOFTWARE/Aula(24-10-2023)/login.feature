#language: pt

Funcionalidade: Login
    Como comprador da loja
    Quero acessar o portal
    Para fazer compras

Cenário: Autenticação válida
    Dado que o usuário acesse a página inicial do saucedemo
    Quando o usuário informar o login "standart_user"
    E informar a senha "secret_sauce"
    Então será exibido o texto "Products"

Cenário: Usuário inválido
    Dado que o usuário acesse a página inicial do saucedemo
    Quando o usuário informar o login "user"
    E informar a senha "secret_sauce"
    Então será exibido o texto "Epic sadface: Username and password do not match any user in this service"

Cenário: Senha inválida
    Dado que o usuário acesse a página inicial do saucedemo
    Quando o usuário informar o login "standart_user"
    E informar a senha "password"
    Então será exibido o texto "Epic sadface: Username and password do not match any user in this service"

Cenário: Usuário em branco
    Dado que o usuário acesse a página inicial do saucedemo
    Quando o usuário informar o login ""
    E informar a senha "secret_sauce"
    Então será exibido o texto "Epic sadface: Username is required"

Cenário: Senha em branco
    Dado que o usuário acesse a página inicial do saucedemo
    Quando o usuário informar o login "standart_user"
    E informar a senha ""
    Então será exibido o texto "Epic sadface: Password is required"