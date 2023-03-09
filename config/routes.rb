Rails.application.routes.draw do
  resources :issues, only: %i[index create destroy]
  resources :comments, only: %i[create destroy update]
  resources :trail_systems, only: %i[show index]
  resources :users, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/auth", to: "users#auth"

  #custom route for requests that are not requests for the API
  get "*path",
      to: "fallback#index",
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
