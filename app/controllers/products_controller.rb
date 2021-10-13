class ProductsController < ApplicationController
  def all_product 
    all_product = Product.all
    render json:  all_product.as_json
  end 

  def first_product
    first_product = Product.first
    render json: first_product.as_json
  end 
end
