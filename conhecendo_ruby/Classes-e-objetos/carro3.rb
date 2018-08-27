# Vimos como criar as propriedades do nosso objeto através das variáveis 
# de instância, mas como podemos acessá-las? Isso vai nos dar um erro:

class Carro
    def initialize(marca, modelo, cor, tanque)
        @marca = marca
        @modelo = modelo
        @cor = cor
        @tanque = tanque
    end
    def to_s
        "Marca: #{@marca} Modelo: #{@modelo} Cor: #{@cor} Tanque: #{@tanque}"
    end
end
fusca = Carro.new(:volkswagen, :fusca, :amarelo, 100)
puts fusca.marca