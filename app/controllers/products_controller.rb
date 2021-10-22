class ProductsController < ApplicationController

  def index 
    if current_user
      product = Product.all 
      render json: product
    else  
      render json: {message: "You need to log in!"}
    end 
  end 

  def show 
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    render json: product
  end 

  def create 
    product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"]
    )
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: 406
    end
  end 

  def update
    product_id = params["id"].to_i
    product = Product.find_by id: product_id

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.description = params["description"] || product.description

    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: 406
    end
  end

  def destroy
    product_id = params["id"].to_i
    product = Product.find_by id: product_id

    product.destroy
    render json: {message: "Sucessfully destroyed!"}
  end 
end
