require 'rails_helper'


describe CreateItemService do
  context ".call" do

    it "This record doesnt exist" do
      item_service = CreateItemService.new(description: 'R$30 of awesome for R$10', price: 25.5)
      expect(item_service.call).to eql(Item.last)
    end

    it "This record already exist" do
      item = create(:item, description: 'R$30 of awesome for R$10', price: 10.0)
      item_service = CreateItemService.new(description: item.description, price: item.price)
      expect(item_service.call).to eql(item)
    end

  end
end
