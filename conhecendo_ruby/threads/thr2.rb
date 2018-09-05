# O método join é especialmente útil para fazer a thread se completar antes 
# que o interpretador termine. Podemos inserir um timeout :
thread = Thread.new do
    puts "Thread #{self.object_id} iniciada!"
    5.times do |valor|
        puts valor
        sleep 1
    end
end

    puts "já criei a thread"
    thread.join(3)