describe Shopper do
  subject (:shopper) { Shopper.new }

  context '#initialize' do
    it 'requires no argument' do
      expect { Shopper.new }.to_not raise_error
    end

    it 'creates an empty basket' do
      expect(shopper.basket.empty?).to be true
    end
  end
end
