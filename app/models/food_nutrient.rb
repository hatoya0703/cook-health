class FoodNutrient < ApplicationRecord
  # アソシエーション
  belongs_to :food
  belongs_to :nutrient
end
