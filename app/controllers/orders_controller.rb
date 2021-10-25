class OrdersController < ApplicationController
  def show 
    order_id = params[:id]
    order = Order.find_by(id: order_id)
    render json: order 
  end 
  
  
  
  def create 
    order = Order.new(
      user_id: params["user_id"],
      product_id: params["product_id"],
      quantity: params["quanttity"],
      subtotal: params["subtotal"],
      tax: params["tax"],
      total: params["total"]
    )

    if order.save 
      render json: order 
    else  
      render json: {errors: order.errors.full_messages}, status: 406
    end 
  end 
end
