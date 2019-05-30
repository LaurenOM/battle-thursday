require 'player'
describe Player do
  subject { Player.new('Jimmy')}
  it 'returns its name' do
    expect(subject.name).to eql('Jimmy')
  end

  it 'HP reduces by 10' do
    expect{subject.take_damage}.to change{subject.hp}.by(-10) 
  end 
end