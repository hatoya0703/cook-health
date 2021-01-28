class Food < ApplicationRecord
  # アソシエーション
  has_many :food_recipes
  has_many :recipes, through: :food_recipes
  has_many :food_nutrients
  has_many :nutrients, through: :food_nutrients
end
