class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index 
    product = Product.all
    if params[:category]
      cat = Category.find_by(name: params[:category])
      product = cat.products
    end
    render json: product 
  end 

  def show 
    product = Product.find_by(id: params[:id])
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
