Rails.application.routes.draw do
  root to: "pages#home"
  get 'shop', to: 'shop#index'
  get '/cart', to: 'cart#show'

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
