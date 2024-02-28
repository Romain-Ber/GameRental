Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # root to: "games#index"
  resources :games do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index]
end
