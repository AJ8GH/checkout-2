describe Store do
  subject(:store) { Store.new }

  context '#intialize' do
    it '#takes a hash as an argument' do
      expect{ Store.new({}) }.to_not raise_error
    end
  end

  context '#items' do
    it 'returns a hash' do
      expect(store.items.class).to eq Hash
    end

    it 'contains default items' do
      expect(!!store.items.first).to be true
    end
  end

   context '#price' do
     it 'returns the price of item' do
       expect(store.price('milk')).to eq store.items[:milk].pounds
     end
   end

   context '#price_list' do
     it 'shows items with formatted prices' do
       expect(store.price_list['milk']).to eq store.price('milk')
     end
   end
end
