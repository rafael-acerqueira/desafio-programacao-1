class CreatePurchaseService

  attr_reader :merchant, :item, :purchaser, :quantity

  def initialize args
    @merchant = args[:merchant]
    @item = args[:item]
    @purchaser = args[:purchaser]
    @quantity = args[:quantity]
  end

  def call
    Purchase.find_or_create_by(merchant: merchant, item: item, purchaser: purchaser, quantity: quantity)
  end
end
