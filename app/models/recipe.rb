class Recipe < ApplicationRecord
  # アソシエーション
  belongs_to :user
  has_many :ingredients, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :recipe_tags, dependent: :destroy
  has_many :tags, through: :recipe_tags
  has_many :recipe_nutrients, dependent: :destroy
  has_many :nutrients, through: :recipe_nutrients

  # ActiveHashのアソシエーション
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  # ActiveStorageのアソシエーション
  has_many_attached :images, dependent: :destroy
end
