require 'rails_helper'

describe CalculateGrossRevenueService do
  context "#call" do
    it 'Calculates gross revenue' do
      merchant = create(:merchant, name: 'Sneaker Store Emporium', address: '123 Fake St')
      purchaser = create(:purchaser, name: 'Snake Plissken')

      item = create(:item, description: 'R$20 Sneakers for R$5', price: 5.0)
      item_two = create(:item, description: 'R$100 Skirt for R$50', price: 50.0)
      item_three = create(:item, description: 'R$200 Pants for R$150', price: 150.0)

      create(:purchase, merchant: merchant, item: item, purchaser: purchaser, quantity: 4)
      create(:purchase, merchant: merchant, item: item_two, purchaser: purchaser, quantity: 2)
      create(:purchase, merchant: merchant, item: item_three, purchaser: purchaser, quantity: 3)

      expect(CalculateGrossRevenueService.call).to eq(570.0)
    end
  end
end
