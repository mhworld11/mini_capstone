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
    @finish = "You've picked a #{@answer}"
    render 'any_product.json.jbuilder'
  end

  def index
    @products = Product.all
    render 'index.json.jbuilder'  
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(
      name: params[:name], 
      price: params[:price], 
      image_url: params[:image_url],
      description: params[:description])
    @product.save
    render 'show.json.jbuilder'
  end
end
