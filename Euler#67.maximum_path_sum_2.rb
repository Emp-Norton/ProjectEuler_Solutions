
def loadnums(array)
  File.open('C:\Users\Admin\Desktop\Coding Stuff\Euler\data\trinums.txt', "r") do | file | 
    file.each_line do | line |
      array.push(line.strip)
    end 
  end 
  array.map! { | row | row.split(" ").map!{ | num |  num.to_i } }
end 

triangle = [] 
loadnums(triangle)


(triangle.length - 1).downto(0) do | row | 
  0.upto(row - 1) { | num | triangle [row - 1][num] += [triangle [row][num], triangle [row][num + 1]].max }  
end 
 
puts triangle [0][0]
