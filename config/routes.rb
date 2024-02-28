Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # root to: "games#index"
  resources :games do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show] do
    collection do
      get :pending_booking
      get :pending_client
    end
  end
end
