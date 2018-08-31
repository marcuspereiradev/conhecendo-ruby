# se houverem métodos em comum entre os módulos inseridos, 
# o método do último módulo incluído é que vai valer.
module Automovel
    def ligar
        puts "ligando automóvel"
    end
end

module Radio
    def ligar
        puts "ligando rádio"
    end
end

class Carro
    include Radio
    include Automovel
end

c = Carro.new
c.ligar