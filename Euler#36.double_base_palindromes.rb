def isPalindrome?(num)
  for idx in 0..num.to_s.length-1 
    return false if num.to_s[idx] != num.to_s[-idx-1]
  end 
  return true 
end 

doublePalindromes = [] 

for num in 1..1000000 
  doublePalindromes.push(num) if isPalindrome?(num.to_s(2)) && isPalindrome?(num)
end 

doublePalindromes.inject{ | sum, num | sum += num }