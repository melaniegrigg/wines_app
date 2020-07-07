Rails.application.routes.draw do
  namespace :api do
    get "/wines" => "wines#index"
  end
end
