describe Item do
  context '#initalize' do
    it 'takes hash as argument' do
      expect { Item.new(name: :milk, price: 0.5) }.to_not raise_error
    end
  end

  context '#name' do
    let(:milk) { Item.new(name: :milk, price: 0.5) }
    it 'returns item name as a string' do
      expect(milk.name).to eq 'Milk'
    end
  end
end
