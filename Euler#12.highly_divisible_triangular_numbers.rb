@best_div_count = nil 
def tri_num(n)
  return 1 if n.eql?(1)
  return 3 if n.eql?(3)
  nth = (1..n).inject { | sum, num | sum += num } 
  return nth
end 

def div_counter(num)
  @div_count = 0 
  for divisor in 1..Math.sqrt(num)
    @div_count += 1 if ( num % divisor ).eql?(0)
    if @best_div_count.eql?(nil) || @div_count > @best_div_count 
      @best_div_count = @div_count 
      end 
  end
  return @div_count
end 

def step(max)
  @div_count = 0 
  num = 1 
    until @div_count >= max 
    @div_count = (div_counter(tri_num(num)) * 2)
    num += 1 
  end 
puts "Nth: #{num}, Value: #{tri_num(num-1)}"
end 

step(500)