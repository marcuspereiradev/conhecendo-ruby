# Aqui tem um lance meio inception: um módulo pode estender a si mesmo! Imaginem que
# precisamos de um módulo, que não precisa de uma instância de um objeto, que tem alguns
# métodos que podem ser chamamos como métodos estáticos. Poderíamos ter algum como:
module Inception
    def self.hello
        puts 'hello'
    end

    def self.world
        puts 'world'
    end
end
Inception.hello
Inception.world