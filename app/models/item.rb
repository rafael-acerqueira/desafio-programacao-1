class Item < ApplicationRecord

  has_many :purchases, dependent: :destroy

end
