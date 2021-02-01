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
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :content, :category_id).merge(user_id: current_user.id)
  end

end