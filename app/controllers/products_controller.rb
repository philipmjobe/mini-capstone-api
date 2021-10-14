class ProductsController < ApplicationController
  def any_product
    product = params[:wildcard]
    products = Product.find_by(id: "#{product}")
    render json: products
  end 

  def one_product
    product_id = params(:id)
    product = Product.find_by(id: product_id)
    render json: product.as_json
  end 
end
