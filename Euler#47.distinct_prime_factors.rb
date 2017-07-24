
require 'mathn'

def distinct_prime_factor_counter(num, target = 4)
  factors = []
  
  for div in 2..Math.sqrt(num)
     factors.push(div, num / div) if (num % div).eql?(0) 
  end 
  
  return false if factors.length < 1 
  return factors.select { | n | n.prime? }.uniq.length.eql?(target)
  
end 

def find_sequence_of_length(target_num_prime_factors)
  tally = 0

  for num in 2..1000000
    return num - target_num_prime_factors if tally.eql?(target_num_prime_factors) 
    distinct_prime_factor_counter(num, target_num_prime_factors) ? tally += 1 : tally = 0 
  end 
  
end

find_sequence_of_length(4) # generalized to accept any length of consecutive prime factors. Defaults to 4, per problem instructions.