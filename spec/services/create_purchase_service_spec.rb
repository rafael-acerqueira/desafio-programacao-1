require 'rails_helper'

describe CreatePurchaseService do
  context ".call" do

    it "This record doesnt exist" do
      merchant = create(:merchant, name: 'Sneaker Store Emporium', address: '123 Fake St')
      purchaser = create(:purchaser, name: 'Snake Plissken')
      item = create(:item, description: 'R$20 Sneakers for R$5', price: 5.0)
      purchase_service = CreatePurchaseService.new(merchant: merchant, item: item, purchaser: purchaser, quantity: 4)
      expect(purchase_service.call).to eql(Purchase.last)
    end

    it "This record already exist" do
      merchant = create(:merchant, name: 'Sneaker Store Emporium', address: '123 Fake St')
      purchaser = create(:purchaser, name: 'Snake Plissken')
      item = create(:item, description: 'R$20 Sneakers for R$5', price: 5.0)
      purchase = create(:purchase, merchant: merchant, item: item, purchaser: purchaser, quantity: 4)
      purchase_service = CreatePurchaseService.new(merchant: merchant, item: item, purchaser: purchaser, quantity: 4)
      expect(purchase_service.call).to eql(purchase)
    end
  end
end
