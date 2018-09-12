Rails.application.routes.draw do

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

  get 'admin/manage'

  devise_for :users, :controllers => { registrations: 'registrations' }

  root to: "home#index"

end
