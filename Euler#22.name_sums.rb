def name_sums
  names = []
  sum = 0 
  File.open('C:\Users\Admin\Desktop\Coding Stuff\Euler\names.txt', "r") do | file | 
    file.each_line do | line |
      names.push(line)
    end 
  end 

  name_value = lambda do | name | 
    name.strip!
    nsum = 0
    name.split("").each { | char | nsum += ((char.downcase.ord - "a".ord ) +1) unless char.eql?("\"") }
    nsum  
  end 

  names.pop  
  names = names[0].split(",").sort!  
  names.each_with_index { | name, position | sum += (name_value.call(name) * (position + 1 )) }
  puts sum 
end 


name_sums