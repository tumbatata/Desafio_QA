#encoding: utf-8

Dado(/^Dado que eu acesso o website de cadastro da inmetrics$/) do
    @profile = PaginaCadastro.new(@BROWSER)
    @profile.abrir()
end
  
E(/^eu crio um perfil (.*?)$/) do |credenciais|
    @profile.criar_cadastro(credenciais)
    fail unless @BROWSER.page_source().include? "create your registry"
end
  
Quando(/^Quando eu preencho os campos:$/) do |table|
    @wedding = CadastroUsuario.new(@BROWSER)
    @wedding.fill_fields(table.hashes.first)
end
  
E(/^E eu me registro$/) do
    @wedding.register_finish()
end
  
Entao(/^o(.*?) devera aparecer$/) do |text|
    fail unless @BROWSER.page_source().include? text
end