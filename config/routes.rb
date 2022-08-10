Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
      resources :interests
      resources :hindrances
      resources :excuses

      root "interests#index"
    end
  resources :hindrances
  resources :interests
  root "main#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
