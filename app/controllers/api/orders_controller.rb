class Api::OrdersController < ApplicationController
# before_action :authenticate_admin, except: [:index]
before_action :authenticate_user
  def index
    @orders = current_user.orders
    render 'index.json.jbuilder'
    
  end

  def show
    @order = current_users.orders
    render "index.json.jbuilder"
  end

  def create
    product = Product.find(params[:product_id])
    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal * calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
      )

    if @order.save
      render "show.json.jbuilder"
    else
      render json: {errors: order.errors.full_messages}, status: :unprocessable_entity
    end
  end


  def update
    @order = order.find(params[:id])
    @order.product_id = params[:product_id] || @order.product_id
    @order.quantity = params[:quantity] || @order.quantity
    @order.subtotal = @order.order_subtotal
    
    if @order.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
