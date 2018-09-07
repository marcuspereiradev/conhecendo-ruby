# Ruby tem um objeto de IO chamado DATA , que retorna as
# linhas definidas após __END_-_ e o fim do arquivo. 
# Dessa forma, podemos carregar alguns dados junto 
# com nosso código-fonte.
DATA.each do |linha|
    puts "linha: #{linha}"
end

__END__
Esse é um teste
de dados
embutidos no arquivo
de código-fonte