# Essa funcionalidade está implementada automaticamente para os objetos 
# que são instâncias da nossa classe, mas fica uma dica: existem casos 
# em que precisamos ter propriedades diferentes ao efetuar a cópia, como 
# por exemplo, a variável de instância @criado , onde se utilizarmos dup , 
# vai ser duplicada e não vai refletir a data e hora que esse novo objeto 
# foi criado através da duplicação do primeiro:
class Carro
    attr_reader :marca, :modelo, :tanque, :criado
    attr_accessor :cor
    
    def initialize(marca, modelo, cor, tanque)
        @marca = marca
        @modelo = modelo
        @cor = cor
        @tanque = tanque
        @criado = Time.now
    end

    def to_s
        "Marca:#{@marca} Modelo:#{@modelo} Cor:#{@cor} Tanque:#{@tanque}"
    end
end

carro = Carro.new(:chevrolet, :corsa, :preto, 50)
puts carro.criado
sleep 1
outro_carro = carro.dup
puts outro_carro.criado