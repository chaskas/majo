class Ingredient < ApplicationRecord
  belongs_to :unit

  def last_price
    PriceList.where(ingredient_id: self.id).last
  end

end
