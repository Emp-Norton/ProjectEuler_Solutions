def pandigital?(num)
  num.to_s.split("").map! { | n | n.to_i }.sort == (1..9).to_a.sort
end 

max = [] 

9999.downto(1) do | base | 
  str = "" 
  for multi in 1..9
      str << (base * multi).to_s 
      if str.length.eql?(9) && pandigital?(str.to_i)
        max.push(str.to_i)
      end 
  end 
end 

p max.max 