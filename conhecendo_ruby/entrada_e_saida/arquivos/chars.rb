#Para ler o arquivo caracter a caracter, podemos fazer:
File.open("teste.txt") do |arquivo|
    arquivo.each_char do |char|
        print "[#{char}]"
    end
end