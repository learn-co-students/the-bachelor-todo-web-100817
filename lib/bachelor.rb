require "pry"
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    return contestant["name"].split.first if contestant.values.include?("Winner")
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["name"] if contestant.values.include?(occupation)
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      count += 1 if contestant.values.include?(hometown)
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["occupation"] if contestant.values.include?(hometown)
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  conts = 0
  data[season].each do |contestant|
      age += contestant["age"].to_f
      conts += 1
  end
  (age/conts).round
end
