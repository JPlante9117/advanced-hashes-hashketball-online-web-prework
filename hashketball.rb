require 'pry'

def game_hash
  
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          number: 0, 
          shoe: 16, 
          points: 22, 
          rebounds: 12, 
          assists: 12, 
          steals: 3, 
          blocks: 1, 
          slam_dunks: 1},
        "Reggie Evans" => {
          number: 30, 
          shoe: 14, 
          points: 12, 
          rebounds: 12, 
          assists: 12, 
          steals: 12, 
          blocks: 12, 
          slam_dunks: 7},
        "Brook Lopez" => {
          number: 11, 
          shoe: 17, 
          points: 17, 
          rebounds: 19, 
          assists: 10, 
          steals: 3, 
          blocks: 1, 
          slam_dunks: 15},
        "Mason Plumlee" => {
          number: 1, 
          shoe: 19, 
          points: 26, 
          rebounds: 11, 
          assists: 6, 
          steals: 3, 
          blocks: 8, 
          slam_dunks: 5},
        "Jason Terry" => {
          number: 31, 
          hoe: 15, 
          points: 19, 
          rebounds: 2, 
          assists: 2, 
          steals: 4, 
          blocks: 11, 
          slam_dunks: 1}
      }
    },
    
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          number: 4, 
          shoe: 18, 
          points: 10, 
          rebounds: 1, 
          assists: 1, 
          steals: 2, 
          blocks: 7, 
          slam_dunks: 2},
        "Bismack Biyombo" => {
          number: 0, 
          shoe: 16, 
          points: 12, 
          rebounds: 4, 
          assists: 7, 
          steals: 22, 
          blocks: 15, 
          slam_dunks: 10},
        "DeSagna Diop" => {
          number: 2, 
          shoe: 14, 
          points: 24, 
          rebounds: 12, 
          ssists: 12,
          steals: 4, 
          blocks: 5, 
          slam_dunks: 5},
        "Ben Gordon" => {
          number: 8, 
          shoe: 15, 
          points: 33, 
          rebounds: 3, 
          assists: 2, 
          steals: 1, 
          blocks: 1, 
          slam_dunks: 0},
        "Kemba Walker" => {
          number: 33, 
          shoe: 15, 
          points: 6, 
          rebounds: 12, 
          assists: 12, 
          steals: 7, 
          blocks: 5, 
          slam_dunks: 12}
        },
    }
    
  }
  hash
end

def num_points_scored(player_name)
  access = game_hash                                                        #access the information with variable
  
  access.each do |home_away,  team_info|                                    #iterate into the first hash
    team_info.each do |team_info_selector, value|                           #iterate into the second hash
      if value.include?(player_name)                                        #check for specific player name
        return access[home_away][team_info_selector][player_name][:points]  #when found, return their points
      end
    end
  end
end

def shoe_size(player_name)                                                  #same as above!
  access = game_hash
  
  access.each do |home_away,  team_info|
    team_info.each do |team_info_selector, value|
      if value.include?(player_name)
        return access[home_away][team_info_selector][player_name][:shoe]
      end
    end
  end
end

def team_colors(team_name)
  access = game_hash
  
  access.each do |home_away,  team_info|                                  #same as above until . . .
      if access[home_away].values.include?(team_name)                     #check if the team name matches
        team_info.each do |team_info_selector, value|                     #if it does, then iterate into that team
          if team_info_selector == :colors                                #force the selector to be :colors 
            return value                                                  #and return it's value!
          end
        end
      end
  end
end

def team_names
  access = game_hash
  
  team_array = []
  
  access.each do |home_away,  team_info|                                  #same as above until . . .
    team_info.each do |team_info_selector, value|
      binding.pry
    end
  end
end
  
  
  
  
  
  
  
  
  
  





