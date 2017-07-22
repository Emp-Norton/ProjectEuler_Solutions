inserts = (0..9).to_a
tracking_str = 123456789.to_s.split("")

for single_dig in 1..50000 # achieves indices > 1000000

  inserts.each do | elem | 
    tracking_str.push(single_dig.to_s)
    tracking_str.push(elem.to_s)
  end 

end 

pows_ten = [1, 10, 100, 1000, 10000, 100000, 1000000] # target indices 
targ_nums = [] 

tracking_str.join("").split("").each_with_index do | el, idx | # join-split is ugly. better solution? 
  targ_nums.push(el.to_i) if pows_ten.include?(idx+1)
end 

p targ_nums.inject{ | prod, num | prod *= num.to_i } 

