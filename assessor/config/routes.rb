Rails.application.routes.draw do

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks" }
  resources :users
  resources :bests
  resources :duds
  resources :comments
  root 'public#index'
end
