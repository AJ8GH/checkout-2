# Checkout object used by shoppers to scan items and see total price
class Checkout
  attr_accessor :basket, :total
  def initialize(basket)
    @basket = basket
    @total = 0
  end

  def total_price
    total.pounds
  end

  def scan(item_name)
    index = get_item_index(item_name)
    price = get_item_price(item_name)
    self.total += basket[index].scan_price
    remove_item(item_name)
    "#{item_name.capitalize}: #{price}, total: #{total_price}"
  end

  def get_item_index(item_name)
    basket.find_index { |item| item.name == item_name.capitalize }
  end

  def get_item_price(item_name)
    basket[get_item_index(item_name)].price
  end

  def remove_item(item_name)
    basket.delete_at(get_item_index(item_name))
  end
end
