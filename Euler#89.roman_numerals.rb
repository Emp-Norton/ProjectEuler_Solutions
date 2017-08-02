@data = []
File.open('C:\Users\james\Desktop\Coding Stuff\Euler\data\roman.txt', 'r') do | file | 
  file.each_line do | line | 
    @data.push(line.strip)
  end 
end 


@converted = [] 
@conversion_hash = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
@min_numerals = [] 

def convert_numeral_to_decimal(str)
  nums = str.split("").map!{ | char | @conversion_hash[char]}
  
  for idx in 0..nums.length-2 
    first_num = nums[idx]
    second_num = nums[idx+1]
      if first_num < second_num
        nums[idx] *= -1
        is_minimal = true 
      end  
  end 

  result = nums.inject{ | sum, num | sum += num }
  return result 
  
end 


def convert_to_numeral(num)
  minimisms = {4 => "IV", 9 => "IX", 40 => "XL", 90 => "XC", 400 => "CD", 900 => "CM"} 
  conversion_hash = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}.to_a.reverse.to_h.invert
  min_str = ""
  
  nums = num.to_s.split("").map! { | n | n.to_i } 
  nums.each_with_index do | m, idx | 
    digit = m * (10 ** (nums.length - 1 - idx))
    if minimisms.include?(digit)
      min_str << minimisms[digit]
    else 
      sum = 0 
      for token in 0..conversion_hash.length-1 
        while sum + conversion_hash.keys[token] <= digit 
          min_str << conversion_hash.values[token] 
          sum += conversion_hash.keys[token]
        end 
      end 
    end 
  end 
  return min_str
end 

def init
  @data.each do | numeral | 
    @converted.push(convert_numeral_to_decimal(numeral))
  end 
  
  @converted.each do | decimal | 
    @min_numerals.push(convert_to_numeral(decimal))
  end 
end 


init
p "Conversion done" 
p @data.join("").split("").count - @min_numerals.join("").split("").count 




  
  
  
  
  
  
  
  
  
  
