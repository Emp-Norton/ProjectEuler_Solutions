def multiples(n)
  sum = 0
  (0..n-1).each { | i | sum += i if ( i % 3 ).eql?(0) || ( i % 5 ).eql?(0) } # why was I using the exclusionary ellipsis (...) in the range rather than a much clearer (0..n-1)? revisit this later.
  return sum 
end 

multiples(1000)

# fun one-liner:  return (0..n-1).select {|a| (a % 3).eql?(0) || (a % 5).eql?(0) }.inject{ | sum, num | sum += num } 
