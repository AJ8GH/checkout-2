describe Numeric do
  context '#pounds' do
    it 'converts 1 to £1.00' do
      expect(1.0.pounds).to eq "£1.00"
    end

    it 'converts 3.5 to £3.50' do
      expect(3.5.pounds).to eq "£3.50"
    end

    it 'converts 10 to £10.00' do
      expect(10.pounds).to eq "£10.00"
    end
  end
end
