def special_pythag_triples 
  for a in 1..500 
    for b in 1..500 
    sum = ( a ** 2 ) + ( b ** 2 )
      for c in 1..500 
        if (a + b + c).eql?(1000) && ( a ** 2 + b ** 2 ).eql?( c ** 2 )
         puts a * b * c 
        end 
      end 
    end 
  end 
end

special_pythag_triples