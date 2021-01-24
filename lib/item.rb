# Shopper can call the name and price methods on item objects and add them to their basket
class Item
  attr_reader :name, :price, :scan_price
  def initialize(args = {})
    @name = args.fetch(:name).to_string.capitalize
    @scan_price = args.fetch(:price)
    @price = scan_price.pounds
  end
end
