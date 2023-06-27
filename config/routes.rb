Rails.application.routes.draw do
  get 'chef/index', to: "chef#index"
  get 'chef/:id', to: "chef#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  oot "chef#index"
  get "/about", to:"about#index"
end
