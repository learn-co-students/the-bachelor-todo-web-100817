require 'pry'

def get_first_name_of_season_winner(data, season)
  fname = []
data.each do |season2, data2|
  if season2 == season
  data2.each do |number, data3|
     if number["status"] == "Winner"
       fname.push(number["name"].split)
  end
end
end
end
fname = fname.flatten
return fname[0]
end

def get_contestant_name(data, occupation)
data.each do |season2, data2|
  data2.each do |number, data3|
     if number["occupation"] == "#{occupation}"
       return number["name"]
end
end
end
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season2, data2|
    data2.each do |number, data3|
       if number["hometown"] == "#{hometown}"
         i+=1
  end
  end
  end
  return i
  end


def get_occupation(data, hometown)
  data.each do |season2, data2|
    data2.each do |number, data3|
       if number["hometown"] == "#{hometown}"
         return number["occupation"]
  end
  end
  end
  end

def get_average_age_for_season(data, season)
  fage = []
data.each do |season2, data2|
  if season2 == season
  data2.each do |number, data3|
       fage.push(number["age"].to_i)
end
end
end
fage = fage.flatten
result = fage.inject{ |sum, el| sum + el }.to_f / fage.size
return result.round
end
