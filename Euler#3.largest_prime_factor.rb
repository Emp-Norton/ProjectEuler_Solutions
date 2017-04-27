def is_prime?(n) 
  for i in 2..Math.sqrt(n)
    if (n % i).eql?(0)
      return false 
    end 
  end 
  return true 
end 

def greatest_prime_factor(n) 
  for i in 2..n
    factor = n/i 
    if (n % i).eql?(0)
      if is_prime?(factor) 
        puts factor
        break 
      end 
    end 
end 
end 

greatest_prime_factor(600851475143)
