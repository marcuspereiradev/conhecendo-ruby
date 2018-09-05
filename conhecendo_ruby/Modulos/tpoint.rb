TracePoint.new(:class,:end,:call) do |tp|
    puts "Disparado por #{tp.self} no arquivo #{tp.path} na linha #{tp.lineno}"
end.enable
 
module Paulista
    class Pessoa
    end
end
p = Paulista::Pessoa.new
# Para ativarmos a TracePoint , criamos uma nova instância da classe, com 
# os eventos que queremos monitorar, e logo após chamamos o método enable