def distinct_powers
  terms = [] 
  for digit in 2..100
    for exponent in 2..100
      terms.push( digit ** exponent)
    end 
  end 
  puts terms.uniq.count
end

distinct_powers
