# As Fibers também podem ajudar a separar contextos e funcionalidades em um programa. Se
# precisássemos detectar a frequência de palavras em uma String ou arquivo, poderíamos utilizar
# uma Fiber para separar as palavras, retornando para um contador:
str =<<FIM
texto para mostrar como podemos separar palavras do texto
para estatística de quantas vezes as palavras se repetem no
texto
FIM

scanner = Fiber.new do
    str.scan(/\w\p{Latin}+/) do |word|
        Fiber.yield word.downcase
    end
    puts "acabou!"
end

words = Hash.new(0)

while word = scanner.resume
    words[word] += 1
end

words.each do |word,count|
    puts "#{word}:#{count}"
end