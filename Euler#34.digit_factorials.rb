start = Time.now.to_s
@factorial_bucket = {}
@digit_factorial_isomorphs = [] 

def factorial(n)
  if n.eql?(0) || n.eql?(1)
    @factorial_bucket[0] = 1 
    return 1 
  end 
  return 2 if n.eql?(2)
   result = n * factorial(n-1)
  @factorial_bucket[n] = result
  return result 
   
end 

def digit_factorial_sum(num)
  nums = num.to_s.split("").map!{ | n | n.to_i } 
  nums.map! { | e | factorial(e) } 
  if nums.inject { | sum, m | sum += m }.eql?(num)
    p "hit #{num}"
    @digit_factorial_isomorphs.push(num)
  end 
end 


factorial(9) 
for num in 1..2540160 # need to establish upper bound in more reasonable way than 9! * 7. based on results, this can be lowered to ~25% of current value. 
  digit_factorial_sum(num)
end 

p @digit_factorial_isomorphs.inject { | s, n | s += n }


