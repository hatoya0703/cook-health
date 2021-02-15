class FavoritesController < ApplicationController

  before_action :favorite_recipe_params

  def create
    if current_user.id != @recipe.user_id
      @favorite = Favorite.create(user_id: current_user.id, recipe_id: @recipe.id)
    end
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, post_id: @recipe.id)
    @favorite.destroy
  end

  private
    def favorite_recipe_params
      @recipe = Recipe.find(params[:id])
    end
end