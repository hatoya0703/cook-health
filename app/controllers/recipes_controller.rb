class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = RecipeIngredient.new
  end

  def create
    @recipe = RecipeIngredient.new(recipe_params)
    tag_list = params[:recipe_ingredient][:tag_name].split(',')
    binding.pry
    @recipe.find_or_create_tags(tag_list)
    @recipe.save
    redirect_to user_path(current_user.id)
  end

  private
  def recipe_params
    params.require(:recipe_ingredient).permit(:title, :content, :category_id, :description, :material, :quantity, :tag_name, tag_ids:[], images:[], nutrient_ids:[]).merge(user_id: current_user.id, tag_ids:[])
  end


end