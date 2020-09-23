require 'page-object'

class PaginaCadastro

    include PageObject

    text_field(:usuario, :name => 'username')
    text_field(:vericarUsuario, :classe => 'container-login100-form-btn m-t-17 text-center')
    text_field(:senha, :name => 'pass')
    text_field(:vericarSenha, :xpath => '/html/body/div/div/div/form/div[3]/span/div')
   
    button(:login, :class => 'txt2 bo1')

    def criar_cadastro (credenciais)
        usuario_sucesso = credenciais.split('/')
        somente_usuario = usuario_sucesso[0].split('@')
        somente_usuario[0] += (Random.rand(0...999).to_s)
        self.somente_usuario = somente_usuario[0] + "@" + somente_usuario[1]
        self.senha = usuario_sucesso[1]
        self.validaSenha = usuario_sucesso[1]
    end

    def abrir ()
	    @BROWSER.get "http://www.inmrobo.tk/accounts/signup/"
	  end

end