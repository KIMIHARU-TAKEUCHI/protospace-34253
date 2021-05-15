Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
  end
  # resources :users, only: [:edit, :update]
  # resources :users, only: [:create, :new]
  resources :prototypes, only: [:index, :create, :show, :new, :edit, :update, :destroy]
  resources :users, only: :show

end