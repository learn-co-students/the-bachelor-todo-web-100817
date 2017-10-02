def get_first_name_of_season_winner(data, season)
  data.each do |season_number,contestants|
    if season_number == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split.first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number,contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_number,contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        count +=1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season_number,contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_sum=0
  contestant_count=0
  data.each do |season_number,contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if attribute == "age"
          age_int = value.to_f
          age_sum += age_int
          contestant_count += 1
        end
      end
    end
  end
  age_av = age_sum/contestant_count
  return age_av.round
end
