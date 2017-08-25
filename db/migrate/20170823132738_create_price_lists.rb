class CreatePriceLists < ActiveRecord::Migration[5.1]
  def change
    create_table :price_lists do |t|
      t.integer :price
      t.references :ingredient, foreign_key: true
      t.references :supplier, foreign_key: true

      t.timestamps
    end
  end
end
