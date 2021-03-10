Rails.application.routes.draw do
  resources :computers
  resources :games
  resources :game_rounds
  resources :users
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
