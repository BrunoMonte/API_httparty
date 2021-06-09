require "httparty"

    module Helpers
        def remover_usuario (email)       #metodo
           HTTParty.get("http://parodify.qaninja.com.br/helpers?email=#{email}") #metodo no postman,tipo get
        end
    
    end