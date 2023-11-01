#language: pt

Funcionalidade: Login
    Como comprador da loja
    Quero acessar o portal
    Para fazer compras

Contexto: Dado que o usuário acesse a página inicial do saucedemo

Esquema de Cenário: Autenticações válidas
    Quando o usuário informar o login <usuario>
    E informar a senha <senha>
    Então será exibido o texto "Products"
Exemplos:
| usuario                    | senha          |
| "standard_user"            | "secret_sauce" |
| "problem_user"             | "secret_sauce" |
| "performance_glitch_user"  | "secret_sauce" |
| "error_user"               | "secret_sauce" |
| "visual_user"              | "secret_sauce" |

Esquema de Cenário: Autenticações inválidas
    Quando o usuário informar o login <usuario>
    E informar a senha <senha>
    Então será exibido a mensagem de erro <mensagem>
Exemplos:
| usuario             | senha            | mensagem |
| "usuario_invalido"  | "secret_sauce"   | "Epic sadface: Username and password do not match any user in this service" |
| "standart_user"     | "senha_invalida" | "Epic sadface: Username and password do not match any user in this service" |
| ""                  | "secret_sauce"   | "Epic sadface: Username is required" |
| "standart_user"     | ""               | "Epic sadface: Password is required" |
| "locked_out_user"   | "secret_sauce"   | "Epic sadface: Sorry, this user has been locked out" |