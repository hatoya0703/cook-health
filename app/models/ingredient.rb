class Ingredient < ApplicationRecord
  # アソシエーション
  belongs_to :recipe
end
