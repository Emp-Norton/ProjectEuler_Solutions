def is_prime?(n) 
  for i in 2..Math.sqrt(n)
    return false if (n % i).eql?(0)
  end 
  return true 
end 

def prime_count(n)
  num = 2 
  count = 1
  until count > n 
    if is_prime?(num)
      puts num if count.eql?(n)
      count+=1 
      num+=1 
    else 
      num+=1 
    end 
  end 
end 

prime_count(10001)