def multiples(n)
  sum = 0
<<<<<<< HEAD
  (0...n).each { | i | sum += i if ( i % 3 ).eql?(0) || ( i % 5 ).eql?(0) }
=======
  (0...n).each { | i | sum += i if (i % 3).eql?(0) || (i % 5).eql?(0) }
>>>>>>> a06db8c0f0e6f8ff76d66a075ee399c0a047737e
  return sum 
end 

multiples(1000)
