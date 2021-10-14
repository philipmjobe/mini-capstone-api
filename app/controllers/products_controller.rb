class ProductsController < ApplicationController
  def any_product
    product = params[:wildcard]
    products = Product.find_by(id: "#{product}")
    render json: products
  end 

  # def first_product
  #   first_product = Product.first
  #   render json: first_product.as_json
  # end 
end
