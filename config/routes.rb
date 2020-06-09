Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

resources :galleries

resources :artworks do
  resources :favourites, only: [:create]
  resources :likes, only: [:create]
end
  resources :favourites, only: [:new] do
    resources :collections
  end

resources :favourites, only: [:destroy]
resources :likes, only: [:destroy]


  get "artists/:id", to: 'pages#profile'
  resources :users, only: [] do
    resources :follows, only: [:create]
  end

resource :collections
end
