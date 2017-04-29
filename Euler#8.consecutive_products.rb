def consecutive_product(num_block) 
  best_prod = nil 
  nums = num_block.to_s.split("")
  for i in 0..nums.length-13
    targ_nums = nums[i, 13] 
    result = 1 
    targ_nums.each { | i | result = result * i.to_i } 
      if best_prod.eql?( nil ) || ( result > best_prod )
      best_prod = result
      end 
  end 
  puts best_prod
end 