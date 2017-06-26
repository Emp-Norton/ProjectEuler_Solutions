@primes = []
matches = []

def prime?(num) # implement seive or require 'mathn' and rewrite, either would be faster. This works (completes in < 1 min) but could be improved. 
  for div in 2..Math.sqrt(num)
    return false if (num % div).eql?(0)
  end 
  return true 
end 

def loadPrimesUpto(max = 1000000)
  for primeFinder in 2..max 
    @primes.push(primeFinder) if prime?(primeFinder)
  end 
end 

def circulize(num)
  arr = num.to_s.split("")
  circular_forms = [] 
  arr.length.times do 
      arr = arr.push(arr.shift())
      circular_forms.push(arr.join())
  end
  circular_forms.map! { | num | num.to_i }
end 
 

def circleCheck(array)
  array.each { | num |  return false if @primes.include?(num).eql?(false) }
  return true 
end 


puts Time.now 
loadPrimesUpto(1000000)
puts "Primes generated"

 
for idx in 0..@primes.length-1
  num = @primes[idx] 
  matches.push(num) if (circleCheck(circulize(num))).eql?(true)
end 

puts matches.count 
puts Time.now 
