Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  get "artists/:id", to: 'pages#profile'
  resources :users, only: [] do
    resources :follows, only: [:create]
  end
  resources :galleries
  
  resources :users
  resources :pages
  
  resources :artworks do
    resources :favourites, only: [:create]
    resources :likes, only: [:create]
  end
  resources :favourites, only: [:new] do
    resources :collections
    resources :collections_favourites
  end
  
  resources :favourites, only: [:destroy]
  resources :likes, only: [:destroy]

  
  
  
end
