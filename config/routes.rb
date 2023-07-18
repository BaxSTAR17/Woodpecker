Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"

  get "user", to: "account#index"

  get "another_user", to: "others#index"

  get "dashboard", to: "dashboard#index"
  post "dashboard", to: "dashboard#create"

  delete "logout", to: "sessions#destroy"

  root to: "main#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
