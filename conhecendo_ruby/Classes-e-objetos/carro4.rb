# Essas variáveis são privadas do objeto, e não podem ser lidas sem 
# um método de acesso. Podemos resolver isso usando attr_reader :
class Carro
    attr_reader :marca, :modelo, :cor, :tanque
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