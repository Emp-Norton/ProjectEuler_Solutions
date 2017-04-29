def is_prime?(num)
  for i in 2..Math.sqrt(num)
    return false if ( num % i ).eql?(0)
  end 
  return true 
end 

def sumprimes(max)
  sum = 2 
  (3..max).step(2) { | num |  sum += num if is_prime?(num) }
  puts sum 
end 

sumprimes(2000000)
