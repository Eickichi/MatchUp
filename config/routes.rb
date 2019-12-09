Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home_page#index'
  resources :events do
    resources :attendances, only: [:create, :destroy]
    resources :images, only: [:create]
  end
  resources :games do
    resources :game_playeds, only: [:create, :destroy]
  end
  resources :home_page
  resources :profiles, only: [:show] do
    resources :avatars, only: [:create]
  end
  devise_for :users
  resources :conversations do
    resources :messages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
