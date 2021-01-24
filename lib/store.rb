# Store object is intialized with a stock of inventory items
class Store
  attr_reader :items
  def initialize
    @items = inventory_to_items
  end

  def inventory_to_items
    inventory_to_items = []
    inventory.each do |item|
      item[:stock].times { inventory_to_items << create_item(item[:name] => item[:price]) }
    end
    inventory_to_items
  end

  def create_item(item)
    Item.new(name: item.keys.pop, price: item.values.pop)
  end

  def inventory
    inventory = [
      {name: :milk,       price: 0.5,   stock: 30},
      {name: :cheese,     price: 3.5,   stock: 40},
      {name: :bread,      price: 1.0,   stock: 40},
      {name: :chicken,    price: 5.0,   stock: 35},
      {name: :spinach,    price: 1.0,   stock: 50},
      {name: :tomatoes,   price: 0.8,   stock: 40},
      {name: :eggs,       price: 2.5,   stock: 30},
      {name: :steak,      price: 10.0,  stock: 15},
      {name: :salmon,     price: 6.5,   stock: 20},
      {name: :onion,      price: 0.25,  stock: 50},
      {name: :cornflakes, price: 2.75,  stock: 25},
      {name: :ice_cream,  price: 4.0,   stock: 20}
    ]
  end

  def price_list
    price_list = {}
    items.each { |item| price_list[item.name] = item.price }
    price_list
  end

  def item_price(item_name)
    items.select { |item| item.name == item_name }.first.price
  end
end
