FactoryBot.define do
  factory :purchase do
    quantity { (1..10).to_a.sample }
    merchant
    purchaser
    item
  end
end
