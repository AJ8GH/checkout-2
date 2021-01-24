class Checkout
  attr_accessor :basket, :total
  def initialize(basket)
    @basket = basket
    @total = 0
  end

  def scan(item_name)
    index = basket.find_index { |item| item.name == item_name.capitalize }
    basket.delete_at(index)
  end
end
