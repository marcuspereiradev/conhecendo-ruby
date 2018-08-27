class Carro
    def initialize(marca, modelo, cor, tanque)
        @marca = marca
        @modelo = modelo
        @cor = cor
        @tanque = tanque
    end
end
fusca = Carro.new(:volkswagen, :fusca, :amarelo, 100)
p fusca
puts fusca