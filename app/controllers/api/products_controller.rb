class Api::ProductsController < ApplicationController

  

  def index
    # @products = Product.where("name iLIKE ?", "%#{params[:search]}%").order(:id)
    @products = Product.all.order(:id)

    if params[:search]
      @products = @products.where("name iLIKE ?", "%#{params[:search]}%")
    end

    
    if params[:discount]
      @products = products.where("price > ?", 850) 
    end

    if params[:sort] == "price"
      if params[:sort_order] == "desc"
        @products = @products.order(price: :desc)
      else
        @products = products.order(:price)
      end
    end
  end

    render 'index.json.jbuilder'

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(
      name: params[:name], 
      price: params[:price], 
      description: params[:description])

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:name] || @product.title
    @product.price = params[:price] || @product.price
    # @product.image_url = params[:image] || @product.image_url
    @product.description = params[:description] || @product.description

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
      render json: {message: "Hola, lo hiciste! No mas producto!!!"}
    end

end
