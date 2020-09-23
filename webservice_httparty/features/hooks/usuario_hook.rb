Before '@startup' do

    @nome = Faker::Company.name
    #Faker::Config.random = Random.new(42)
    @cidade = Faker::Address.city

    @body = {
        "nome": @nome,
        "cargo": @cargo,


    }

    @startup = Startup.new(@body)
    
end