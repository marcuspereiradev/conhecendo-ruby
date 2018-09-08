# E para a leitura de arquivos XML , podemos utilizar a gem nokogiri :
require "nokogiri"
doc = Nokogiri::XML(File.open("alunos.xml"))
doc.search("aluno").each do |node|
    puts node.search("id").text + ":" + node.search("nome").text
end