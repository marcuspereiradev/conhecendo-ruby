# Às vezes temos que testar determinados objetos e métodos verificando antes de eles existem.
# Podemos ver isso no código abaixo, onde os objetos e métodos são verificados usando primeiro
# um if verificando se não existe alguma referência nula, depois, comentado, o método try do
# ActiveSupport do Rails e por último o “navegador de operação segura” &. , onde é tentado
# acessar objeto&.propriedade , retornando o valor ou nulo se falhar.
class Volante
    attr_reader :cor
    def initialize(cor)
        @cor = cor
    end
end

class Carro
    attr_reader :volante
    def initialize(volante)
        @volante = volante
    end
end

volante = Volante.new(:preto)
carro = Carro.new(volante)
puts carro.volante.cor if carro && carro.volante && carro.volante.cor
#puts carro.try(:volante).try(:cor)
puts carro&.volante&.cor