class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  # バリデーション
  validates_uniqueness_of :recipe_id, scope: :user_id
end
