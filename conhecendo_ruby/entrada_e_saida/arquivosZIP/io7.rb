# Vamos criar três arquivos, 1.txt , 2.txt e 3.txt com 
# conteúdo livre dentro de cada um, que vão ser armazenados 
# internamente no arquivo .zip em um subdiretório chamado txts, 
# compactando e logo descompactando:
require "zip"
require "fileutils"

myzip = "teste.zip"
File.delete(myzip) if File.exists?(myzip)

Zip::File.open(myzip,true) do |zipfile|
    Dir.glob("[0-9]*.txt") do |file|
        puts "Zipando #{file}"
        zipfile.add("txts/#{file}", file)
    end
end

Zip::File.open(myzip) do |zipfile|
    zipfile.each do |file|
        dir = File.dirname(file.name)
        puts "Descompactando #{file.name} para #{dir}"
        FileUtils.mkpath(dir) if !File.exists?(dir)
        zipfile.extract(file.name,file.name) do |entry, file|
            puts "Arquivo #{file} existe, apagando ..."
            File.delete(file)
        end
    end
end

# • Na linha 3 foi requisitado o módulo FileUtils , que carrega métodos como o mkpath , na
# linha 19, utilizado para criar o diretório (ou a estrutura de diretórios).

# • Na linha 8 abrimos o arquivo, enviando true como flag indicando para criar o arquivo
# caso não exista. Para arquivos novos, podemos também utilizar new.

# • Na linha 9 utilizamos Dir.glob para nos retornar uma lista de arquivos através de uma
# máscara de arquivos.

# • Na linha 11 utilizamos o método add para inserir o arquivo encontrado dentro de um path
# interno do arquivo compactado, nesse caso dentro de um diretório chamado txts.

# • Na linha 15 abrimos o arquivo criado anteriormente, para leitura.

# • Na linha 16 utilizamos o iterador each para percorrer os arquivos contidos dentro do
# arquivo compactado.

# • Na linha 17 extraímos o nome do diretório com dirname.

# • Na linha 20 extraímos o arquivo, passando um bloco que vai ser executado no caso do
# arquivo já existir.