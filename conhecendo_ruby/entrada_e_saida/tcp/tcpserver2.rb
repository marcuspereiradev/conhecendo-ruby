# Podemos trafegar, além de Strings , outros tipos pela 
# conexão TCP , fazendo uso dos métodos pack ,para “empacotar” 
# e unpack , para “desempacotar” os dados que queremos transmitir.
require "socket"

TCPServer.open("localhost", 8081) do |server|
    puts "servidor iniciado"

    loop do
        puts "Aguardando conexão..."
        con = server.accept
        rst = con.recv(1024).unpack("LA10A*")
        fix = rst[0]
        str = rst[1]

        hash = Marshal.load(rst[2])
        puts "#{fix.class}\t: #{fix}"
        puts "#{str.class}\t: #{str}"
        puts "#{hash.class}\t: #{hash}"
        con.close
    end
end