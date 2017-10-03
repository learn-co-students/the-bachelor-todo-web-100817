require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_number, contestants|
    if season == season_number
      contestants.each do |info|
       #binding.pry 
        if info["status"] == "Winner"
       #   binding.pry
          return info["name"].split(" ").first
        end
      end
    end
  end

end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_number, contestants|
      contestants.each do |info|
       #binding.pry 
        if info["occupation"] == occupation
       #   binding.pry
          return info["name"]
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season_number, contestants|
      contestants.each do |info|
       #binding.pry 
        if info["hometown"] == hometown 
       #   binding.pry
          count += 1
      end
    end
  end
  count
  
end

def get_occupation(data, hometown)
  # code here
  
  data.each do |season_number, contestants|
      contestant = contestants.find {|info| info["hometown"] == hometown}
      return contestant["occupation"] if contestant != nil
  end
end

def get_average_age_for_season(data, season)
  # code here
  count = 0.0
  total = 0.0
  data.each do |season_number, contestants|
    if season == season_number
      contestants.each do |info|
        total = total + info["age"].to_f
        count += 1.0
      end
    end
  end
  avg = (total/count).round

end
