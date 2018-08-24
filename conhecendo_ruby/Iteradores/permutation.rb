a = %w(john paul george ringo)
a.permutation(2)
a.permutation(2).to_a
a.permutation(2) { |comb| puts "combinando #{comb[0]} com #{comb[1]}" }