require './lib/player'
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

  def player_hp(index)
    @players[index-1].hp
  end  
  
  def player_attack(index)
  @players[index-1].take_damage
  end

end