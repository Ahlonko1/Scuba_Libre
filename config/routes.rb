Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :offers do
    resources :bookings, only: %i[new create destroy]
  end

  resources :bookings, only: %i[show index] do
    member do
      patch :accepted
      patch :denied
      patch :cancelled
    end
    resources :messages, only: :create
  end

  # Routes pour les pros ->
  get "pros", to: "pros#index"
  get "pros/:id", to: "pros#show", as: :pro

  # Routes pour les pages ->
  get "dashboard", to: "pages#dashboard"

end
