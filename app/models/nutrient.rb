class Nutrient < ApplicationRecord
  # アソシエーション
  has_many :recipe_nutrients
  has_many :recipes, through: :recipe_nutrients
end
