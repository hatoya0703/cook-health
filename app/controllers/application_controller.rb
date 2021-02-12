class ApplicationController < ActionController::Base
  before_action :set_search

  def set_search
    @search = Recipe.ransack(params[:q])
    @search.sorts = 'updated_at desc' if @search.sorts.empty?
    @search_recipes = @search.result.page(params[:page]).per(10).includes(:user).with_attached_images
  end
end
