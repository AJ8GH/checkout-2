describe Checkout do
  let (:checkout) { Checkout.new([]) }
  context '#initialize' do
    it 'takes a basket array as argument' do
      expect { Checkout.new([]) }.to_not raise_error
    end
  end

  context '#basket' do
    it '#shows the basket of items' do
      expect(checkout.basket).to eq []
    end
  end

  context '#total' do
    it 'shows the total price of all scanned items' do
      expect(checkout.total).to eq 0
    end
  end
end
