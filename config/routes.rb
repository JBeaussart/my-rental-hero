Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users, only: [:show, :edit, :update, :destroy] do
    resources :super_heros, except: [:destroy, :edit, :update]
  end
 resources :super_heros, only: [:destroy, :edit, :update]
end
