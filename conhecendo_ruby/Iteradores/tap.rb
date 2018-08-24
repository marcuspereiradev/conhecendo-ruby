(0..10).select { |num| num.even? }.tap{ |col| p col }.map { |num| num * 2 }
