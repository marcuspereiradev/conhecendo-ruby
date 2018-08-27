
# Como recebemos referências do objeto nos métodos, quaisquer 
# alterações que fizermos dentro do método refletirão fora
def altera(valor)
    valor.upcase!
end
string = "Meu nome é Marcus!"
altera(string)
puts string