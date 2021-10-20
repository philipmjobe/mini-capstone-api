class ProductsController < ApplicationController

  def index 
    product = Product.all 
    render json: product
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
      image_url: params["image_url"],
      description: params["description"]
    )
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_message}, status: unprocessable_entity
    end
  end 

  def update
    product_id = params["id"].to_i
    product = Product.find_by id: product_id

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description

    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_message}, status: unprocessable_entity
    end
  end

  def destroy
    product_id = params["id"].to_i
    product = Product.find_by id: product_id

    product.destroy
    render json: {message: "Sucessfully destroyed!"}
  end 
end
