nums = ( 2 ** 1000 ).to_s.split("").map! { | num | num.to_i }.inject { | sum, num | sum += num }
puts nums