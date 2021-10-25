class OrdersController < ApplicationController
  def index
    if current_user
      order = Order.all
      render json: order
    else  
      render json: [], status: 406
    end   
  end 
  
  
  def show 
    order_id = params[:id]
    order = Order.find_by(id: order_id)
    render json: order 
  end 
  
  
  
  def create 
    if current_user
      order = Order.new(
        user_id: current_user.id,
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
    else 
      render json: [], status: 406 
    end 
  end 
end
