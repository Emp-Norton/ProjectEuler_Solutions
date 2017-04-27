def find_common_product(n) 
  numerator = n
  denominator = n  
    while denominator >= 1
      if (numerator % denominator).eql?(0)
        if denominator.eql?(1) 
          puts numerator 
          break
        else 
        denominator -= 1 
        end 
      else 
        numerator += 1
        denominator = n 
      end   
    end
end 

find_common_product(20)
