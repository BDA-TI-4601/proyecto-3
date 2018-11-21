Rails.application.routes.draw do

  resources :spots
  root 'logins#index'

  resources :logins
  resources :clients
  resources :employees
  resources :reservations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
