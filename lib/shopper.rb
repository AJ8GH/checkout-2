# Shopper object is able to pick items to add to their basket and instantiate a new checkout
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
    item = store.items.select { |item| item.name == item_name.capitalize }.first
    basket << item if item
    show_basket
  end

  def show_basket
    basket.map { |item| "#{item.name}: #{item.price}"}
  end

  def checkout
    Checkout.new(basket)
  end
end
