Rails.application.routes.draw do
  post "/users" => "users#create"
  get "/users" => "users#index"

  get "/lines" => "lines#index"
  get "/lines/:id" => "lines#show"

  get "/stops" => "stops#index"
  get "/stops/:id" => "stops#show"
  
  get "/arrival_times" =>"stops#arrival_times"
end
