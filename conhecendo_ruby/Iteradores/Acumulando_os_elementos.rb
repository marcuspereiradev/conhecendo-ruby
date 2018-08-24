#a soma de todos os valores da nossa Range
var = (0..10).inject {|soma, valor| soma + valor}
puts "var = #{var}"

#Podemos passar também um valor inicial:
var2 = (0..10).inject(100) {|soma, valor| soma + valor}
puts "var2 = #{var2}"

#E também podemos passar o método que desejamos 
#utilizar para combinação como um símbolo:
var3 = (0..10).inject(:+)
puts "var3 = #{var3}"

var4 = (0..10).inject(100, :+)
puts "var4 = #{var4}"

#reduce
var5 = (0..10).reduce(:+)
puts "var5 = #{var5}"

var6 = (0..10).reduce(100, :+)
puts "var6 = #{var6}"