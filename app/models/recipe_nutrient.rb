class RecipeNutrient < ApplicationRecord
  # アソシエーション
  belongs_to :recipe
  belongs_to :nutrient
end
