require 'page-object'

class CadastroUsuario

    include PageObject

    text_field(:usuario, :name => 'username')
    text_field(:senha, :name => 'pass')
    text_field(:confirma_senha, :name => 'confirmpass')

    button(:cadastro, :class => 'login100-form-btn')

    def preencher_formulario(table)
        self.usuario  = table['usuario '] unless (table['usuario '] == "" || table['usuario '] == nil)
        self.senha = table['senha'] unless (table['senha'] == "" || table['senha'] == nil)
        self.confirma_senha = table['confirma_senha'] unless (table['confirma_senha'] == "" || table['confirma_senha'] == nil)
    end

end