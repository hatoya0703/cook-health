Rails.application.routes.draw do
  root to: 'recipes#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes, only: [:index, :new, :create] do
    collection do
      get "auto_complete"
    end
  end
  resources :users, only: :show
end
