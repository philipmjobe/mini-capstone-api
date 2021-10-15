class ProductsController < ApplicationController

  def index 
    product = Product.all 
    render json: product
  end 

  def show 
    product_id = params["id"].to_i
    product = Product.find_by id: product_id
    render json: product.as_json
  end 

  def create 
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"]
    )
    product.save
    render json: product.as_json
  end 

  def update
    product_id = params["id"].to_i
    product = Product.find_by id: product_id

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description

    product.save
    render json: product.as_json
  end
end
