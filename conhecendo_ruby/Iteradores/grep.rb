# encontrar determinadas Strings em um Array , no exemplo abaixo, 
# todas as que tem comprimento entre 3 e 7 caracteres:

var = %w(eustaquio rangel).grep(/\A\w{3,7}\z/)
puts "comprimento entre 3 e 7 caracteres: #{var}"

#Selecionar todos os elementos que sejam iguais ao informado:
var2 = [1,0,1,1,0].grep(0)
puts "todos os elementos que sejam iguais ao informado: #{var2}"

#Encontrar os objetos de uma determinada classe ou módulo:
var3 = [1, "String", 1.23, :aqui].grep(Numeric)
puts "objetos de uma determinada classe ou módulo: #{var3}"

# Selecionar os valores de uma determinada faixa, no exemplo abaixo, 
# criando um Array com 10 elementos preechidos por números de até 10,
# selecionando somente os únicos que estão entre 5 e 10:
var4 = Array.new(10) { rand(10) }.grep(5..10).uniq
puts "somente os únicos que estão entre 5 e 10: #{var4}"