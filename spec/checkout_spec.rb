describe Checkout do
  let (:checkout_example) { Checkout.new([]) }
  let (:shopper) { Shopper.new }
  let (:milk) { Item.new(name: :milk, price: 0.5) }
  let (:bread) { Item.new(name: :bread, price: 1.0) }

  context '#initialize' do
    it 'takes a basket array as argument' do
      expect { Checkout.new([]) }.to_not raise_error
    end
  end

  context '#basket' do
    it '#shows the basket of items' do
      expect(checkout_example.basket).to eq []
    end
  end

  context '#total' do
    it 'shows the total price of all scanned items' do
      expect(checkout_example.total).to eq 0
    end
  end

  context '#scan' do
    it 'removes the item from the basket' do
      ['milk', 'bread', 'milk'].each { |item| shopper.pick(item) }
      checkout = shopper.checkout
      expect(checkout.basket.size).to eq 3
      checkout.scan('milk')
      expect(checkout.basket.size).to eq 2
    end

    it 'only removes 1 if there are multiples' do
      ['milk', 'bread', 'milk'].each { |item| shopper.pick(item) }
      checkout = shopper.checkout
      checkout.scan('milk')
      expect(checkout.basket.size).to eq 2
    end

    it 'adds scanned item prices to total' do
      ['milk', 'bread', 'milk'].each { |item| shopper.pick(item) }
      checkout = shopper.checkout
      checkout.scan('milk')
      expect(checkout.total).to eq milk.scan_price
    end
  end

  context '#get_item_index' do
    it 'finds index of first matching item name' do
      ['milk', 'bread', 'milk'].each { |item| shopper.pick(item) }
      checkout = shopper.checkout
      expect(checkout.get_item_index('milk')).to eq 0
    end
  end

  context '#get_item_price' do
    it 'gets price of desired item' do
      ['milk', 'bread', 'milk'].each { |item| shopper.pick(item) }
      checkout = shopper.checkout
      expect(checkout.get_item_price('milk')).to eq milk.price
    end
  end

  context '#remove_item' do
    it 'removes desired item from basket' do
      ['milk', 'bread', 'milk'].each { |item| shopper.pick(item) }
      checkout = shopper.checkout
      checkout.remove_item('milk')
      expect(checkout.basket.size).to eq 2
    end
  end

  context '#total_price' do
    it 'shows total price in pounds' do
      ['milk', 'bread', 'milk'].each { |item| shopper.pick(item) }
      checkout = shopper.checkout
      checkout.scan('milk')
      checkout.scan('bread')
      expect(checkout.total_price).to eq [milk, bread].map(&:scan_price).sum.pounds
    end
  end
end
