Rails.application.routes.draw do

  resources :charges_goals
  resources :charges_competencies
  resources :evaluations_competencies
  resources :evaluations_goals
  resources :phases_users
  resources :competencies
  resources :goals_users
  resources :evaluations
  devise_for :users, :controllers => { registrations: 'registrations' }, :path_prefix => 'my'
  get "users/evaluation", :to => 'users#evaluation', :as => 'evaluation_user'
  get "users/evaluator", :to => "users#evaluator", :as => "evaluator_user"
  get "users/evaluate", :to => "users#evaluate", :as => "evaluate_user"
  get "users/accept", :to => "users#accept", :as => "accept_user"
  get "users/approve", :to => "users#approve", :as => "approve_user"
  patch "users/update_step/:id", :to => "users#update_step", :as => "update_step_user"
  post "users/import", :to => "users#import", :as => "import_user"
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

  get "admin/manage"
  get "admin/architecture"
  get "admin/structure"
  get "admin/headcount"
  get "areas/structure/:id", to: "areas#structure"
  get "admin/performance"
  get "admin/settings"
  get "admin/users"
  get "admin/evaluation/:id", to: "admin#evaluation", as: "admin_evaluation"

  get "cities_list/:state", to: "application#cities"
  get "step/:evaluation", to: "application#step"

  get "evaluated/index/:id", to: "evaluated#index", as:"evaluated_index"
  get "evaluated/step1"

  get "evaluator/index"
  get "evaluator/accept"
  get "evaluator/approve"

  root to: "home#index"

end
