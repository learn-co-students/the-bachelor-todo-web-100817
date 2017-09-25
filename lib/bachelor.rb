require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data.each do |season_num, contestants|
    if season_num === season
      contestants.each do |contestant|
        contestant.each do |key, value|
        if key === "status" && value === "Winner"

          winner += contestant["name"]
        end
        end
      end
    end
  end
  winner.split(" ")[0]
end


def get_contestant_name(data, occupation)
  # code here
  person = ""
  data.each do |season_num, contestants|
      contestants.each do |contestant|
        contestant.each do |key, value|
        if key === "occupation" && value === occupation

          person += contestant["name"]
        end
        end
      end
  end
  person
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_num = 0
  data.each do |season_num, contestants|
    contestants.each do |contestant|
      contestant.each do |key, value|
        if key === "hometown" && value === hometown
          hometown_num += 1
        end
      end
    end
  end
  hometown_num
end

def get_occupation(data, hometown)
  # code here
  hometown_arr = []
  data.each do |season_num, contestants|
    contestants.each do |contestant|
      contestant.each do |key, value|
        if key === "hometown" && value === hometown
          hometown_arr.push(contestant["occupation"])
        end
      end
    end
  end
  hometown_arr[0]
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
  data.each do |season_num, contestants|
    if season_num === season
      contestants.each do |contestant|
        contestant.each do |key, value|
          if key === "age"
            age_array.push(value.to_f)
          end
        end
      end
    end
  end

  age_total = age_array.reduce {|a, b| a + b }
  (age_total / age_array.length).round
end
