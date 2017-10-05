require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner_name = contestant["name"]
      return winner_name.split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestant_info|
    contestant_info.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |seasons, contestant_info|
    contestant_info.each do |contestant|
      if contestant["hometown"] == hometown
        hometown_counter += 1
      end
    end
  end
  return hometown_counter
end

def get_occupation(data, hometown)
  data.each do |seasons, contestant_info|
    contestant_info.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  num_of_items = 0
  sum_of_ages = 0
  data[season].each do |contestant|
    num_of_items += 1
    sum_of_ages += contestant["age"].to_f
  end
  average_age = (sum_of_ages/num_of_items).round
  return average_age
end
