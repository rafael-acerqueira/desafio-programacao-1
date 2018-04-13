class Purchaser < ApplicationRecord

  has_many :purchases, dependent: :destroy

end
