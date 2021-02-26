Rails.application.routes.draw do
  root to: 'recipes#index'
  devise_for :users
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    collection do
      get "auto_complete"
    end
    resources :favorites, only: [:create, :destroy]
  end
  resources :users, only: :show
  resources :comments, only: [:create, :destroy]
  resources :nutrients, only: [:new, :show]
end