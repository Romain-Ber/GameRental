Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # root to: "games#index"
  resources :games do
    collection do
      get :index
      get :my_offers
    end
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show] do
    collection do
      get :pending_booking
      get :pending_client
    end
    member do
      delete :cancel
      delete :decline
      patch :accept
    end
  end
end
