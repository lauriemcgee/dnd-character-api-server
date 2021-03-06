Rails.application.routes.draw do
  get "/" => "pages#index"

  namespace :api do
    namespace :v1 do
      post "/characters" => "characters#create"
      get "/characters/:id" => "characters#show"
      patch "/characters/:id" => "characters#update"
      delete "/characters/:id" => "characters#destroy"

      get "/charClasses" => "char_classes#index"
      get "/races" => "races#index"
      get "/alignments" => "alignments#index"
      get "/backgrounds" => "backgrounds#index"
      get "/skills" => "skills#index"
    end
    
    namespace :v2 do
      get "/" => "characters#index"
      get "/characters" => "characters#index"
      post "/characters" => "characters#create"
      get "/characters/:id" => "characters#show"
      patch "/characters/:id" => "characters#update"
      delete "/characters/:id" => "characters#destroy"
    end
  end

end
