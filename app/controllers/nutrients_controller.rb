class NutrientsController < ApplicationController

  def show
    @nutrient = Nutrient.find(params[:id])
  end

end
