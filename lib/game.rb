require 'player'
class Game
  def attack(player)
    player.take_damage
  end

  def add_player(name, player = Player)
    player.new(name)
  end
end