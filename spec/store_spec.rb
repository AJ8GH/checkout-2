describe Store do
  subject(:store) { Store.new }
  let (:inventory) { [
    {name: :milk,       price: 0.5,   stock: 30},
    {name: :cheese,     price: 3.5,   stock: 40},
    {name: :bread,      price: 1.0,   stock: 40},
    {name: :chicken,    price: 5.0,   stock: 35},
    {name: :spinach,    price: 1.0,   stock: 50},
    {name: :tomatoes,   price: 0.8,   stock: 40},
    {name: :eggs,       price: 2.5,   stock: 30},
    {name: :steak,      price: 10.0,  stock: 15},
    {name: :salmon,     price: 6.5,   stock: 20},
    {name: :onion,      price: 0.25,  stock: 50},
    {name: :cornflakes, price: 2.75,  stock: 25},
    {name: :ice_cream,  price: 4.0,   stock: 20}
  ] }

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
      expect(milk.name).to eq 'Milk'
    end

    it 'stores the price correctly' do
      expect(milk.price).to eq '£0.50'
    end
  end

  context 'item_price' do
    it 'returns the formatted price for given item' do
      expect(store.item_price('Milk')).to eq '£0.50'
    end
  end
end
