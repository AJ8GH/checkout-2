class Shopper
  attr_accessor :basket
  def initialize
    @basket = []
  end

  def pick(item_name)
    basket << items.select { |item| item.include?(item_name.to_symbol) }
  end
end
