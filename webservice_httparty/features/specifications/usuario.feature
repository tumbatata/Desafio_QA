#language: pt
@startup
Funcionalidade: Manter dados de usuario através da API
Como um usuário do sistema da inmetrics
Eu quero realizar as requisições na API
A fim de manipular as informações do cadastro de usuario

Cenário: Cadastrar um usuario
    Dado o endereço da API para manter o cadastro de usuario
    Quando realizar uma requisição para cadastrar um usuario
    Então a API irá retornar os dados do cadastro de usuario respondendo o código 201

Cenário: Consultar um usuario
    Dado o endereço da API para manter o cadastro de usuario
    Quando realizar uma requisição passando o ID de funcionario
    Então a API irá retornar os dados de funcionario correspondente respondendo o código 200

Cenário: Alterar um usuario
    Dado o endereço da API para manter o cadastro de usuario
    Quando realizar uma requisição para alterar um usuario
    Então a API irá retornar os dados de usuario alterados respondendo o código 200


