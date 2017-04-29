def is_prime?(n)
  for i in 2..(n / 2) 
    return false if (n % i).eql?(0)
  end 
  return true 
end 

  primes = [] 
  for i in 2..1000 
    primes.push(i) if is_prime?(i) 
  end 

def cycle_length(n)
  return 0 if ( n % 2 ).eql?(0) ||  ( n % 5 ).eql?(0)
  exponent = 1
  until ((( 10 ** exponent ) - 1) % n).eql?(0) 
    exponent += 1
  end
  return exponent
end
 
num = 0
best_length = 0
 
primes.each do |x| 
  cycle = cycle_length(x)
  if cycle > best_length    
    best_length = cycle
    num = x
  end
end 

puts num
 