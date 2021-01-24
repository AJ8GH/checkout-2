class Store
  attr_reader :items
  def initialize
    @items = inventory_to_items
  end

  def inventory_to_items
    inventory_to_items = []
    inventory.each { |name, price| inventory_to_items << Item.new(name: name, price: price) }
    inventory_to_items
  end

  def inventory
    inventory = {
      milk: 0.5,
      cheese: 3.5,
      bread: 1.0,
      chicken: 5.0,
      spinach: 1.0,
      tomatoes: 0.8,
      eggs: 2.5,
      steak: 10.0,
      salmon: 6.5,
      onion: 0.25,
      cornflakes: 2.75,
      ice_cream: 4.0
    }
  end

  def price_list
    price_list = {}
    items.each { |item| price_list[item.name] = item.price }
    price_list
  end
end
