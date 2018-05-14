Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "cards#index"
  resources :cards
  resources :majors
  resources :minors
  resources :readings
  resources :nasas
end
