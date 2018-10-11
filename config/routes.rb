Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }, :path_prefix => 'my'
  get "users/evaluation", :to => 'users#evaluation', :as => 'evaluation_user'
  get "users/evaluator", :to => "users#evaluator", :as => "evaluator_user"
  get "users/evaluate", :to => "users#evaluate", :as => "evaluate_user"
  get "users/accept", :to => "users#accept", :as => "accept_user"
  patch "users/update_step/:id", :to => "users#update_step", :as => "update_step_user"
  resources :users

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

  get "areas/structure/:id", to: "areas#structure"
  get "admin/manage"

  get "cities_list/:state", to: "application#cities"
  get "step/:user", to: "application#step"

  root to: "home#index"

end
