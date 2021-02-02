Rails.application.routes.draw do
  devise_for :users do
    resources :super_heros
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
