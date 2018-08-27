# Nesse caso, criamos atributos de leitura, que nos permitem a leitura 
# da propriedade. Se precisarmos de algum atributo de escrita, para 
# trocarmos a cor do carro, por exemplo, podemosusar:
class Carro
    attr_reader :marca, :modelo, :cor, :tanque
    attr_writer :cor
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