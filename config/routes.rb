Rails.application.routes.draw do


  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks",
  :registrations => "registrations"}

  get 'users/profile'
  get 'users/admin'

  resources :projects do
    resources :funds
    resources :promises
  end

  resources :categories
  resources :user_project_wishlists


  post 'projects/:id' => 'user_project_wishlists#create'
  post 'projects/:id/funds/new' => 'funds#create', as: :fund
  post 'projects/:id/promises/new' => 'promises#create', as: :promise
  get 'users/:id' => 'users#show', as: :user
  get 'users/project/myprojects' => 'projects#user_projects'
  get '/users/fund/index' => 'funds#index'
  delete 'users/:id' => 'users#destroy'
  patch 'users/:id' => 'users#update'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
