class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.decimal :quantity
      t.references :merchant, foreign_key: true
      t.references :purchaser, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
