
def get_first_name_of_season_winner(data, season)
data[season].each do |i|
    if i["status"] == "Winner"
      return i["name"].split(" ")[0]
    end
  end


end

def get_contestant_name(data, occupation)
  # code here
  data.each do |k1, v1|
    v1.each do |i|
      if i["occupation"] == occupation
        return i["name"]
      end
    end
  end
end





def count_contestants_by_hometown(data, hometown)
counter = 0
data.each do |k1, v1|
  v1.each do |i|
    if i["hometown"] == hometown
      counter +=1
    end
  end
end
counter
end


def get_occupation(data, hometown)
  # code here
  data.each do |k1, v1|
    v1.each do |i|
      if i["hometown"] == hometown
        return i["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  sum =0
  counter = 0
  data[season].each do |i|
    counter +=1
    sum += i["age"].to_f

  end
  return (sum / counter).round

end
