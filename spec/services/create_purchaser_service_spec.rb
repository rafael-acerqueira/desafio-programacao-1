require 'rails_helper'

describe CreatePurchaserService do
  context ".call" do
    it "This record doesnt exist" do
      purchaser_service = CreatePurchaserService.new(name: 'Snake Plissken')
      expect(purchaser_service.call).to eql(Purchaser.last)
    end

    it "This record already exist" do
      purchaser = create(:purchaser, name: 'Snake Plissken')
      purchaser_service = CreatePurchaserService.new(name: purchaser.name)
      expect(purchaser_service.call).to eql(purchaser)
    end
  end
end
