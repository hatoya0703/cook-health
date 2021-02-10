class RecipesController < ApplicationController

  def index
    @recipes = Recipe.includes(:user)
  end

  def new
    @recipe = RecipeIngredient.new
  end

  def create
    @recipe = RecipeIngredient.new(recipe_params)
    tag_list = params[:recipe_ingredient][:tag_name].split(',')
    @recipe.find_or_create_tags(tag_list)
    @recipe.save
    redirect_to user_path(current_user.id)
  end

  def auto_complete
    @tags = Tag.select(:tag_name)
    #.where("tag_name like '%" + params[:term] + "%'")
    @auto_complete_tags = @tags.map(&:tag_name)
    render json: @auto_complete_tags.to_json
  end


  private
  def recipe_params
    params.require(:recipe_ingredient).permit(:title, :content, :category_id, :description, :material, :quantity, :tag_name, tag_ids:[], images:[], nutrient_ids:[]).merge(user_id: current_user.id, tag_ids:[])
  end


end