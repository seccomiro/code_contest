Rails.application.routes.draw do
  resources :judges
  resources :teams
  resources :contests
  devise_for :users
  root to: 'home#index'
end
