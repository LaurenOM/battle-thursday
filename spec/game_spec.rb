require 'game'

describe Game do
  let(:player) { spy(:player) } 
  it 'can call take_damage' do 
    subject.attack(player)
    expect(player).to have_received(:take_damage)
  end 
end