class Tag < ApplicationRecord
  # アソシエーション
  has_many :recipe_tag
  has_many :recipes, through: :recipe_tag
end
