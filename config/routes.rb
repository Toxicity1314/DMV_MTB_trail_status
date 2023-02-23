Rails.application.routes.draw do
  resources :issues
  resources :trails
  resources :rain_totals
  resources :comments
  resources :trail_systems
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/hello', to: 'application#hello_world'

  #custom route for requests that are not requests for the API
  get '*path',
  to: 'fallback#index',
  constraints: ->(req) { !req.xhr? && req.format.html? }
end
