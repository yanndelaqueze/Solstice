Rails.application.routes.draw do
  resources :categories do
    resources :products, only: %i[new create]
  end

  resources :products do
    resources :order_items, only: %i[create update destroy]
  end

  resources :orders

  get 'shop', to: 'shop#index'
  get 'cart/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
