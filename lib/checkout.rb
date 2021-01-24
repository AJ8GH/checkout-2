class Checkout
  attr_accessor :basket, :total
  def initialize(basket)
    @basket = basket
    @total = 0
  end

  def total_price
    scan_total.pounds
  end

  def scan(item_name)
    index = basket.find_index { |item| item.name == item_name.capitalize }
    price, name = basket[index].price, basket[index].name
    self.total += basket[index].scan_price
    basket.delete_at(index)
    "#{name}: #{price}, total: #{total}"
  end

end
