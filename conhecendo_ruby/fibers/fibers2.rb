fib = Fiber.new do
    x, y = 0, 1
    loop do
        Fiber.yield y
        x, y = y, x + y
    end
end
10.times { puts fib.resume }

# 1. A Fiber é criada com new .
# 2. Dentro de um iterador que vai rodar 10 vezes, é chamado o método resume .
# 3. É executado o código do início do “corpo” da Fiber até yield .
# 4. Nesse ponto, o controle é transferido com o valor de y para onde foi chamado o resume , e
# impresso na tela.
# 5. A partir do próximo resume , o código da Fiber é executado do ponto onde parou para
# baixo, ou seja, da próxima linha após o yield (linha 5, mostrando outra característica das
# corrotinas, que é ter mais de um ponto de entrada) processando os valores das variáveis e
# retornando para o começo do loop, retornando o controle novamente com yield .
# 6. Pudemos comprovar que x e y tiveram seus valores preservados entre as trocas de controle.