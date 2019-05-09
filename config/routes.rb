Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "one_product" => "products#display_product"
    get "all_products" => "products#display_all"

    get "any_product_url/:product" => "products#any_product"
  end



  
end
