Rails.application.routes.draw do

  namespace :api do
    get "/products" => "products#index"

    get "/products/:id" => "products#show"

    post "/products" => "products#create"

    patch "/products/:id" => "products#update"
     
    delete "/products/:id" => "products#destroy"

    post "/users" => "users#create"

    get "/users/:id" => "users#show"

    post "/sessions" => "sessions#create"

  end

end



  

