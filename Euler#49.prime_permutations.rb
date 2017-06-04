def is_prime?(num)
  for div in 2..Math.sqrt(num)
    return false if (num % div).eql?(0)
  end 
  return true 
end 

primes = [] 
puts Time.now 
for primerfinder in 1000..9999
  primes.push(primerfinder) if is_prime?(primerfinder)
end 

points = []

primes.each do | starting_point | 
  2.step(3500, 2) do | between |
    second = starting_point + between
    third = second + between 
    permutations = starting_point.to_s.split("").permutation.to_a.map! { | num | num.join.to_i }
    if primes.include?(second) && primes.include?(third)
      if permutations.include?(second) && permutations.include?(third)
        points.push(starting_point, second, third)
        break
      end 
    end 
  end
end 


p points[3, points.length-1].inject{ | prod, num | prod.to_s << num.to_s } 
puts Time.now 