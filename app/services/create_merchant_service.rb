class CreateMerchantService

  attr_reader :name, :address

  def initialize args
    @name = args[:name]
    @address = args[:address]
  end

  def call
    Merchant.find_or_create_by(name: name, address: address)
  end
end
