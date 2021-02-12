class RecipesController < ApplicationController
  
  before_action :search_recipe
  
  def new
    @recipe = RecipeIngredient.new
  end

  def index
    @result = @r.result
  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = current_user.comments.new
    @comments = @recipe.comments
  end

  def create
    @recipe = RecipeIngredient.new(recipe_params)
    tag_list = params[:recipe_ingredient][:tag_name].split(',')
    @recipe.find_or_create_tags(tag_list)
    @recipe.save
    redirect_to user_path(current_user.id)
  end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to root_path
  end

  def auto_complete #機能せず
    @tags = Tag.select(:tag_name).where("tag_name like '%" + params[:term] + "%'")
    @auto_complete_tags = @tags.map(&:tag_name)
    render json: @auto_complete_tags.to_json
  end


  private
  def recipe_params
    params.require(:recipe_ingredient).permit(:title, :content, :category_id, :description, :material, :quantity, :tag_name, tag_ids:[], images:[], nutrient_ids:[]).merge(user_id: current_user.id, tag_ids:[])
  end

  def search_recipe
    @r = Recipe.ransack(params[:q])
  end


end