require 'game'
def add_two_players
  game = Game.new 
  game.add_player("Player1", player_class)
  game.add_player("Player2", player_class)
end