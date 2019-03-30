Rails.application.routes.draw do
  devise_for :users

  root 'v1/recipes#index'

  namespace :v1, defaults: { format: :json } do
    
    resource :sessions, only: [:create, :destroy]
    resources :users, only: [:create]
    resources :items, only: [:index, :show, :create]
    resources :foods
    resources :recipes
    # resources :recipes do 
    #   resources :ingredients
    # end
    resources :ingredients
  end
end
