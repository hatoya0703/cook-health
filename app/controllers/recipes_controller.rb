class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = RecipeIngredient.new
  end

  def create
    @recipe = RecipeIngredient.new(recipe_params)
    @recipe.save
    binding.pry
    redirect_to user_path(current_user.id)
  end

  private
  def recipe_params
    params.require(:recipe_ingredient).permit(:title, :content, :category_id, :description, :material, :quantity, images:[]).merge(user_id: current_user.id)
  end

end