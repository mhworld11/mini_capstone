class Api::CartedProductsController < ApplicationController

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "Carted",
      # order_id: nil
    )
  
    if @carted_product.save
      render "show.json.jbuilder"
    else
      render json: {errors: order.errors.full_messages}, status: :unprocessable_entity
    end

end
