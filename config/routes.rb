Rails.application.routes.draw do
  namespace :api do
    get "/wines" => "wines#index"
    get "/wines/:id" => "wines#show"
  end
end