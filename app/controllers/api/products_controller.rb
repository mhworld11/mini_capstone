class Api::ProductsController < ApplicationController

  def display_product
    @product = Product.first
    render 'display_product.json.jbuilder'
  end

  def display_all
    @products = Product.all
    render 'display_all.json.jbuilder'
  end


  def any_product
    @greeting = "Pick a product from the database"
    @list = Product.all
    @answer = params[:product]



    render 'any_product.json.jbuilder'
  end
end
