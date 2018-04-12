FactoryBot.define do
  factory :merchant do
    name { FFaker::Name.name }
    address { FFaker::Address.street_address }
  end
end
