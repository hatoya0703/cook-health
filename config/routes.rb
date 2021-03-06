Rails.application.routes.draw do
  root to: 'recipes#index'
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    collection do
      get "auto_complete"
    end
    resources :favorites, only: [:create, :destroy]
  end
  resources :users, only: :show
  resources :comments, only: [:create, :destroy]
  resources :nutrients, only: [:new, :create, :show]
end 