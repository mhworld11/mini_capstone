class Api::ProductsController < ApplicationController

  def display_product
    @product = Product.first
    render 'display_product.json.jbuilder'
  end


end
