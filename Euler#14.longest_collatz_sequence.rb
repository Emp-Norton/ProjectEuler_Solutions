@most_iterations = nil 
@best_num = nil 

def seq_length(startnum) 
  num = startnum
  iterations = 0 
  until num.eql?(1) 
    if num.odd? 
      num = (num * 3) + 1
      iterations += 1 
    else 
      num /= 2 
      iterations += 1  
    end 
  end 
  if @most_iterations.eql?(nil) || iterations > @most_iterations 
    @most_iterations = iterations 
    @best_num = startnum
  end 
end 

for num in 1000000.downto(2) 
  seq_length(num)
end 

puts @best_num