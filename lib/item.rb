class Item
  attr_reader :name
  def initialize(args = {})
    @name = args.fetch(:name).to_string.capitalize
  end
end
