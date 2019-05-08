require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |seasn, contestant_array|
    if seasn == season
      contestant_array.each do |contestant|
        winner = contestant["name"].split[0] if contestant["status"] == "Winner"
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  name = ""
    data.each do |seasn, contestant_array|
      contestant_array.each do |contestant|
        name = contestant["name"] if contestant["occupation"] == occupation
      end
    end
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |seasn, contestant_array|
    contestant_array.each do |contestant|
      count +=1 if contestant["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |seasn, contestant_array|
    contestant_array.each do |contestant|
      occupation = contestant["occupation"] if contestant["hometown"] == hometown && occupation == ""
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  total_age = 0
  contestant_num = 0
  data.each do |seasn, contestant_array|
    if season == seasn
      contestant_num = contestant_array.length
      contestant_array.each do |contestant|
        total_age += contestant["age"].to_f
      end
    end
  end
  (total_age./contestant_num).round
end
