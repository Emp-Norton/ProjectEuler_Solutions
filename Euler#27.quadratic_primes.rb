 
require 'mathn'
 
best_series = 0
best_product = 0
 
for a in -1000..1000
  for b in -1000..1000
    n = 0
    while (((n * n) + (a * n) + b).prime?)
      n+=1
    end

    if n > best_series  
      best_series = n
      best_product = a * b 
    end 
  end
end
 
puts best_series
puts best_product
  