#language:pt

Funcionalidade: Login
    Para que eu possa gerenciar os jogos do meu catálogo NinjaPixel
    Sendo um Administrador de catálogo
    Posso acessar o sistema com meu e-mail e senha

    Contexto:
        Dado que acesso à página principal

    Cenario: Acessar o portal

        Quando eu submeto minhas credenciais "enzofurlan@ninjapixel.com" e "qaninja"
        Então devo ser autenticado

    Esquema do Cenario: Tentar logar

        Quando eu submeto minhas credenciais "<email>" e "<senha>"
        Então devo ver uma mensagem de alerta "<texto>"

        Exemplos:
            | email                      | senha   | texto                        |
            | enzofurlan@ninjapixel.com  | abc123  | Usuário e/ou senha inválidos |
            | enzofurland@ninjapixel.com | qaninja | Usuário e/ou senha inválidos |
            |                            | abc123  | Opps. Informe o seu email!   |
            | enzofurlan@ninjapixel.com  |         | Opps. Informe a sua senha!   |
