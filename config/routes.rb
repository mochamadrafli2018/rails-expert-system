Rails.application.routes.draw do
  # Order matters when writing the routes

  # API authentication route
  post "/api/login" => "auth#login"
  get "/api/verify" => "auth#verify"
  # CRUD data route
  post "/api/register" => "auth#register"
  get "/users/index" => "users#index"
  get "/users/:id" => "users#show"
  get "/signup" => "users#new"
  get "/users/:id/edit" => "users#edit"
  post "/users/create" => "users#create"  
  post "/users/:id/update" => "users#update"

  # Write route example from Progate.com
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
    
  get "/" => "home#top"
  get "about" => "home#about"
  
end
