Rails.application.routes.draw do
  # API authentication route
  post "api/register" => "auth#register"
  post "api/login" => "auth#login"
  get "api/verify" => "auth#verify"
  # CRUD data route
  get "api" => "crud#getalldata"
  get "api/:id" => "crud#getdatabyide"
  post "api" => "crud#getdatabyide"
  put "api/:id" => "crud#updatedata"
  delete "about" => "home#deletedata"
end
