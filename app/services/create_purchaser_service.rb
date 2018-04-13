class CreatePurchaserService

  attr_reader :name

  def initialize args
    @name = args[:name]
  end

  def call
    Purchaser.find_or_create_by(name: name)
  end
end
