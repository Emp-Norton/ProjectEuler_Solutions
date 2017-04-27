def square_sum_difference(n)
  nums = (1..n).to_a 
  sum_squares = nums.inject { | sum, num | sum += (num * num) } 
  square_sums = nums.inject { | sum, num | sum += num } ** 2 
  difference = square_sums - sum_squares
end 

square_sum_difference(100)