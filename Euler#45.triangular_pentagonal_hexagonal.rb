
@t = [] 
@h = [] 
@p = [] 
@hits = []

def gen_trinums(tn_max)
  n = 1 
  while n * (n + 1) / 2 <= tn_max
    tn = n * (n + 1) / 2
    @t.push(tn)
    n += 1 
  end 
end 

def gen_hexnums(hn_max)
  n = 1 
  while n * ((3 * n) - 1) / 2  <= hn_max
    hn = n * ((3 * n) - 1) / 2 
    @h.push(hn)
    n += 1 
  end 
end 

def gen_pentnums(pn_max)
  n = 1 
  while n * ((2 * n) - 1) <= pn_max
    pn = n * ((2 * n) - 1) 
    @p.push(pn)
    n += 1 
  end 
end 

gen_trinums(2000000000) # max length cap?
gen_hexnums(2000000000)
gen_pentnums(2000000000)

@t.each do | num | 
  if @h.include?(num)
    if @p.include?(num)
      @hits.push(num)
    end 
  end 
end 

p @hits.max
