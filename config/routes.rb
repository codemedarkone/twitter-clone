Rails.application.routes.draw do
 
  resources :posts
  devise_for :users
  get 'home', to: 'pages#home'

  get 'user/:id', to: 'pages#profile', as: 'profile_show'
  get 'explore', to: 'pages#explore'

  root to: 'pages#index'
end
