Rails.application.routes.draw do
 

  devise_for :users
  get 'home', to: 'pages#home'

  get 'profile', to: 'pages#profile'
  get 'explore', to: 'pages#explore'

  root to: 'pages#index'
end
