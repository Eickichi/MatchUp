Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home_page#index'
  resources :events
  resources :games
  resources :home_page
  devise_for :users
  resources :conversations do
    resources :messages
  end
  resources :users, only: [:show, :index] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
