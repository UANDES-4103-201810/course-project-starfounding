Rails.application.routes.draw do
  get 'user/profile'

  resources :funds
  resources :wish_lists
  resources :products
  resources :categories
  get 'home/homepage'
  root 'home#homepage'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
