class ProductsController < ApplicationController

  def index 
    product = Product.all 
    render json: product
  end 

  def any_product
    product = params[:wildcard]
    products = Product.find_by(id: "#{product}")
    render json: products
  end 

  def show 
    product_id = params["id"].to_i
    product = Product.find_by id: product_id
    render json: product.as_json
  end 
end
