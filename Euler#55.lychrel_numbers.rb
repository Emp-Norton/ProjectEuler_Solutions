@lychrels = [] 

def is_palindrome(num)
  for n in 1..num.to_s.length - 1 
    return false if num.to_s[n] != num.to_s[- n - 1]
  end 
  return true 
end 

def process(num)
  count = 0 
  original = num 
  while count < 50
    num += num.to_s.reverse.to_i 
    return if is_palindrome(num)
    count += 1 
  end 
  @lychrels.push(original)
end 



for m in 1..10000
  process(m)
end 

p @lychrels.uniq.count 