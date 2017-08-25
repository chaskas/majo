class FixIngredient < ActiveRecord::Migration[5.1]
  def change
    remove_column :ingredients, :quantity
    remove_column :ingredients, :recipe_id
  end
end
