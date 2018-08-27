#Podemos contar quantos parâmetros um método recebe usando arity:
def vezes(x, y)
    x * y
end
puts vezes(3, 5)
puts "o metodo recebe #{method(:vezes).arity} parametros\n\n\n"

#Métodos também podem receber parâmetros default
def oi(nome = "Marcus")
    puts "Olá, #{nome}!\n\n\n"
end
oi

# E também valores variáveis, bastando declarar o nosso 
# método como recebendo um parâmetro com o operador 
# splat (asterisco, * ) antes do nome do parâmetro:
def varios(*valores)
    valores.each do |item|
        puts "Valor = #{item}"
        puts "-"*25
    end
end
varios(1)
varios(1,2)
varios(1,2,3)
puts "\n\n\n"

# Podemos fazer uso dos argumentos nomeados (keyword arguments), 
# indicando que o método vai receber os seus valores identificados:
def mostra(a:, b:)
    puts "Valor de a é #{a}, valor de b é #{b}"
end
mostra(a: 1, b: 2)
puts "\n\n\n"

#Com valores default
def mostra(a: 3, b: 10)
    puts "Valor de a é #{a}, valor de b é #{b}"
end
mostra
puts "\n\n\n"

#Misturar com argumentos tradicionais
def mostra(a, b: 5)
    puts "Valor de a é #{a}, valor de b é #{b}"
end
mostra(1, b: 5)
puts "\n\n\n"