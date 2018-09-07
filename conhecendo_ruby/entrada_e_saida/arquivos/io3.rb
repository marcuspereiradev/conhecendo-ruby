# Podemos abrir o arquivo especificando o seu modo e armazenando 
# o seu handle. O modo para leitura é r e para escrita é w . 
# Podemos usar o iterador do handle para ler linha a linha:
f = File.open("teste.txt")
f.each do |linha|
    puts linha
end
f.close