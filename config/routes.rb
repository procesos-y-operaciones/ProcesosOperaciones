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

  get "areas/structure/:id", to: "areas#structure"
  get "admin/manage"

  get "cities_list/:state", to: "application#cities"

  root to: "home#index"

end
