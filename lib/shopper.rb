class Shopper
  attr_accessor :basket, :store
  def initialize
    @basket = []
    @store = object_mart
  end

  def object_mart
    object_mart = Store.new
  end

  def pick(item_name)
    basket << items.select { |item| item.include?(item_name.to_symbol) }
  end
end
