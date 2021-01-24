class Item
  attr_reader :name, :price, :scan_price
  def initialize(args = {})
    @name = args.fetch(:name).to_string.capitalize
    @price = args.fetch(:price).pounds
    @scan_price = args.fetch(:price)
  end
end
