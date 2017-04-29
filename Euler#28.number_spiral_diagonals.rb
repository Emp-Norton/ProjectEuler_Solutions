def corner_calc(max_cubes)
  corners = [1]
  for cube_count in (3..max_cubes).step(2)
    layer = (cube_count - 1) / 2
    corner = (4 * (layer ** 2)) - (2 * layer) + 1 
    corners.push(corner) 
    3.times do 
      corner+=(cube_count-1)
      corners.push(corner)
    end
  end 
    puts corners.inject { | s, n| s += n }
end 

corner_calc(1001)