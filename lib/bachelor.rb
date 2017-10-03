require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_num, season_data|
    if season_num == season
      season_data.each do |key, value|
      if key.has_value?("Winner") == true
        name = key["name"].split.first
        return name
        # binding.pry
end
end
end
end
end



def get_contestant_name(data, occupation)
  data.each do |season_num, season_data|
      season_data.each do |key, value|
      if key.has_value?(occupation) == true
        name = key["name"]
        return name
        # binding.pry
end
end
end
end


def count_contestants_by_hometown(data, hometown)
count = 0
  data.each do |season_num, season_data|
      season_data.each do |key, value|
      if key.has_value?(hometown) == true
        count += 1
        # binding.pry
end
end
end
return count
end

def get_occupation(data, hometown)
  data.each do |season_num, season_data|
      season_data.each do |key, value|
      if key.has_value?(hometown) == true
        job = key["occupation"]
        return job
        # binding.pry
end
end
end
end


def get_average_age_for_season(data, season)
array = []
  data.each do |season_num, season_data|
    if season_num == season
      season_data.each do |key, value|
        array << key["age"].to_i

end
end
end
return_array = array.reduce(:+) / array.count.to_f
return return_array.round

end
