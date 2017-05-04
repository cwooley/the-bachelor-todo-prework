def get_first_name_of_season_winner(data, season)
  # code here
  contestantArr = []
  contestant_first_name = nil
  data.each do |data_season, contestantHashArr|
    if season == data_season
      contestantArr = contestantHashArr
    end
  end
  contestantArr.each do |contestant|
    if contestant["status"] == "Winner"
      contestant_first_name = contestant["name"].split(" ")[0]
    end
  end
  contestant_first_name
end

def get_contestant_name(data, occupation)
  # code here
  contestant = nil
  data.each do |season, contestant_hash_arr|
    contestant_hash_arr.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        contestant = contestant_hash
      end
    end
  end
  contestant["name"]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestant_hash_arr|
    contestant_hash_arr.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant_hash_arr|
    contestant_hash_arr.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_arr = []
  contestantArr = []
  age_sum = 0
  data.each do |data_season, contestant_hash_arr|
    if season == data_season
      contestantArr = contestant_hash_arr
    end
  end
  contestantArr.each do |contestant|
    age_arr << contestant["age"].to_i
  end
  age_arr.each do |age|
    age_sum += age
  end
  average_age = age_sum / age_arr.length
end
