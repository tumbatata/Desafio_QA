# language: pt

Funcionalidade: Criar cadastro de funcionario
  Como sou a nova QA da inmetrics
  Eu preciso criar um registro de funcionario no website da inmetrics
  Para que eu seja uma funcionaria feliz

Esquema do Cenário: Criar cadastro de funcionario
    Dado que eu acesso o website de cadastro da inmetrics
    E eu crio um perfil com <access_usuario>
    Quando eu preencho os campos:
    | usuario   | senha   | confirmar_senha   | 
    | <usuario> | <senha> | <onfirmar_senha>  | 
    E eu me registro
    Entao o <texto> devera aparecer

  Exemplos:
    | access_usuario             | senha            | confirmar_senha | texto            |                                                                                                                                        |
    | thais@gmail.com/ac4success | ac4success       | ac4success      |                  |
    | thais/ac4success           | ac4success       |                 |Campo obrigatório | 
    |                            |                  | ac4success      |Campo obrigatório |
    | thais@gmail.com/           |                  |                 |Campo obrigatório |



