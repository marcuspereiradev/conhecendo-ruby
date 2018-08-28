#Podemos também inserir um método somente em uma determinada instância:
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
corsa = Carro.new(:chevrolet,:corsa,:preto,50)

class << corsa
    def novo_metodo
        puts "Novo Metodo!"
    end
end
fusca.novo_metodo
corsa.novo_metodo