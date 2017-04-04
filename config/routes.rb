Rails.application.routes.draw do
  get "/characters" => "characters#index"
  post "/characters" => "characters#create"
  get "/characters/:id" => "characters#show"
end
