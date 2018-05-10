Rails.application.routes.draw do
  devise_for :users
  root to: "card#index"
  resources :cards
end
