def fibo(max_length)
   base = 1 
   prev = 2 
   fibo = base + prev 
   tmp = nil 
   idx = 4
   while fibo.to_s.length <= max_length-1
    tmp = fibo  + prev 
    base = prev 
    prev = fibo 
    fibo = tmp 
    idx+=1
   end 
   p idx
 end 
 
 fibo(1000)