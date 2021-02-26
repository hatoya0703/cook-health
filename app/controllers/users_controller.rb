class UsersController < ApplicationController
  if user_signed_in?
    favorites = Favorite.where(user_id: current_user.id).order(created_at: :DESC).pluck(:recipe_id)
    @favorite_recipes = Recipe.find(favorites)
  end
end
