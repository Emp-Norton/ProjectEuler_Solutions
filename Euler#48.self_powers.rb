def self_power(max)
  sum = 0 
  for num in 1..max
    sum += ( num ** num )
  end 
  puts sum.to_s.slice(-10, 10)
end 

self_power(1000)