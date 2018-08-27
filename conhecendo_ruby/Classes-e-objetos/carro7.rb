# Também podemos criar atributos virtuais, que nada mais são do que métodos que agem
# como se fossem atributos do objeto. Vamos supor que precisamos de uma medida 
# como galões, queequivalem a 3,785 litros, para o tanque do carro. Poderíamos fazer:
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
fusca.cor = :branco 
puts fusca.galoes