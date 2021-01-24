describe Item do
  let(:milk) { Item.new(name: :milk, price: 0.5) }

  context '#initalize' do
    it 'takes hash as argument' do
      expect { Item.new(name: :milk, price: 0.5) }.to_not raise_error
    end
  end

  context '#name' do
    it 'returns item name as a string' do
      expect(milk.name).to eq 'Milk'
    end
  end

  context '#price' do
    it 'returns price in pounds format' do
      expect(milk.price).to eq '£0.50'
    end
  end
end
