# fazer uma cópia de um arquivo:
File.open("novo_teste.txt","w") do |arquivo|
    arquivo << File.read("teste.txt")
end