Rails.application.routes.draw do
  root to: "pages#home"
  get 'creations', to: 'shop#index'
  get '/panier', to: 'cart#show'
  get '/admin', to: 'pages#admin'

  resources :categories

  resources :products, only: %i[new create]

  resources :products do
    resources :order_items, only: %i[create]
  end

  resources :order_items, only: %i[update destroy]

  resources :orders

  devise_for :users

  resources :polygons, only: %i[index new create show]

end
