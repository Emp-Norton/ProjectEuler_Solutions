def loadData(filepath)
  File.open(filepath, 'r') do | file | 
    file.each_line do | line | 
      Hands.push(line.strip)
    end 
  end 

  Hands.each do | hand | 
    p1cards = hand.split(" ")[0, 5]
    p2cards = hand.split(" ")[5, 10]
    P1.push(p1cards)
    P2.push(p2cards)
  end 
end 

def convertHand(hand)
  vals = hand.collect { | card | card[0] } 
  suits = hand.collect { | card | card[1] } 
  
  vals.map! do | val | 
    case val 
    when "T"
      10
    when "J" 
      11
    when "Q"
      12
    when "K"
      13
    when "A"
      14
    else 
      val.to_i
    end 
  end 
  
  convertedHand = [vals, suits]
  return convertedHand
end 
  
def assignPoints(hand)
  handPoints = 0 
  vals, suits = hand[0], hand[1]
  
  if vals.sort.join.eql?((vals.min..vals.max).to_a.join)  
    if suits.uniq.count.eql?(1) 
      if vals.max.eql?(14) 
        # "Royal" 
        handPoints += (vals.max + 1000)
      else 
        # "Straight Flush" 
        handPoints += (vals.max + 900) 
      end 
    else  
      # "Straight" 
      handPoints += (vals.max + 500) 
    end 
  elsif suits.uniq.count.eql?(1) 
    # "flush" 
    handPoints += (vals.max + 600)
  else 
    pairs = []
    vals.each_with_index do | val, idx | 
      if vals[idx+1, vals.length].include?(val)
        pairs.push(val)
      end 
    end 
    
    case pairs.length 
    when 1 
      # "One Pair"
       handPoints += (pairs.max + 200)
    when 2 
      if pairs.uniq.count.eql?(1)
        # "Three of a kind"
         handPoints += (pairs.max + 400) 
      else 
        # "Two pair"
         handPoints += (pairs.max + 300)
      end 
    when 3 
      if pairs.uniq.count.eql?(1)
        # "Four of a kind"
         handPoints += (pairs.max + 800)
      else 
        # "Full House"
         handPoints += (pairs.max + 700)
      end 
    else 
      # "High Card"
       handPoints += (vals.max)
    end 
  end
  return handPoints
end 
 

Hands = [] 
P1 = [] 
p1wins = 0 
P2 = []
p2wins = 0 
loadData('C:\Users\Admin\Desktop\Coding Stuff\Euler\data\poker.txt')

for handIdx in 0..Hands.length-1
  p1hand =  convertHand(P1[handIdx])
  p1score = assignPoints(p1hand)
  p2hand = convertHand(P2[handIdx])
  p2score = assignPoints(p2hand)

  p1score > p2score ? p1wins += 1 : p2wins += 1   
end 

puts p1wins


