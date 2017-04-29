def lattice_paths(lattice_width)
  n = lattice_width 
  factorial = lambda do | num | 
    return num if num <= 2 
    return num * factorial.call(num-1)
  end 
  
  paths = (factorial.call( 2 * n )) / (factorial.call(n) ** 2 )
  
end 

lattice_paths(20)