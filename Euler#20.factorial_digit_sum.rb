def factorial(num) 
  return num if num <= 2 
  return num * factorial(num-1)
end 

def factorial_digit_sum(num)
  digits = factorial(num).to_s.split("")
  sum = 0 
  digits.each{ | digit | sum += digit.to_i } 
  puts sum 
end 

factorial_digit_sum(100)