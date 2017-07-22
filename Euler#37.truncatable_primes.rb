require "mathn"
@prime_bucket = [] 
@truncs = [] 
start = Time.now 
for nums in 2..1000000
  @prime_bucket.push(nums) if nums.prime? 
end 

def truncatable?(prime)
  forward_nums = prime.to_s.split("") # these declarations seem pretty redundant, maybe do it in parallel?
  backward_nums = prime.to_s.split("")
  
  while forward_nums.length > 0 
    if @prime_bucket.include?(forward_nums.join("").to_i) # same goes for these double while-loops. Maybe proc the loop and call it twice? Likely won't help performance but definitely easier to read.
      forward_nums.shift
    else 
      return false 
    end 
  end 
 
  while backward_nums.length > 0 
    if @prime_bucket.include?(backward_nums.join("").to_i)
      backward_nums.pop 
    else 
      return false 
    end 
  end 
   
  return true 
end 


@prime_bucket.each do | el | 
  @truncs.push(el) if truncatable?(el) && el.to_s.length > 1 
end 


p "Result: #{@truncs.inject { | s, n | s += n }}"
p "Start: #{start}"
p "Finish: #{Time.now}" # clocks at 41 seconds. acceptable but could be better (especially with 'mathn')

