  singles = {1 => "one",2 => "two",  3 => "three",  4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
  teens = {11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
  tens = {1 => "ten", 2 => "twenty", 3 => "thirty", 4 =>"forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
  

  converted_numbers = [] 
  sum = 0 
  
  for num in 1..19
    if num < 10 
      converted_numbers.push(singles[num])
    elsif num > 10 
      converted_numbers.push(teens[num])
    else 
      converted_numbers.push(tens[(num / 10)])
    end 
  end 

  for tens_place in 2..9 
    converted_numbers.push(tens[tens_place])
    for singles_place in 1..9
      converted_numbers.push(tens[tens_place])
      converted_numbers.push(singles[singles_place])
    end 
  end 

  converted_numbers.each { | word | sum += word.length }
  
  sum *= 10 # 10 sets of counts to 99  
  sum += "onethousand".length

  for hundreds_place in 1..9 
    sum += ((singles[hundreds_place].length + "hundred".length) * 100)
    sum += ("and".length * 99)
  end

  p sum 
