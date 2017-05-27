year = 1901 
days_per_month = [31,28,31,30,31,30,31,31,30,31,30,31]
total_sundays = 0 
day_of_week = 2 # tuesday 

while year <= 2000

  (year % 4).eql?(0) && (year.to_s.slice(year.to_s.length-2, 2) != "00") ? days_per_month[1] = 29 : days_per_month[1] = 28  # leap year handler. Oly works for given range. Centuries divisible by 400 will be missed e.g. 1600 / 2000 / 2400. 

  days_per_month.each do | month_length | 
    for day_of_month in 1..month_length 
    day_of_week = day_of_week % 7 
      if day_of_week.eql?(0) && day_of_month.eql?(1)
        total_sundays += 1 
      end 
    day_of_week += 1 
    end 
  end 
  
  year += 1 

end 

puts total_sundays
