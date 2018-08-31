# Uma coisa bem importante a ser notada é que quanto usamos include 
# os métodos provenientes do módulo são incluídos nas instâncias das 
# classes, e não nas classes em si. Se quisermos definir métodos de 
# classes dentro dos módulos, podemos utilizar um outro hook chamado 
# included ,usando um módulo interno (???):
module TesteMod
    module ClassMethods
        def class_method
            puts "Esse é um método da classe!"
        end
    end

    def self.included(where)
        where.extend(ClassMethods)
    end

    def instance_method
        puts "Esse é um método de instância!"
    end
end

class TesteCls
    include TesteMod
end

t = TesteCls.new
t.instance_method
TesteCls.class_method