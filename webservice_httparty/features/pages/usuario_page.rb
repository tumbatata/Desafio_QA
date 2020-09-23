class Startup
    include HTTParty
    require_relative '../hooks/usuario_hook'
    base_uri "https://inm-api-test.herokuapp.com/swagger-ui.html#/"
     
    def initialize(body)
      @options = {:body => body}
      @options2 ={}
    end
  
    def postUsuario
      self.class.post("/usuario", @options)
    end

    def getUsuario (id)
      self.class.get("/usuario/#{id}", @options2)
    end

    def putUsuario (id)
      self.class.put("/usuario/#{id}", @options)
    end
end
