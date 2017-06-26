pandigital_tails = [] 
pandicheck = 123456789
start_time = Time.now.to_s.split(" ")[1]


for a in 1..99
  for b in 99..9999 # this can be optimized for sure. need to think about lower / upper bounds. 
  string = a.to_s + b.to_s + (a * b).to_s # might this be faster if I don't declare string, rather pipe 'a.to_a...' into the split/map? if so, why?
  sorted = string.split("").map { | num | num.to_i }.sort.join("") 
   pandigital_tails.push(a * b) if sorted.eql?(pandicheck.to_s)
  end 
end 


p "Init @: " + start_time
p "done @: " + Time.now.to_s.split(" ")[1]
p pandigital_tails.uniq.inject { | s, n | s += n }
 