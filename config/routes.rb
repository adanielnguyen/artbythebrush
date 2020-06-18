Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  get "artists/:id", to: 'pages#profile', as: "artist"
  get '/tagged', to: "pages#home", as: :tagged

  resources :users, only: [] do
    resources :follows, only: [:new, :create]
  end
  resources :galleries
  
  resources :users
  resources :pages
  
  resources :artworks do
    resources :favourites, only: [:create]
    resources :likes, only: [:create]
  end
  resources :favourites, only: [:new]
  resources :collection_favourites, only: [:create, :destroy]
  resources :favourites, only: [:destroy]
  resources :likes, only: [:destroy]
  resources :collections
  
  resources :collections, only: [] do
    resources :artwork, only: [] do
      resources :collection_favourites, only: [:create]
    end
  end
end
