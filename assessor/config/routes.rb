Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks" }
  get '/about', to: 'public#about'
  resources :users
  resources :bests do
    get :search, on: :collection
    post :search, on: :collection
  end
  resources :duds do
    get :search, on: :collection
    post :search, on: :collection
  end
  resources :comments
  root 'public#index'
end
