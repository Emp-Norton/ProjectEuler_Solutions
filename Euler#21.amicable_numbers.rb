def div_sum(num)
  divs = []
  for divisor in 1..( num / 2 )
    divs.push(divisor) if ( num % divisor ).eql?(0)
  end 
  return divs.inject { | sum, num | sum += num }
end 

def sum_amicables(max = 10000)
  amics = []
  for num in 2..max 
    num2 = div_sum(num) 
    amics.push(num) if num.eql?(div_sum(num2)) unless num2.eql?(num)
  end 
  puts amics.inject{ | sum, num | sum += num }
end 

sum_amicables(10000)