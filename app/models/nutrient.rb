class Nutrient < ApplicationRecord
  # アソシエーション
  has_many :recipe_nutrients, dependent: :destroy
  has_many :recipes, through: :recipe_nutrients
end
