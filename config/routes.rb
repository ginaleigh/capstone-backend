Rails.application.routes.draw do
  post "/users" => "users#create"
  get "/lines" => "lines#index"
  get "/stops" => "stops#index"
  get "/lines/:id" => "lines#show"
  get "/stops/:id" => "stops#show"
end

