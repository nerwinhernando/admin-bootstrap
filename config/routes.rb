Rails.application.routes.draw do
  namespace :admin do
    get "/", to: "dashboard#index", as: :root
    resources :users
    resources :products
    get "settings", to: "settings#index", as: :settings
  end
  delete "logout", to: "sessions#destroy", as: :logout
end
