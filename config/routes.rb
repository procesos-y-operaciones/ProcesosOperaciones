Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :generation_ranges
  resources :genres
  resources :roles
  resources :phases
  resources :goals
  resources :goal_types
  resources :periods
  resources :contract_types
  resources :contracts
  resources :charges
  resources :areas
  resources :identification_types
  resources :cities
  resources :departaments
  resources :users

  get "cities_list/:state", to: "application#cities"

  get "admin/manage"

  root to: "home#index"

end
