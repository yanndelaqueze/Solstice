Rails.application.routes.draw do
  root to: "pages#home"
  get 'creations', to: 'shop#index'
  get '/panier', to: 'cart#show'
  get '/admin', to: 'pages#admin'
  get '/boutique', to: 'pages#about'
  get '/livraison', to: 'pages#delivery'

  resources :categories do
    resources :products, only: %i[new create]
  end

  resources :products do
    resources :order_items, only: %i[create]
  end

  resources :order_items, only: %i[update destroy]

  resources :orders

  devise_for :users
end
