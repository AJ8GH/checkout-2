describe Checkout do
  let (:checkout_example) { Checkout.new([]) }
  let (:shopper) { Shopper.new }
  let (:milk) { Item.new(name: :milk, price: 0.5) }

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
      shopper.pick('milk', 'eggs', 'bread')

      checkout = shopper.checkout
      expect(checkout.basket.size).to eq 3

      checkout.scan('milk')
      expect(checkout.basket.size).to eq 2
    end

    it 'only removes 1 if there are multiples' do
      shopper.pick('milk', 'milk', 'milk')
      checkout = shopper.checkout
      checkout.scan('milk')
      expect(checkout.basket.size).to eq 2
    end

    it 'adds scanned item prices to total' do
      shopper.pick('milk', 'bread', 'milk')
      checkout = shopper.checkout
      checkout.scan('milk')
      expect(checkout.total).to eq milk.scan_price
    end
  end

  context '#get_item_index' do
    it 'finds index of first matching item name' do
      shopper.pick('milk', 'bread', 'milk')
      checkout = shopper.checkout
      expect(checkout.get_item_index('milk')).to eq 0
    end
  end

  context '#get_item_price' do
    it 'gets price of desired item' do
      shopper.pick('milk', 'bread', 'milk')
      checkout = shopper.checkout
      expect(checkout.get_item_price(2)).to eq milk.price
    end
  end
end
