
def check_multiples(num)
  nums = num.to_s.split("").sort 
  for m in 2..6 
    return false if (num * m).to_s.split("").sort != nums 
  end 
  
  return true 
end 


for num in 99999..170000
  p num if check_multiples(num)
end 