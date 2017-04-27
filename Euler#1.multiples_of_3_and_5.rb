def multiples(n)
  sum = 0
  (0...n).each { | i | sum += i if (i%3).eql?(0) || (i%5).eql?(0) }
  return sum 
end 

multiples(1000)