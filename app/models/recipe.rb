class Recipe < ApplicationRecord
  # アソシエーション
  belongs_to :user
  has_many :ingredients
  has_many :comments
  has_many :users, through: :comments
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: :user
  has_many :recipe_tags
  has_many :tags, through: :recipe_tags
  has_many :recipe_nutrients
  has_many :nutrients, through: :recipe_nutrients

  # ActiveHashのアソシエーション
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  # ActiveStorageのアソシエーション
  has_many_attached :images
end
