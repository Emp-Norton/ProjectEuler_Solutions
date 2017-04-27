def is_palindrome?(n)
  string = n.to_s 
  for i in 0..string.length-1 
    return false if string[i] != string[-(i+1)]
  end 
  return true 
end 

def largest_palindrome(n)
  palindromes = []
  999.downto(1) do | num1 | 
    999.downto(1) do | num2 |
      palindromes.push(num1 * num2) if is_palindrome?(num1 * num2)
    end 
  end 
  puts palindromes.max
end

largest_palindrome(999)
