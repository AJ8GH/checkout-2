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

describe String do
  context '#to_symbol' do
    it 'works on one word string' do
      expect('milk'.to_symbol).to eq :milk
    end

    it 'works on multiword strings' do
      expect('ice cream'.to_symbol).to eq :ice_cream
    end
  end
end

describe Symbol do
  context '#to_string' do
    it 'works on one word symbol' do
      expect(:bread.to_string).to eq 'bread'
    end

    it 'works on multiword symbols' do
      expect(:ice_cream.to_string).to eq 'ice cream'
    end
  end
end
