class Merchant < ApplicationRecord

  has_many :purchases, dependent: :destroy

end
