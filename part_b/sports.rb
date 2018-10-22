class SportsTeam
  attr_reader :name, :players, :points
  attr_accessor :coach

#Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).

def initialize(name, players, coach)
  @name = name
  @players = players
  @coach = coach
  @points = 0
end

#@players is an array of players. calling .add_player adds a player to the @players array.

def add_player(new_player)
  @players.push(new_player)
end

def player_exists(player)
  @players.include?(player)
end

def win(true_or_false)
  result = (true_or_false ? 3 : 0)
  @points += result
end

end
