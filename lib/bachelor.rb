#require 'pry'
 def get_first_name_of_season_winner(data, season)
  # code here
  winner=""
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      winner = contestants["name"]
    end
  end
  winner.split.first
end



def get_contestant_name(data, occupation)
  # code here
  answer=""
  data.values.each do |contestants|
      contestants.each do |contestant|
        if contestant["occupation"] == occupation
        answer = contestant["name"]
        end
      end
    end
  answer
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter=0
  data.values.each do |contestants|
      contestants.each do |contestant|
        if contestant["hometown"] == hometown
        counter += 1
        end
      end
    end
  counter
end

def get_occupation(data, hometown)
  # code here
  occupation=""
  data.values.each do |contestants|
      contestants.each do |contestant|
        if occupation != "" then break end
          if  contestant["hometown"] == hometown
            occupation = contestant["occupation"]
          end
      end
    end
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  counter= 0
  age = 0
  data[season].each do |contestants|
    age +=  contestants["age"].to_i
    counter += 1
  end
  (age / counter.to_f).round
end
#binding.pry
#=begin
data= {
   "season 19":[
      {
         "name":"Ashley Iaconetti",
         "age":"26",
         "hometown":"Great Falls, Virginia",
         "occupation":"Nanny/Freelance Journalist",
         "status":""
      },
      {
         "name":"Becca Tilley",
         "age":"26",
         "hometown":"Shreveport, Louisiana[b]",
         "occupation":"Chiropractic Assistant",
         "status":""
      },
      {
         "name":"Britt Nilsson",
         "age":"27",
         "hometown":"Hollywood, California",
         "occupation":"Waitress",
         "status":""
      },
      {
         "name":"Carly Waddell",
         "age":"29",
         "hometown":"Arlington, Texas",
         "occupation":"Cruise Ship Singer",
         "status":""
      },
      {
         "name":"Jade Roper",
         "age":"28",
         "hometown":"Los Angeles, California",
         "occupation":"Cosmetics Developer",
         "status":""
      },
      {
         "name":"Kaitlyn Bristowe",
         "age":"29",
         "hometown":"Leduc, Alberta[c]",
         "occupation":"Dance Instructor",
         "status":""
      },
      {
         "name":"Kelsey Poe",
         "age":"28",
         "hometown":"Hudsonville, Michigan[d]",
         "occupation":"Guidance Counselor",
         "status":""
      },
      {
         "name":"Mackenzie Deonigi",
         "age":"21",
         "hometown":"Maple Valley, Washington",
         "occupation":"Dental Assistant",
         "status":""
      },
      {
         "name":"Megan Bell",
         "age":"24",
         "hometown":"Nashville, Tennessee",
         "occupation":"Make-Up Artist",
         "status":""
      },
      {
         "name":"Samantha Steffen",
         "age":"27",
         "hometown":"Indianapolis, Indiana[e]",
         "occupation":"Fashion Designer",
         "status":""
      },
      {
         "name":"Whitney Bischoff",
         "age":"29",
         "hometown":"Chicago, Illinois",
         "occupation":"Fertility Nurse",
         "status":""
      },
      {
         "name":"Ashley Salter",
         "age":"24",
         "hometown":"Brooklyn, New York",
         "occupation":"Hair Stylist",
         "status":"Eliminated in episode 4"
      },
      {
         "name":"Juelia Kinney",
         "age":"30",
         "hometown":"Portland, Oregon",
         "occupation":"Esthetician",
         "status":"Eliminated in episode 4"
      },
      {
         "name":"Nikki Delventhal",
         "age":"26",
         "hometown":"New York, New York",
         "occupation":"Former NFL Cheerleader",
         "status":"Eliminated in episode 4"
      },
      {
         "name":"Jillian Anderson",
         "age":"25",
         "hometown":"Howland, Ohio[f]",
         "occupation":"News Producer",
         "status":"Eliminated in episode 4"
      },
      {
         "name":"Amber James",
         "age":"29",
         "hometown":"Kankakee, Illinois[g]",
         "occupation":"Bartender",
         "status":"Eliminated in episode 3"
      },
      {
         "name":"Tracy Darakis",
         "age":"29",
         "hometown":"Wellington, Florida",
         "occupation":"Fourth Grade Teacher",
         "status":"Eliminated in episode 3"
      },
      {
         "name":"Trina Scherenberg",
         "age":"33",
         "hometown":"Algonquin, Illinois[h]",
         "occupation":"Special Education Teacher",
         "status":"Eliminated in episode 3"
      },
      {
         "name":"Alissa Giambrone",
         "age":"24",
         "hometown":"Hamilton, New Jersey",
         "occupation":"Flight Attendant",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Jordan Branch",
         "age":"24",
         "hometown":"Windsor, Colorado",
         "occupation":"Student",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Kimberly Sherbach",
         "age":"28",
         "hometown":"Wantagh, New York",
         "occupation":"Yoga Instructor",
         "status":"Eliminated in episode 2\nReturned in episode 2\nEliminated in episode 1"
      },
      {
         "name":"Tandra Steiner",
         "age":"30",
         "hometown":"Sandy, Utah",
         "occupation":"Executive Assistant",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Tara Eddings",
         "age":"26",
         "hometown":"Fort Lauderdale, Florida",
         "occupation":"Sport Fishing Enthusiast",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Amanda Goerlitz",
         "age":"24",
         "hometown":"Lake in the Hills, Illinois",
         "occupation":"Ballet Teacher",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Bo Stanley",
         "age":"25",
         "hometown":"Carpinteria, California",
         "occupation":"Plus-Size Model",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Brittany Fetkin",
         "age":"26",
         "hometown":"Orlando, Florida",
         "occupation":"WWE Diva-in-Training",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Kara Wilson",
         "age":"25",
         "hometown":"Brownsville, Kentucky",
         "occupation":"High School Soccer Coach",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Michelle Davis",
         "age":"25",
         "hometown":"Provo, Utah",
         "occupation":"Wedding Cake Decorator",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Nicole",
         "age":"31",
         "hometown":"Scottsdale, Arizona",
         "occupation":"Real Estate Agent",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Reegan Cornwell",
         "age":"28",
         "hometown":"Manhattan Beach, California",
         "occupation":"Cadaver Tissue Saleswoman",
         "status":"Eliminated in episode 1"
      }
   ],
   "season 18":[
      {
         "name":"Nikki Ferrell",
         "age":"26",
         "hometown":"Kearney, Missouri",
         "occupation":"Pediatric Nurse",
         "status":"Winner"
      },
      {
         "name":"Clare Crawley",
         "age":"32",
         "hometown":"Sacramento, California",
         "occupation":"Hairstylist",
         "status":"Runner-up"
      },
      {
         "name":"Andi Dorfman",
         "age":"26",
         "hometown":"Atlanta, Georgia",
         "occupation":"Assistant District Attorney",
         "status":"Quit in episode 9"
      },
      {
         "name":"Renee Oteri",
         "age":"32",
         "hometown":"Martha's Vineyard, Massachusetts[Note 1]",
         "occupation":"Real Estate Agent",
         "status":"Eliminated in episode 8"
      },
      {
         "name":"Chelsie Webster",
         "age":"24",
         "hometown":"Lexington, Ohio",
         "occupation":"Science Educator",
         "status":"Eliminated in episode 7"
      },
      {
         "name":"Sharleen Joynt",
         "age":"29",
         "hometown":"Ottawa, Ontario",
         "occupation":"Opera Singer",
         "status":"Withdrew in episode 7"
      },
      {
         "name":"Kat Hurd",
         "age":"29",
         "hometown":"Iowa City, Iowa",
         "occupation":"Medical Sales Representative/NBA Dancer",
         "status":"Eliminated in episode 6"
      },
      {
         "name":"Cassandra Ferguson",
         "age":"22",
         "hometown":"Shelby Charter Township, Michigan",
         "occupation":"Former NBA Dancer",
         "status":"Eliminated in episode 6"
      },
      {
         "name":"Alli Restko",
         "age":"26",
         "hometown":"Orland Park, Illinois",
         "occupation":"Nanny",
         "status":"Eliminated in episode 5"
      },
      {
         "name":"Danielle Ronco",
         "age":"25",
         "hometown":"Litchfield, Illinois",
         "occupation":"Psychiatric Nurse",
         "status":"Eliminated in episode 5"
      },
      {
         "name":"Kelly Travis",
         "age":"27",
         "hometown":"Conyers, Georgia",
         "occupation":"Dog Lover",
         "status":"Eliminated in episode 5"
      },
      {
         "name":"Elise Mosca",
         "age":"27",
         "hometown":"Forty Fort, Pennsylvania",
         "occupation":"First Grade Teacher",
         "status":"Eliminated in episode 4"
      },
      {
         "name":"Lauren Solomon",
         "age":"26",
         "hometown":"Austin, Texas",
         "occupation":"Music Composer",
         "status":"Eliminated in episode 4"
      },
      {
         "name":"Christy Hansen",
         "age":"24",
         "hometown":"Aurora, Illinois",
         "occupation":"Marketing Manager",
         "status":"Eliminated in episode 3"
      },
      {
         "name":"Lucy Aragon",
         "age":"25",
         "hometown":"Santa Barbara, California",
         "occupation":"Free Spirit",
         "status":"Eliminated in episode 3"
      },
      {
         "name":"Amy Long",
         "age":"27",
         "hometown":"Clermont, Florida",
         "occupation":"Local News Reporter",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Chantel Forrest",
         "age":"27",
         "hometown":"Miami, Florida",
         "occupation":"Account Manager",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Victoria Lima",
         "age":"24",
         "hometown":"Porto Alegre, Brazil",
         "occupation":"Legal Assistant",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Alexis Morgado",
         "age":"24",
         "hometown":"Tampa, Florida",
         "occupation":"Communications Director/NHL Ice Girl",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Amy Jokinen",
         "age":"31",
         "hometown":"Apopka, Florida",
         "occupation":"Massage Therapist",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Ashley Poe",
         "age":"25",
         "hometown":"Roanoke, Texas",
         "occupation":"Grade School Teacher",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Christine Llano",
         "age":"23",
         "hometown":"Miami, Florida",
         "occupation":"Police Support Specialist",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Kylie Lewis",
         "age":"23",
         "hometown":"Rockford, Illinois",
         "occupation":"Interior Designer",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Lacy Faddoul",
         "age":"25",
         "hometown":"Antelope Acres, California",
         "occupation":"Nursing Home Owner",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Lauren Higginson",
         "age":"25",
         "hometown":"Edmond, Oklahoma",
         "occupation":"Mineral Coordinator",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Maggie Gantt",
         "age":"25",
         "hometown":"Wagener, South Carolina",
         "occupation":"Personal Banker",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Valerie Eredia",
         "age":"26",
         "hometown":"Sutter, California",
         "occupation":"Personal Trainer",
         "status":"Eliminated in episode 1"
      }
   ],
   "season 17":[
      {
         "name":"Catherine Giudici",
         "age":"26",
         "hometown":"Seattle, Washington",
         "occupation":"Graphic Designer",
         "status":"Winner"
      },
      {
         "name":"Lindsay Yenter",
         "age":"24",
         "hometown":"Fort Bragg, North Carolina",
         "occupation":"Substitute Teacher",
         "status":"Runner-up"
      },
      {
         "name":"AshLee Frazier",
         "age":"32",
         "hometown":"Houston, Texas",
         "occupation":"Personal Organizer",
         "status":"Eliminated in episode 9"
      },
      {
         "name":"Desiree Hartsock",
         "age":"26",
         "hometown":"Northglenn, Colorado",
         "occupation":"Bridal Stylist",
         "status":"Eliminated in episode 8"
      },
      {
         "name":"Lesley Murphy",
         "age":"24",
         "hometown":"Fort Smith, Arkansas",
         "occupation":"Political Consultant",
         "status":"Eliminated in episode 7"
      },
      {
         "name":"Tierra LiCausi",
         "age":"24",
         "hometown":"Las Vegas, Nevada",
         "occupation":"Leasing Consultant",
         "status":"Eliminated in episode 7"
      },
      {
         "name":"Daniella McBride",
         "age":"24",
         "hometown":"Belmont, California",
         "occupation":"Commercial Casting Associate",
         "status":"Eliminated in episode 6"
      },
      {
         "name":"Selma Alameri",
         "age":"29",
         "hometown":"San Diego, California",
         "occupation":"Real Estate Dealer",
         "status":"Eliminated in episode 6"
      },
      {
         "name":"Sarah Herron",
         "age":"26",
         "hometown":"Evergreen, Colorado",
         "occupation":"Advertising Executive",
         "status":"Eliminated in episode 6"
      },
      {
         "name":"Robyn Howard",
         "age":"24",
         "hometown":"Houston, Texas",
         "occupation":"Oil Field Account Manager",
         "status":"Eliminated in episode 5"
      },
      {
         "name":"Jackie Parr",
         "age":"25",
         "hometown":"Ormond Beach, Florida",
         "occupation":"Cosmetics Consultant",
         "status":"Eliminated in episode 5"
      },
      {
         "name":"Amanda Meyer",
         "age":"26",
         "hometown":"Bakersfield, California",
         "occupation":"Fit Model",
         "status":"Eliminated in episode 4"
      },
      {
         "name":"Leslie Hughes",
         "age":"28",
         "hometown":"Ruskin, Florida",
         "occupation":"Poker Dealer",
         "status":"Eliminated in episode 4"
      },
      {
         "name":"Kristy Kaminski",
         "age":"25",
         "hometown":"Darien, Wisconsin",
         "occupation":"Model",
         "status":"Eliminated in episode 3"
      },
      {
         "name":"Taryn Renee Daniels",
         "age":"30",
         "hometown":"Troutdale, Oregon",
         "occupation":"Health Club Manager",
         "status":"Eliminated in episode 3"
      },
      {
         "name":"Kacie Boguskie",
         "age":"25",
         "hometown":"See below",
         "occupation":"See below",
         "status":"Eliminated in episode 3"
      },
      {
         "name":"Brooke Burchette",
         "age":"25",
         "hometown":"Pittsburgh, Pennsylvania",
         "occupation":"Community Organizer",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Diana Weeks Willardson",
         "age":"31",
         "hometown":"Salt Lake City, Utah",
         "occupation":"Salon Owner",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Katie Levans",
         "age":"27",
         "hometown":"Woodstock, Illinois",
         "occupation":"Yoga Instructor",
         "status":"Quit in episode 2"
      },
      {
         "name":"Ashley Harper",
         "age":"25",
         "hometown":"Garner, North Carolina",
         "occupation":"Fashion Model",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Ashley Palenkas",
         "age":"28",
         "hometown":"Macomb, Michigan",
         "occupation":"Hair Stylist",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Kelly Dutton",
         "age":"28",
         "hometown":"Nashville, Tennessee",
         "occupation":"Cruise Ship Entertainer",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Keriann Miranda",
         "age":"29",
         "hometown":"Agoura Hills, California",
         "occupation":"Entrepreneur",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Lacey Latka",
         "age":"24",
         "hometown":"Valencia, California",
         "occupation":"Graduate Student",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Lauren Marchetti",
         "age":"27",
         "hometown":"Cranston, Rhode Island",
         "occupation":"Journalist",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Paige Vigil",
         "age":"25",
         "hometown":"Cranston, Rhode Island",
         "occupation":"Jumbotron Operator",
         "status":"Eliminated in episode 1"
      }
   ],
   "season 16":[
      {
         "name":"Courtney Robertson",
         "age":"28",
         "hometown":"Scottsdale, Arizona",
         "occupation":"Model",
         "status":"Winner"
      },
      {
         "name":"Lindzi Cox",
         "age":"27",
         "hometown":"Newcastle, Washington[Note 2]",
         "occupation":"Business development manager",
         "status":"Runner-up"
      },
      {
         "name":"Nicki Sterling",
         "age":"26",
         "hometown":"Hurst, Texas",
         "occupation":"Dental hygienist",
         "status":"Eliminated in episode 9"
      },
      {
         "name":"Kacie Boguskie",
         "age":"24",
         "hometown":"Clarksville, Tennessee[Note 3]",
         "occupation":"Administrative assistant",
         "status":"Eliminated in episode 8"
      },
      {
         "name":"Emily O'Brien",
         "age":"27",
         "hometown":"Chapel Hill, North Carolina",
         "occupation":"PhD Student",
         "status":"Eliminated in episode 7"
      },
      {
         "name":"Rachel Truehart",
         "age":"27",
         "hometown":"Southampton, Massachusetts",
         "occupation":"Fashion sales representative",
         "status":"Eliminated in episode 7"
      },
      {
         "name":"Jamie Otis",
         "age":"25",
         "hometown":"Dryden, New York",
         "occupation":"Registered nurse",
         "status":"Eliminated in episode 6"
      },
      {
         "name":"Casey Shteamer",
         "age":"26",
         "hometown":"Leawood, Kansas",
         "occupation":"Trading clerk",
         "status":"Removed in episode 6"
      },
      {
         "name":"Blakeley Jones",
         "age":"33",
         "hometown":"Rutherfordton, North Carolina",
         "occupation":"VIP cocktail waitress",
         "status":"Eliminated in episode 6"
      },
      {
         "name":"Jennifer Fritsch",
         "age":"28",
         "hometown":"Cache, Oklahoma",
         "occupation":"Accountant",
         "status":"Eliminated in episode 5"
      },
      {
         "name":"Elyse Myers",
         "age":"24",
         "hometown":"Chicago, Illinois",
         "occupation":"Personal trainer",
         "status":"Eliminated in episode 5"
      },
      {
         "name":"Monica Spannbauer",
         "age":"33",
         "hometown":"Yuba, California",
         "occupation":"Dental consultant",
         "status":"Eliminated in episode 4"
      },
      {
         "name":"Samantha Levey",
         "age":"26",
         "hometown":"Pittsburgh, Pennsylvania",
         "occupation":"Advertising account manager",
         "status":"Eliminated in episode 4"
      },
      {
         "name":"Jaclyn Swartz",
         "age":"27",
         "hometown":"Newton, Massachusetts",
         "occupation":"Advertising account manager",
         "status":"Eliminated in episode 3"
      },
      {
         "name":"Erika Uhlig",
         "age":"23",
         "hometown":"Charlottesville, Virginia",
         "occupation":"Law student",
         "status":"Eliminated in episode 3"
      },
      {
         "name":"Brittney Schreiner",
         "age":"26",
         "hometown":"Colorado Springs, Colorado",
         "occupation":"Medical sales representative",
         "status":"Quit in episode 3"
      },
      {
         "name":"Shawn Reynolds",
         "age":"28",
         "hometown":"Cincinnati, Ohio",
         "occupation":"Financial advisor",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Jenna Burke",
         "age":"27",
         "hometown":"Loveland, Ohio",
         "occupation":"Blogger",
         "status":"Eliminated in episode 2"
      },
      {
         "name":"Amber Bacon",
         "age":"23",
         "hometown":"Port Coquitlam, British Columbia",
         "occupation":"Labor and delivery nurse",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Amber Tierney",
         "age":"28",
         "hometown":"Waverly, Nebraska",
         "occupation":"Critical care nurse",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Anna Snowball",
         "age":"25",
         "hometown":"Detroit, Michigan",
         "occupation":"Student",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Dianna Martinez",
         "age":"30",
         "hometown":"San Gabriel, California",
         "occupation":"Nonprofit director",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Holly Johnson",
         "age":"34",
         "hometown":"Salyersville, Kentucky",
         "occupation":"Pharmaceutical sales representative",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Lyndsie James",
         "age":"29",
         "hometown":"London, England",
         "occupation":"Internet entrepreneur",
         "status":"Eliminated in episode 1"
      },
      {
         "name":"Shira Astrof",
         "age":"35",
         "hometown":"Massapequa Park, New York",
         "occupation":"Actress",
         "status":"Eliminated in episode 1"
      }
   ]}
#=end
