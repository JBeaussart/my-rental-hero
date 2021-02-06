Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy] do
    resources :super_heros
    resources :bookings, except: [:destroy, :show, :edit, :update]
  end
  resources :bookings, only: [:destroy, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
