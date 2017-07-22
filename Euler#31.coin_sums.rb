
def generate_coin_sums(target = 200, denominations = [200, 100, 50, 20, 10, 5, 2, 1])
  starting_time = Time.now.to_s.split(" ")[1]
  
  successful_counts = []
  coin_counter = Array.new(denominations.length){0}
  sum = 0 
  hits = 0 

  
  for double_pounds in 0..1 
    coin_counter[0] = double_pounds
    
    for pounds in 0..2 
      coin_counter[1] = pounds
      
      for double_quarters in 0..4
        coin_counter[2] = double_quarters
        
        for almost_quarters in 0..10
          coin_counter[3] = almost_quarters
    
          for dimes in 0..20
            coin_counter[4] = dimes 
    
            for nickels in 0..40
              coin_counter[5] = nickels
        
              for double_pennies in 0..100 
                coin_counter[6] = double_pennies
                
                for pennies in 0..200
                  coin_counter[7] = pennies
                    sum = (coin_counter[0] * denominations[0]) + (coin_counter[1] * denominations[1]) + (coin_counter[2] * denominations[2]) + (coin_counter[3] * denominations[3]) + (coin_counter[4] * denominations[4]) + (coin_counter[5] * denominations[5]) + (coin_counter[6] * denominations[6]) + (coin_counter[7] * denominations[7])
                    if sum.eql?(target) 
                      hits += 1 
                      successful_counts.push(coin_counter.join("").to_s)
                     # p coin_counter.join(",").to_s
                    end 
                end 
              end 
            end 
          end 
        end 
      end 
    end 
  end 
  puts "Started at: " + starting_time
  puts "Finishing at: " + Time.now.to_s.split(" ")[1] 
  puts hits 
  puts successful_counts.uniq.length # Unexpected behavior here: I thought this would be the correct answer, but 'hits' is. Does coin order coint? Reasonably, it shouldn't, but the question makes it seem like it does. 
end 


generate_coin_sums()