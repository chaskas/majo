class PriceList < ApplicationRecord
  belongs_to :ingredient
  belongs_to :supplier
end
