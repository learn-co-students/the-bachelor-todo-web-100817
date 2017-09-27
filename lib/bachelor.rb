#begin
def get_first_name_of_season_winner(data, season) #working
  winner = []
  data.each do |seas, info_arr|
      if seas == season
          info_arr.each do |contestants|
              contestants.each do |detail, value|
                if detail == "status" && value == "Winner"
                    winner = contestants["name"].split
                      end
                  end
              end
          end
      end
    winner[0]
end

def get_contestant_name(data, occupation) #working
    name = ""
    data.each do |seas, info_arr|
        info_arr.each do |contestants|
            contestants.each do |detail, value|
                if detail = "occupation" && value == occupation
                    name = contestants["name"]
                    end
                end
            end
        end
    name
end

def count_contestants_by_hometown(data, hometown) #working
    counter = 0
    data.each do |seas, info_arr|
        info_arr.each do |contestants|
            contestants.each do |detail, value|
                if detail == "hometown" && value == hometown
                    counter += 1
                    end
                end
            end
        end
    counter
end

def get_occupation(data, hometown) #working
    job = ""
    data.find do |seas, info_arr|
        info_arr.find do |contestants|
            contestants.find do |detail, value|
                if detail == "hometown" && value == hometown
                    job = contestants["occupation"]
                    end
                end
            end
        end
    job
end

def get_average_age_for_season(data, season) #working
    age_total =  0.0 #making this a float, allows for the decimal to be rounded, without this it is broken.
  counter = 0
  data.each do |seas, info_arr|
      if seas == season
          info_arr.each do |contestants|
              contestants.each do |detail, value|
                  if detail == "age"
                      age_total += value.to_i #convert the string to an integer
                      counter += 1 #keep tabs on how many women there are to average properly.
                      end
                  end
              end
          end
      end
  (age_total / counter).round
  end
          
          
          
          
          
          
          
          
          
          
