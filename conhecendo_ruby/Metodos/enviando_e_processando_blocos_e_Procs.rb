# podemos passar um bloco para um método, e para 
# o executarmos dentro do método, usamos yield :
def executa_bloco(valor)
    yield(valor)
end

executa_bloco(2) do |valor|
    puts valor * valor
end

executa_bloco(10) do |valor|
    puts valor * valor
end
puts "\n\n\n"
# Podemos usar block_given? para detectar se 
# um bloco foi passado para o método:
def executa_bloco2(valor)
    yield(valor) if block_given?
end

executa_bloco2(2) do |valor|
    puts valor * valor
end
puts "\n\n\n"

# converter um bloco em uma Proc especificando o 
# nome do último parâmetro com & no começo:
def executa_bloco3(valor, &proc)
    puts proc.call(valor)
end
executa_bloco3(15) do |valor|
    valor * valor
end
puts "\n\n\n"