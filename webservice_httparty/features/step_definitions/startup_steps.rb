Dado("o endereço da API para manter o cadastro de funcionario") do
    #já instanciado pela classe Startup
end
  
Quando("realizar uma requisição para cadastrar um funcionario") do
    $response = @startup.postUsuario
end
  
Então("a API irá retornar os dados do cadastro de funcionario respondendo o código {int}") do |int|
    #expect do status code e message
    expect($response.code).to eq(int)
    puts "Response code: #{$response.code}"
    expect($response.message).to eq("Created")
    puts "Response Message: #{$response.message}"
    
    #imprime os atributos da requisição
    puts "departamento  : #{$response["departamento"]}"
    puts "nome  : #{$response["nome"]}"
    puts "conta : #{$response["conta"]}"
    puts "cidade: #{$response["cidade"]}"
    puts "cargo: #{$response["cargo"]}"
    puts "sexo: #{$response["sexo"]}"
    puts "cpf: #{$response["cpf"]}"
    puts "salario: #{$response["salario"]}"
    puts "tipoContratacao: #{$response["tipoContratacao"]}"
    puts "admissao: #{$response["admissao"]}"
    puts "comissao: #{$response["comissao"]}"


    $id = $response["id"]
    
end

Quando("realizar uma requisição passando o nome de usuario") do
    $get = @startup.getUsuario($nome)
end

Então("a API irá retornar os dados de usuario correspondente respondendo o código {int}") do |int|
    expect($get.code).to eq(int)
    expect($get.message).to eq("OK")
    expect($get["id"]).to eq($response["id"])

    puts "nome  : #{$get["nome"]}"
    
end

Quando("realizar uma requisição para alterar um usuario") do
    $put = @usuario.putUsuario($get["cpf"])
end

Então("a API irá retornar os dados da Startup alterados respondendo o código {int}") do |int|
    expect($put.code).to eq(int)
    expect($put.message).to eq("OK")
    expect($put["cpf"]).to eq($response["cpf"])

    puts "nome  : #{$put["nome"]}"
    puts "cpf: #{$put["cpf"]}"
    puts "status Code: #{$put.code}"
end




