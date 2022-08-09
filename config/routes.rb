Rails.application.routes.draw do
  resources :hindrances
  namespace :admin do
      resources :interests
      resources :hindrances
      resources :excuses

      root to: "interests#index"
    end
  resources :interests
  root "main#index"
  get 'main/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
