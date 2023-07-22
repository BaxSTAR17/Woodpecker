Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"

  get "user", to: "account#index"
  post "using", to: "account#create"

  get "another_user", to: "others#index"

  get "dashboard", to: "dashboard#index"
  post "dashboard", to: "dashboard#create"

  get "music", to: "music#index"
  post "music", to: "music#create"

  get "gaming", to: "gaming#index"
  post "gaming", to: "gaming#create"

  get "sports", to: "sports#index"
  post "sports", to: "sports#create"

  get "news", to: "news#index"
  post "news", to: "news#create"

  get "tv", to: "tv#index"
  post "tv", to: "tv#create"

  get "branchlist", to: "branchlist#index"
  post "branchlist", to: "branchlist#create"

  get "branch", to: "branch#index"
  get "branched", to: "branch#new"
  post "branching", to: "branch#create"
  post "invite", to: "branch#invite"

  delete "logout", to: "sessions#destroy"

  root to: "main#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
