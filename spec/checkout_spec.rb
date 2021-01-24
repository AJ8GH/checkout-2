describe Checkout do
  let (:checkout_example) { Checkout.new([]) }
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
      shopper = Shopper.new
      shopper.pick('milk', 'eggs', 'bread')

      checkout = shopper.checkout
      expect(checkout.basket.size).to eq 3

      checkout.scan('milk')
      expect(checkout.basket.size).to eq 2
    end

    it 'only removes 1 if there are multiples' do
      shopper = Shopper.new
      shopper.pick('milk', 'milk', 'milk')
      checkout = shopper.checkout
      checkout.scan('milk')
      expect(checkout.basket.size).to eq 2
    end
  end
end
