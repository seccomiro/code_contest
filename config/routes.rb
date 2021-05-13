Rails.application.routes.draw do
  resources :contests
  devise_for :users
  root to: 'home#index'
end
