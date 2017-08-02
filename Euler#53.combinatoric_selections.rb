def factorial(n)
  
  return  n < 2 ? 1 : n * factorial(n-1)
  
end 

def choose(m, n)

  return factorial(m) / (factorial(m-n) * factorial(n)) # multiply by factorial(n) for combinations

end 


hits = [] 
for m in 2..100
  for n in 1..100
    if choose(m,n) >= 1000000 
      result = choose(m,n)
      hits.push(result)
    end 
  end 
end 

p hits.count 
