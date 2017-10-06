require 'json'
def get_first_name_of_season_winner(data, season)
  data.each do |year, cast|
    if year.to_s == season
      cast.each do |girl|
        if girl[:"status"] == "Winner"
          return girl[:"name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
    data.each do |year, cast|
      cast.each do |girl|
        if girl[:"occupation"] == occupation
          return girl[:"name"]
        end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |year, cast|
    cast.each do |girl|
      if girl[:"hometown"] == hometown
        counter += 1
      end
  end
end
counter
end

def get_occupation(data, hometown)
  data.each do |year, cast|
  cast.each do |girl|
    if girl[:"hometown"] == hometown
      return girl[:"occupation"]
    end
end
end
end

def get_average_age_for_season(data, season)
  ages = []
data.each do |year, cast|
  if year.to_s == season
    cast.each do |girl|
      ages.push(girl[:"age"].to_i)
    end
  end
end
avg_age = ages.reduce(:+).to_f / ages.size
avg_age.round
end
