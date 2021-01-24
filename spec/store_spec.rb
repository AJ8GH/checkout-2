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

  context '#intialize' do
    it 'creates a new instance of store' do
      expect { Store.new }.to_not raise_error
    end
  end

  context '#inventory' do
    it 'returns hash of default inventory items' do
      expect(store.inventory).to eq inventory
    end
  end

  context '#items' do
    it 'returns an array' do
      expect(store.items.class).to eq Array
    end

    it 'contains default items' do
      expect(!!store.items.first).to be true
    end
  end

  context '#price_list' do
    it 'returns list of items with formatted price' do
      expect(store.price_list.first).to eq(['Milk', '£0.50'])
    end
  end

  context 'create item' do
    let (:milk) { store.create_item(milk: 0.5) }

    it 'intializes a new item' do
      expect(milk.class).to eq Item
    end

    it 'stores the name correctly' do

    end
  end
end
