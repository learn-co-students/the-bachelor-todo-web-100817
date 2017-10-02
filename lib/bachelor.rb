



# "season 18":[
#    {
#       "name":"Nikki Ferrell",
#       "age":"26",
#       "hometown":"Kearney, Missouri",
#       "occupation":"Pediatric Nurse",
#       "status":"Winner"
#    },

def get_first_name_of_season_winner(data, season) #return the first name of that season's winner
  name = []
  data.each do |array_season, contestants_hash|
    if array_season == season
      contestants_hash.each do |contestant|
        if contestant["status"] == "Winner"
          name << contestant["name"].split
        end
      end
    end
  end
  name = name.flatten
  name[0]
end

def get_contestant_name(data, occupation) #returns the name of the woman who has that occupation.
  name = nil
  data.each do |array_season, contestants_hash|
    contestants_hash.find do |contestant|
      if contestant["occupation"] == occupation
        name = contestant["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown) #return a counter of the number of contestants who are from that hometown
  counter = 0
  data.each do |array_season, contestants_hash|
    contestants_hash.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown) #returns the occupation of the first contestant who hails from that hometown
  occupation = nil
  data.each do |array_season, contestants_hash|
    contestants_hash.find do |contestant|
      if contestant["hometown"] == hometown
        occupation = contestant["occupation"]
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  contestant_ages = []
  data[season].each do |contestant|
    contestant_ages << contestant["age"].to_f
  end
    sum = contestant_ages.reduce(:+)
    length = (contestant_ages.count).to_f
    average = (sum/length).round
end
