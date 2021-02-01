class Recipe < ApplicationRecord
  # アソシエーション
  belongs_to :user
  has_one :ingredient
  has_many :food_recipes
  has_many :foods, through: :food_recipes
  has_many :comments
  has_many :users, through: :comments
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: :user
  has_many :recipe_tags
  has_many :tags, through: :recipe_tags

  # ActiveHashのアソシエーション
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
end
