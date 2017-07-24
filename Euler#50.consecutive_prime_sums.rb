require 'mathn' 
start = Time.now.to_s 
@prime_bucket = [] 

def find_consec_prime_sums 

  for num in 2..50000
    @prime_bucket.push(num) if num.prime?
  end 

  max_span = 0 
 @max_nums = []

  for span in 2..@prime_bucket.length 
    if @prime_bucket[0, span].inject { | s, n | s += n } >= 1000000
      p "Reached logical maximum"
      return  
    end

    for real_chunk in 0..(@prime_bucket.length - span - 1)
      sum  =  @prime_bucket[real_chunk, span].inject { | s, n | s += n }
      if sum.prime? 
        if sum <= 1000000 
          if span > max_span
            max_span = span 
            @max_nums.push(sum) 
            #p span, sum 
             
          end
        end 
      end 
    end 
  end 


end 


find_consec_prime_sums 
p "Start: " + start 
p "Finish: " + Time.now.to_s 
p "Result: #{@max_nums.last}"


