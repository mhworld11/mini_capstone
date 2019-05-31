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
    post "/orders" => "orders#create"

    get "/orders" => "orders#index"

    post "/carted_products" => "carted_products#create"


  end

  get "/products" => "products#index"
  get"/products/new" => "products#new"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"



  
end



  

