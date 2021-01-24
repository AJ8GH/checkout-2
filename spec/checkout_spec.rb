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
end
