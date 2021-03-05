class NutrientsController < ApplicationController

  before_action :nutrient_set, only: [:new, :show]

  def new
    redirect_to root_path unless current_user.admin?
    @nutrient = Nutrient.new
  end

  def create
    redirect_to root_path unless current_user.admin?
    @nutrient = Nutrient.create(nutrient_params)
  end

  def show
    @nutrient = Nutrient.find(params[:id])
  end

private
  def nutrient_params
    params.require(:nutrient).permit(:nutrient_name, :nutrient_content, :nutrient_comment, :image, :nutrient_category_id)
  end

    def nutrient_set
    #nutrient_comment.js にて栄養コメントを表示するため、変数に値を格納
    gon.nutrient_all = Nutrient.all
  end
end