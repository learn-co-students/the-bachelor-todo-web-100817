def get_first_name_of_season_winner(data, season)
  contestant_status = data[season]
  contestant_status.each do |person|
    person.each do |key, value|
      if value == "Winner"
        name = person["name"].split
        return name[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, people|
    people.each do |personal|
      personal.each do |key, value|
        if value == occupation
          name = personal["name"]
          return name
        end
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, people|
    people.each do |personal|
      personal.each do |key, value|
        if value == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, people|
    people.each do |personal|
      personal.each do |key, value|
        if value == hometown
          occupation = personal["occupation"]
          return occupation
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  number_loops = 0
  total = 0
  contestant_season = data[season]
  contestant_season.each do |person|

    person.each do |key, value|
      if key == "age"
        number = value.to_i
        total += number
        number_loops += 1
      end
    end

  end

  (total / number_loops).ceil

end
