class RecipeTag < ApplicationRecord
  # アソシエーション
  belongs_to :recipe
  belongs_to :tag
end
