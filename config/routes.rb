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

  devise_for :users, :controllers => { registrations: 'registrations' }

  get "admin/manage"
  get "users" => "users#index", as:'users'
  get "users/edit/:id" => "users#edit", as:'edit_user'
  get "users/new" => "users#new", as:'new_user'

  root to: "home#index"

end
