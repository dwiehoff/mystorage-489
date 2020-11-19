Rails.application.routes.draw do
  resources :spaces do
    resources :reservations, only: [:new, :create, :index, :show]
  end
  get "reservations", to: 'reservations#index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
