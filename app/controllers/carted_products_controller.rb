class CartedProductsController < ApplicationController
  def index
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_product
  end
  
  def create
    carted_products = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
    )
    carted_product.save
    render json: carted_product
  end 

  def destroy
    carted_product = current_user.carted_products.find_by(:id params[:id], status: "carted")
    carted_product.status = "removed"
    carted_product.save
    render json: {message: "Product removed from your cart!"}
  end 
end
