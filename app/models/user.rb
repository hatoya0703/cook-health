class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # アソシエーション
  has_many :recipes
  has_many :comments
  has_many :comment_recipes, through: :comments, source: :recipe
  has_many :favorites
  has_many :favorite_recipes, through: :favorites, source: :recipe
end
