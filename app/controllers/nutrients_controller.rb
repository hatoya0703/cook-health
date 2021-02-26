class NutrientsController < ApplicationController

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
    params.require(:nutrient).permit(:nutrient_name, :nutrient_content, :nutrient_comment,:image)
  end
end