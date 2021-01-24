describe Store do
  subject(:store) { Store.new }
  let (:inventory) { {
    milk:             0.5,
    cheese:           3.5,
    bread:            1.0,
    chicken:          5.0,
    spinach:          1.0,
    tomatoes:         0.8,
    eggs:             2.5,
    steak:            10.0,
    salmon:           6.5,
    onion:            0.25,
    cornflakes:       2.75,
    ice_cream:        4.0}
  }

  # context '#intialize' do
  #   it 'creates a new instance of store' do
  #     expect{ Store.new }.to_not raise_error
  #   end
  # end
  #
  # context '#inventory' do
  #   it 'returns hash of default inventory items' do
  #     expect(store.inventory).to eq inventory
  #   end
  # end
  #
  # context '#items' do
  #   it 'returns an array' do
  #     expect(store.items.class).to eq Array
  #   end
  #
  #   it 'contains default items' do
  #     expect(!!store.items.first).to be true
  #   end
  # end
  #
  #  context '#price' do
  #    it 'returns the price of item' do
  #      expect(store.price('milk')).to eq store.items[:milk].pounds
  #    end
  #  end
  #
  #  context '#price_list' do
  #    it 'shows items with formatted prices' do
  #      expect(store.price_list['milk']).to eq store.price('milk')
  #    end
  #  end
end
