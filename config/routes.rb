Rails.application.routes.draw do
  namespace :admin do
    get '/', to: 'dashboard#index', as: :root
    resources :users
    resources :products
  end
end
