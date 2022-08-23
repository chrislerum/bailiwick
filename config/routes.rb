Rails.application.routes.draw do
  resources :planets
  resources :stars
  resources :galaxies
  get 'excuses/show'
  get 'hindrances/show'
  get 'interests/show'
  devise_for :users
  namespace :admin do
      resources :excuses
      resources :hindrances
      resources :interests do
        delete :image, on: :member, action: :destroy_image
      end
      resources :galaxies
      resources :planets
      resources :stars
      resources :users

      root "interests#index"
    end
  resources :hindrances
  resources :interests
  resources :excuses
  get 'main/blank'
  get 'main/astro', as: :astro
  root "main#index"
end
