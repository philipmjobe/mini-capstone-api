class ProductsController < ApplicationController
  def all_product 
    all_product = Product.all
    render json:  all_product.as_json
  end 
end
