Rails.application.routes.draw do
  get 'excuses/show'
  get 'hindrances/show'
  get 'interests/show'
  devise_for :users
  namespace :admin do
      resources :interests do
        delete :image, on: :member, action: :destroy_image
      end
      resources :hindrances
      resources :excuses
      resources :users

      root "interests#index"
    end
  resources :hindrances
  resources :interests
  resources :excuses
  get 'main/blank'
  root "main#index"
end
