a = %w(john paul george ringo)
a.combination(2)
a.combination(2).to_a
a.combination(2) { |comb| puts "combinando #{comb[0]} com #{comb[1]}" }