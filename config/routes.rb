Rails.application.routes.draw do
  get '/search', to: "search#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "chef#index"
  get "/about", to:"about#index"
  get 'chef/index', to: "chef#index"
  get 'chef/:id', to: "chef#show"
  get 'restaurant/index', to:"restaurant#index"
  get 'restaurant/:id', to:"restaurant#show"
  get 'meal/index', to:"meal#index"
  get 'meal/:id', to:"meal#show"
end