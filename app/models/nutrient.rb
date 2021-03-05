class Nutrient < ApplicationRecord
  # アソシエーション
  has_many :recipe_nutrients, dependent: :destroy
  has_many :recipes, through: :recipe_nutrients

  has_one_attached :image, dependent: :destroy

  # ActiveHashのアソシエーション
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :nutrient_category
end
