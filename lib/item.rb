class Item
  attr_reader :name, :price
  def initialize(args = {})
    @name = args.fetch(:name).to_string.capitalize
    @price = args.fetch(:price).pounds
  end
end
