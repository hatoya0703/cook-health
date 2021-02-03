class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to user_path(current_user.id)
  end

  private
  def recipe_params
    params.require(:recipe_ingredient).permit(:title, :content, :category_id, :material, :quantity).merge(user_id: current_user.id)
  end

end