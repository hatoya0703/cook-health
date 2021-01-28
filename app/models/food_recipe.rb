class FoodRecipe < ApplicationRecord
  # アソシエーション
  belongs_to :food
  belongs_to :recipe
end