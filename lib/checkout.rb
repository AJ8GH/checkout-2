class Checkout
  attr_accessor :basket, :total
  def initialize(basket)
    @basket = basket
    @total = 0
  end
end
