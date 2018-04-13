class CreateItemService

  attr_reader :description, :price

  def initialize args
    @description = args[:description]
    @price = args[:price]
  end

  def call
    Item.find_or_create_by(description: description, price: price)
  end
end
