def valid_num?(num, power)
  sum = num.to_s.split("").map!{ | elem | elem.to_i ** power }.inject{ | sum, n | sum += n }
  return sum.eql?(num)
end

def valid_finder(power)
  valid_nums = [] 
  for num in 2..1000000 
    valid_nums.push(num) if valid_num?(num, power)
   end 
   valid_nums.inject { | sum, num | sum += num }
end 

valid_finder(5)