class UsersController < ApplicationController

  def show
    if user_signed_in?
      if current_user.id == params[:id].to_i
        # マイレシピ数カウント
        @my_recipe_count = Recipe.where(user_id: current_user.id).count
        # マイレシピ表示用
        @my_recipes = Recipe.where(user_id: current_user.id).order(created_at: :DESC).includes(:user).with_attached_images.page(params[:page]).per(1)
        # お気に入りレシピ表示用
        favorites = Favorite.where(user_id: current_user.id).order(created_at: :DESC).pluck(:recipe_id)
        @favorite_recipes_array = Recipe.includes(:user).with_attached_images.find(favorites)
        # @favorite_recipes_arrayがArrayになっており、pageメソッドが使用できないため
        @favorite_recipes = Kaminari.paginate_array(@favorite_recipes_array).page(params[:page]).per(1)
      end
    end
  end
end