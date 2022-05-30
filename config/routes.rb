Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :offers do
    resources :bookings, only: %i[new create destroy]
  end

  resources :bookings, only: :index do
    member do
      patch :accepted
      patch :denied
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
