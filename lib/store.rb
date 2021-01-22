class Store
  attr_accessor :inventory
  def initialize(inventory = {})
    @inventory = inventory
  end
end
