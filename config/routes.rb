Rails.application.routes.draw do

  get 'users/profile'
  get 'users/admin'

  resources :projects do
    resources :promises
  end
  resources :funds
  resources :categories


  devise_for :users

  get 'users/:id' => 'users#show', as: :user
  get 'users/project/myprojects' => 'projects#user_projects'
  delete 'users/:id' => 'users#destroy'
  patch 'users/:id' => 'users#update'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
