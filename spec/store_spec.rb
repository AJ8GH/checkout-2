describe Store do
  context '#intialize' do
    it '#takes a hash as an argument' do
      expect{ Store.new({}) }.to_not raise_error
    end
  end

  context '#items' do
    it 'returns a hash' do
      expect(Store.new.items.class).to eq Hash
    end

    it 'contains default items' do
      expect(!!Store.new.items.first).to be true
    end
  end

   context '#price' do
     subject(:store) { Store.new }
     it 'returns the price of item' do
       expect(store.price('milk')).to eq store.items[:milk]
     end
   end
end
