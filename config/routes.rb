Rails.application.routes.draw do
  root to: "products#index"

  resources :products
  resources :orders
  resources :order_items

  post 'finalize' => 'orders#finalize'
end
