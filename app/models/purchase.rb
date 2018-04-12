class Purchase < ApplicationRecord
  belongs_to :merchant
  belongs_to :purchaser
  belongs_to :item
end
