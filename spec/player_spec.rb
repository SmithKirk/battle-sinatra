describe Player do
  subject(:john){described_class.new('John')}
  subject(:mary){described_class.new('Mary')}

  describe '#name' do
    it 'returns the name' do
      expect(john.name).to eq 'John'
    end
  end

  describe '#hp' do
    it 'returns hit points' do
      expect(john.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'damages player' do
      expect(mary).to receive(:receive_damage)
      john.attack(mary)
    end
  end

  describe '#receive_damage' do
    it 'reduces the hp of attacked player' do
      expect{john.receive_damage}.to change {john.hp}.by( -1)
    end
  end
end
