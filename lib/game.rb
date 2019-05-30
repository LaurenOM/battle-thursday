require 'player'
require 'pry-byebug'
class Game
  def initialize
    @players = []
  end

  def attack(player)
    player.take_damage
  end

  def add_player(name, player = Player)
    @players << player.new(name)
  end

  def player_name(index)
    @players[index-1].name
  end
end