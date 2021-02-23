class ApplicationController < ActionController::Base
  before_action :set_search
  before_action :configure_permitted_parameters, if: :devise_controller?

  def set_search
    @search = Recipe.ransack(params[:q])
    @search.sorts = 'updated_at desc' if @search.sorts.empty?
    @search_recipes = @search.result.page(params[:page]).per(1).includes(:user).with_attached_images
  end

  def configure_permitted_parameters
    add_columns = [:nickname]
    devise_parameter_sanitizer.permit(:sign_up, keys: add_columns)
  end
end
