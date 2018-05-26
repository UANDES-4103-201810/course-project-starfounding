Rails.application.routes.draw do

  get 'users/profile'
  get 'users/admin'

  resources :projects

  devise_for :users

  get 'users/:id' => 'users#show', as: :user

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
