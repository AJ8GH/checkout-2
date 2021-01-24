describe Checkout do
  context '#initialize' do
    it 'takes a basket array as argument' do
      expect(Checkout.new([])).to_not raise_error 
    end
  end
end
