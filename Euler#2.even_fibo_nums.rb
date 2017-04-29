
def fibo_sum(max = 4000000)
  previous = 1 
  current = 1 
  new_fibo = previous + current # recursion too slow with large values for n.
  sum = 2 
  while new_fibo < max 
    previous = current
    current = new_fibo 
    new_fibo = previous + current
    sum += new_fibo if new_fibo.even?
  end 
  puts sum
end

fibo_sum()