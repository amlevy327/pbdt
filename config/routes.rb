Rails.application.routes.draw do
  devise_for :users

  root 'v1/recipes#index'

  namespace :v1, defaults: { format: :json } do
    resource :sessions, only: [:create, :destroy]
    resources :users, only: [:create, :update] do
      collection do
        post :verify
      end
    end 
    resources :items, only: [:index, :show, :create]
    resources :foods
    resources :recipes do 
      resources :ingredients
    end
  end
end
