class Checkout
  attr_accessor :basket, :total
  def initialize(basket)
    @basket = basket
    @total = 0
  end

  def total_price
    scan_total.poundss
  end

  def scan(item_name)
    index = get_item_index(item_name)
    price = get_item_price(index)
    self.total += basket[index].scan_price
    remove_item(index)
    "#{item_name.capitalize}: #{price}, total: #{total}"
  end

  def get_item_index(item_name)
    basket.find_index { |item| item.name == item_name.capitalize }
  end

  def get_item_price(index)
    basket[index].price
  end

  def remove_item(index)
    basket.delete_at(index)
  end

end
