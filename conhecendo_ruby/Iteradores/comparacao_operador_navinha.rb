nav = %w(João Maria Antônio).max {|elemento1, elemento2| elemento1.length <=> elemento2.length }
puts nav

nav2 = %w(João Maria Antônio).min {|elemento1, elemento2| elemento1.length <=> elemento2.length }
puts nav2

nav3 = {
    :Joao => 35,
    :maria => 30,
    :antonio => 25
}.max { |elemento1, elemento2| elemento1[1] <=> elemento2[1]}
puts nav3.to_s

nav4 = {
    :Joao => 35,
    :maria => 30,
    :antonio => 25
}.min { |elemento1, elemento2| elemento1[1] <=> elemento2[1]}
puts nav4.to_s