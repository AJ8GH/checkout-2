class Store
  attr_accessor :items
  def initialize(items = {})
    @items = inventory.merge(items)
  end

  def inventory
    inventory = {
      milk:             0.5,
      cheese:           3.5,
      bread:            1,
      chicken:          5,
      spinach:          1,
      tomatoes:         0.8,
      eggs:             2.5,
      steak:            10,
      salmon:           6.5,
      onion:            0.25,
      cornflakes:       2.75,
      ice_cream:        4
    }
  end
end
