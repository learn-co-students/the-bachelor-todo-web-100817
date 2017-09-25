def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |hash|
    if hash["status"] == "Winner"
      return hash["name"].split[0]
  end
end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
    if contestant_hash["occupation"] == occupation
      return contestant_hash["name"]
    end
  end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["hometown"]==hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  count = 0
  data[season].each do |contestant_hash|
      age += contestant_hash["age"].to_i
      count += 1
    end
  return (age/count.to_f).round(0)
end
