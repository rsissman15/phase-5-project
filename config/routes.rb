# config/routes.rb
Rails.application.routes.draw do
  resources :colleges
  resources :users

  get"/get-current-user", to: "sessions#get_current_user" 
  post"/login", to: "sessions#create"
  get '/all_colleges', to: 'colleges#get_colleges'
  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end