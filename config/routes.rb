Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :socks
  resources :charges
  devise_for :users
  get 'socks/index'
  get 'subscription' => 'pages#subscription', as: :subscription
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root to: "socks#index"
end
