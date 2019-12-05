Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home_page#index'
  resources :events do
    resources :attendances, only: [:create, :destroy]
  end
  resources :games
  resources :home_page
  resources :profiles
  devise_for :users
  resources :conversations do
    resources :messages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
