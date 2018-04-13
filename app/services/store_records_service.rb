require 'csv'

class StoreRecordsService

  attr_reader :file_path

  def initialize file_path
    @file_path = file_path
  end

  def call
    erase_previous_records
    File.open(file_path) do |f|
      CSV.foreach(f, col_sep:"\t", headers: true) do |row|

        merchant_service = CreateMerchantService.new(name: row["merchant name"], address: row["merchant address"])
        merchant = merchant_service.call

        item_service = CreateItemService.new(description: row["item description"], price: row["item price"].to_f)
        item = item_service.call

        purchaser_service = CreatePurchaserService.new(name: row["purchaser name"])
        purchaser = purchaser_service.call

        purchase_service = CreatePurchaseService.new(merchant: merchant, item: item, purchaser: purchaser, quantity: row["purchase count"].to_f)
        purchase_service.call
      end
    end
  end

  private

  def erase_previous_records
    Merchant.destroy_all
    Item.destroy_all
    Purchaser.destroy_all
  end
end
