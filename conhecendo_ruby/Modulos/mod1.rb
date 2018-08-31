# Ruby tem herança única, como vimos quando criamos nossas próprias 
# classes, mas conta com o conceito de módulos (também chamados nesse 
# caso de mixins) para a incorporação de funcionalidades adicionais. 
# Para utilizar um módulo, utilizamos include :
class Primata
    def come
        puts "Nham!"
    end
    
    def dorme
        puts "zzzzzz..."
    end
end

class Humano < Primata
    def conecta_na_web
        puts "Login... senha..."
    end
end

module Ave
    def voa
        puts "Para o alto e avante!"
    end
end

class Mutante < Humano
    include Ave
end

mutante = Mutante.new
mutante.come
mutante.dorme
mutante.conecta_na_web
mutante.voa