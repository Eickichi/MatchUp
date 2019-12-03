Rails.application.routes.draw do
  root 'home_page#index'
  resources :events
  resources :games
  resources :home_page
  resources :users
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
