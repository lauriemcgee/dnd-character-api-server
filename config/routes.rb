Rails.application.routes.draw do
  get "/characters" => "characters#index"
  get "/characters/:id" => "characters#show"
end
