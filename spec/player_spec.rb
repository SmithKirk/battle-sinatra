describe Player do
  subject(:john){described_class.new('John')}

  describe '#name' do
    it 'returns the name' do
      expect(john.name).to eq 'John'
    end
  end
end
