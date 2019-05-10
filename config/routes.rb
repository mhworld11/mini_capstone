Rails.application.routes.draw do

  namespace :api do

    get "one_product" => "products#display_product"
    get "all_products" => "products#display_all"

    get "any_product_url/:product" => "products#any_product"

    get "/products" => "products#index"

    get "/products/:id" => "products#show"

    post "/products" => "products#create"

    
  end

end



  

