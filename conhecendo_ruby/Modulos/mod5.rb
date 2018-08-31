module Paulista
    class Pessoa
        def comida_perfeita
            puts "pizza"
        end
    end
end

module Gaucho
    class Pessoa
        def comida_perfeita
            puts "churrasco"
        end
    end
end

pessoa1 = Paulista::Pessoa.new  
pessoa2 = Gaucho::Pessoa.new

puts pessoa1.comida_perfeita
puts pessoa2.comida_perfeita