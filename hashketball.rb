# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        { 
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


# Write code here
def num_points_scored(player_name)
#  binding.pry
#new_hash = {}
    game_hash.each do |key,value|
        #key = home or away
        #value = entire data set within it
          value.each do |inner_key,inner_value|
         #inner_key = :Team_name
         
                if inner_key == :players
                 # binding.pry
                      inner_value.each do |stat_key,stat_value|
                       # binding.pry
                          if stat_key[:player_name] == player_name
                       # binding.pry
                         
         
                          return stat_key[:points]
                         # binding.pry
                          end
                       #binding.pry
                       end
               
            end
       
        end

   end
        
end

def shoe_size(player_name)
    game_hash.each do |key,value|
        #key = home or away
        #value = entire data set within it
          value.each do |inner_key,inner_value|
         #inner_key = :Team_name
         
                if inner_key == :players
                 # binding.pry
                      inner_value.each do |stat_key,stat_value|
                      #  binding.pry
                          if stat_key[:player_name] == player_name
                       # binding.pry
                         
         
                          return stat_key[:shoe]
                         # binding.pry
                          end
                       #binding.pry
                       end
               
            end
       
        end

   end

end



def team_colors(team)
        game_hash.each do |key,value|
        #key = home or away
        #value = entire data set within it
          value.each do |inner_key,inner_value|
         #inner_key = :Team_name
        # binding.pry
                if inner_value == team
                 # binding.pry
                 return value[:colors]
              
               
            end
       
        end

   end
end

def team_names
   teams = []
    game_hash.each do |key,value|
       # binding.pry
        #key = home or away
        #value = entire data set within it
          value.each do |inner_key,inner_value|
         #inner_key = :Team_name
        # binding.pry
       if inner_value == value[:team_name]
         #binding.pry
         teams << inner_value
         #binding.pry
         teams
       end
        end
     # binding.pry 
      teams
     #binding.pry
   end
   #binding.pry
teams
end

def player_numbers(team_name)
      jersey_numbers = []
      game_hash.each do |key,value|
        #key = home or away
        #value = entire data set within it
        #binding.pry
         # value == :team_name
            #binding.pry
          if value[:team_name] == team_name
            
               value.each do |inner_key,inner_value|
                #binding.pry            
                if inner_key == :players 
                 #binding.pry
                      inner_value.each do |stat_key,stat_value|
                      #  binding.pry
                        #if stat_value == :number
                         # binding.pry
                        jersey_numbers << stat_key[:number]
                      #  binding.pry
                        jersey_numbers
                       # binding.pry
                      #end
                  end
                  # jersey_numbers
                 #binding.pry
                    end
                    #jersey_numbers
                   # binding.pry
                  end
                  
                  #jersey_numbers
                 # binding.pry
            end
            #jersey_numbers
            #binding.pry


    end
    jersey_numbers
    #binding.pry
end

def player_stats(player_name)
      game_hash.each do |key,value|
        #key = home or away
        #value = entire data set within it
          value.each do |inner_key,inner_value|
         #inner_key = :Team_name
         
                if inner_key == :players
                 # binding.pry
                      inner_value.each do |stat_key,stat_value|
                      #  binding.pry
                          if stat_key[:player_name] == player_name
                       # binding.pry
                         #binding.pry
         
                          return stat_key
                         # binding.pry
                          end
                       #binding.pry
                       end
               
            end
       
        end

   end

end

def big_shoe_rebounds
  rebounds_shoe_size = 4
   largest_shoe_size = 4
      game_hash.each do |key,value|
        #key = home or away
        #value = entire data set within it
          value.each do |inner_key,inner_value|
         #inner_key = :Team_name
        
        # rebounds_shoe_size = 0
                if inner_key == :players
                 # binding.pry
                      inner_value.each do |stat_key,stat_value|
                       # binding.pry
                          if stat_key[:shoe] >  largest_shoe_size
                               # binding.pry
                              largest_shoe_size = stat_key[:shoe]
                                #binding.pry
                                
                               rebounds_shoe_size = stat_key[:rebounds]
                                 # binding.pry
                                 #rebounds_shoe_size
                                 
                          end
                      # binding.pry
                       #return stat_key[:rebounds]
                     #  rebounds_shoe_size
                       end
            end
            #binding.pry
     # rebounds_shoe_size
        end
   end
rebounds_shoe_size

end
