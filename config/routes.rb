Rails.application.routes.draw do
  namespace :api do
    get "/wines" => "wines#index"
    get "/wines/:id" => "wines#show"
    post "/wines" => "wines#create"
    patch "/wines/:id" => "wines#update"
    delete "wines/:id" => "wines#destroy"

    get "/tags" => "tags#index"
  end
end