puts %w(joão maria antonio).sort.to_s

puts %w(antonio maria joao).sort_by { |nome| nome.length }.to_s