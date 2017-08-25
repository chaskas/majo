class AddIngredientAndQuantityToRecipe < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :quantity, :float
    add_reference :recipes, :ingredient, foreign_key: true
  end
end
