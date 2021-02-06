Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :super_heros do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:edit, :update, :destroy]
end
