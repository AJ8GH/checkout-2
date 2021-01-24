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
    selection = store.items.select { |item| item.name == item_name.capitalize }
    basket << selection.first
  end
end
