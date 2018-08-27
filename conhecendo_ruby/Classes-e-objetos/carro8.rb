# Uma diferença de Ruby com várias outras linguagens é que as suas classes, 
# mesmo as definidas por padrão e base na linguagem, são abertas, ou seja, 
# podemos alterá-las depois que as declararmos.
class Carro
    attr_reader :marca, :modelo, :tanque
    attr_accessor :cor
    def initialize(marca, modelo, cor, tanque)
        @marca = marca
        @modelo = modelo
        @cor = cor
        @tanque = tanque
    end
    def to_s
        "Marca: #{@marca} Modelo: #{@modelo} Cor: #{@cor} Tanque: #{@tanque}"
    end
    def galoes
        @tanque / 3.785 #litros
    end
    
end
fusca = Carro.new(:volkswagen, :fusca, :amarelo, 100)

class Carro
    def novo_metodo
        puts "Novo Metodo!"
    end
end
puts fusca.novo_metodo

class Carro
    remove_metodo :novo_metodo
end
puts fusca.novo_metodo