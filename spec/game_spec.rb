require 'game'

describe Game do
  let(:player_class) { spy(:player_class, :new => player) }
  let(:player) { spy(:player) } 

  it 'can call take_damage' do 
    subject.attack(player)
    expect(player).to have_received(:take_damage)
  end

  it 'can create a player with a name' do 
    game = Game.new
    game.add_player("Player1", player_class)
    expect(player_class).to have_received(:new).with("Player1")
  end

  it 'can return player1 name' do 
    game = Game.new 
    game.add_player("Player1", player_class)
    game.player_name(1)
    expect(player).to have_received(:name)
  end
  it 'can return player2 name' do 
    game = Game.new 
    game.add_player("Player1", player_class)
    game.add_player("Player2", player_class)
    game.player_name(2)
    expect(player).to have_received(:name)
  end
  it 'can return hp of player1' do 
    game = Game.new 
    game.add_player("Player1", player_class)
    game.add_player("Player2", player_class)
    game.player_hp(1)
    expect(player).to have_received(:hp)
  end
  it 'can attack player1' do 
    game = Game.new 
    game.add_player("Player1", player_class)
    game.add_player("Player2", player_class)
    game.player_attack(1)
    expect(player).to have_received(:take_damage)
  end
  
end