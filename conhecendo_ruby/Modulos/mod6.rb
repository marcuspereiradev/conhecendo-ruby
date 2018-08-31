# Podemos implementar algumas funcionalidades interessantes com 
# módulos, por exemplo, criar uma classe Singleton
require "singleton"
class Teste
    include Singleton
end

begin
    Teste.new
rescue => exception
    puts "Não consegui criar usando new: #{exception}"
end
puts Teste.instance.object_id
puts Teste.instance.object_id