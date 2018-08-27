def vezes(x, y)
    x * y
end
puts vezes(10, 2)

def cinco_multiplos(numero)
    (1..5).map do |item|
        item * numero
    end
end
v1, v2, v3, v4, v5 = cinco_multiplos(5)
puts "#{v1}, #{v2}, #{v3}, #{v4}, #{v5}"