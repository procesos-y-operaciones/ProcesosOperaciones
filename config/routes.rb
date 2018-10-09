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
  
  get "users/evaluation", :to => 'users#evaluation', :as => 'evaluation_user'
  get "users/evaluator", :to => "users#evaluator", :as => "evaluator_user"
  get "users/evaluate", :to => "users#evaluate", :as => "evaluate_user"
  resources :users

  get "cities_list/:state", to: "application#cities"

  get "admin/manage"
  

  root to: "home#index"

end
