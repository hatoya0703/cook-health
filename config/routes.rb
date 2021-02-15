Rails.application.routes.draw do
  root to: 'recipes#index'
  devise_for :users
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    collection do
      get "auto_complete"
    end
  end
  resources :users, only: :show
  resources :comments, only: [:create, :destroy]
end
