class ProductsController < ApplicationController
  def all_product 
    all_product = Product.first
    render json: all_product
  end 
end
