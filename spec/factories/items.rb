FactoryBot.define do
  factory :item do
    description { FFaker::Lorem.phrases }
    price { [5.0, 8.50, 10.0].sample }
  end
end
