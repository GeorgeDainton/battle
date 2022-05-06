require 'player'

describe Player do
  subject(:player) { Player.new('George') }
  it 'is an instance of Player class' do
    expect(player).to be_kind_of Player
  end

  it 'can return it\'s name' do
    expect(player.print_name).to eq 'George'
  end


end 