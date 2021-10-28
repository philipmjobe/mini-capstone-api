class CartedProductsController < ApplicationController
  def create
    carted_products = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: params[:order_id]
    )
    if carted_products.save
      render json: {message: "Suceccfully Created"},
      status: :created
    else
      render json: {errors: carted_products.errors.full_messages}, status: 406
    end
  end 
end
