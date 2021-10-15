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
end
