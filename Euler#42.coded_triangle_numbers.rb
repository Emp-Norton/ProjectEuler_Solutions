@words = [] 
File.open('C:\users\james\desktop\coding stuff\euler\data\words.txt', 'r') do | file | 
	file.each_line do | line |
		line.split(",").each do | word | 
			@words.push(word.strip)
		end 
	end 
end 

max_length = @words.map{| word | word.length }.max * 26 
@trinums = []
@triangle_word_count = 0 

def gen_trinums(max_length)
  n = 1 
  while ((n * (n + 1)) / 2) <= max_length 
    result = (n * (n + 1)) / 2
    @trinums.push(result)
    n += 1 
  end 
end 

gen_trinums(max_length) 
@words.each do | word |
  nums = word.downcase.split("")
  nums.pop  # why didn't the escape characters get stripped in line 5?
  nums.shift 
  sum = nums.map { | char | (char.ord - "a".ord) + 1 }.inject { | s, n | s += n }
  if @trinums.include?(sum)
  	@triangle_word_count += 1 
  end 
end 


p @triangle_word_count
