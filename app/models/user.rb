class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable
  #  :recoverable, :rememberable => 今回は使用しない機能
  # アソシエーション
  has_many :recipes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :comment_recipes, through: :comments, source: :recipe
  has_many :favorites, dependent: :destroy
  has_many :favorite_recipes, through: :favorites, source: :recipe

  # バリデーション
  with_options presence: true do
    with_options uniqueness: true do
      validates :nickname
      validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    end
    validates :password, length: { minimum: 6, maximum: 20 }, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i}
  end
end