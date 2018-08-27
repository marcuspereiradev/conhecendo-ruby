# Podemos até encurtar isso mais ainda criando direto um 
# atributo de escrita e leitura com attr_accessor :
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
end
fusca = Carro.new(:volkswagen, :fusca, :amarelo, 100)
fusca.cor = :branco 
puts fusca