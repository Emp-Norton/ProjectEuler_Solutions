def is_abundant?(num)
  divs = [1]
  for div in 2..Math.sqrt(num)
       divs.push(div, ( num / div )) if ( num % div ).eql?(0)
   end 
  sum = divs.uniq.inject { | sum, num | sum += num } 
  return sum > num 
end 

def is_abundant_composite?(num)
  for subtractor in 12..(num / 2) # there must be a better way to do this.
    counter_subtractor = num - subtractor
    if is_abundant?(subtractor) && is_abundant?(counter_subtractor)
      return true 
   end 
 end 
  return false  
end 

def non_abundant_sums(max = 28123)
  non_abundant_composites = []
  for abundant_composite in 1..100 
    non_abundant_composites.push(abundant_composite) if is_abundant_composite?(abundant_composite).eql?(false)
  end 
  101.step(max, 2) do | abundant_composite | 
    if is_abundant_composite?(abundant_composite).eql?(false)
      non_abundant_composites.push(abundant_composite)
   end
 end 
 puts non_abundant_composites.inject { | sum, num | sum += num } 
end 

non_abundant_sums(28123)