describe Shopper do
  subject (:shopper) { Shopper.new }

  context '#initialize' do
    it 'requires no argument' do
      expect { Shopper.new }.to_not raise_error
    end

    it 'creates an empty basket' do
      expect(shopper.basket.empty?).to be true
    end

    it 'initializes a new store' do
      expect(shopper.store.class).to eq Store
    end
  end

  context '#pick' do
    it 'adds item to basket' do
      shopper.pick('milk')
      expect(shopper.basket.first.class).to eq Item
    end

    it 'only takes one' do
      shopper.pick('milk')
      expect(shopper.basket.size).to eq 1
    end
  end
end
