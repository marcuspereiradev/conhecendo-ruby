all = (0..10).all? { |valor| valor > 1 }
all2 = (0..10).all? { |valor| valor > 0 }
puts all
puts all2