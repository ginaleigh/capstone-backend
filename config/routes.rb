Rails.application.routes.draw do
  post "/users" => "users#create"
end

#make routes for lines & stops && requests.http