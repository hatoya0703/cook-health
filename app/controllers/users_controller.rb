class UsersController < ApplicationController

  def show
    if user_signed_in?
      favorites = Favorite.where(user_id: current_user.id).order(created_at: :DESC).pluck(:recipe_id)
      @favorite_recipes_array = Recipe.includes(:user).with_attached_images.find(favorites)
      # @favorite_recipes_arrayがArrayになっており、pageメソッドが使用できないため
      @favorite_recipes = Kaminari.paginate_array(@favorite_recipes_array).page(params[:page]).per(1)
    end
  end
end