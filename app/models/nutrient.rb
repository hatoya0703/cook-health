class Nutrient < ApplicationRecord
  # アソシエーション
  has_many :food_nutrient
  has_many :foods, through: :food_nutrient
end
