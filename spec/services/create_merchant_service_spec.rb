require 'rails_helper'

describe CreateMerchantService do
  context ".call" do
    it "This record doesnt exist" do
      merchant_service = CreateMerchantService.new(name: 'João', address: 'Rua lateral')
      expect(merchant_service.call).to eql(Merchant.last)
    end

    it "This record already exist" do
      merchant = create(:merchant, name: 'João', address: 'Rua lateral')
      merchant_service = CreateMerchantService.new(name: merchant.name, address: merchant.address)
      expect(merchant_service.call).to eql(merchant)
    end    
  end
end
